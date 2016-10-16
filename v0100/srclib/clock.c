/*
  Copyright (c) 2014-2015, Alexey Frunze
  2-clause BSD license.
*/
#include <time.h>

#ifdef _DOS

#ifdef __HUGE__
static
unsigned long helper(void)
{
  asm("mov ax, 0x40\n"
      "mov ds, ax\n"
      "mov eax, [0x6c]\n"
      "mov ecx, 90\n"
      "mul ecx\n"
      "inc ecx\n"
      "div ecx");
}
#endif // __HUGE__

#ifdef _DPMI
static
unsigned long helper(void)
{
  asm("mov eax, [0x46c]\n"
      "mov ecx, 90\n"
      "mul ecx\n"
      "inc ecx\n"
      "div ecx");
}
#endif // _DPMI

#ifdef __SMALLER_C_32__
clock_t clock(void)
{
  static unsigned initialized, initticks;
  if (initialized)
    return helper() - initticks;
  initticks = helper();
  initialized = 1;
  return 0;
}
#endif

#endif // _DOS

#ifdef _WINDOWS

#include "iwin32.h"

clock_t clock(void)
{
  static unsigned initialized, initticks;
  if (initialized)
    return GetTickCount() - initticks;
  initticks = GetTickCount();
  initialized = 1;
  return 0;
}

#endif // _WINDOWS

#if defined(_LINUX) || defined(_MACOS)

struct tms
{
  clock_t tms_utime;
  clock_t tms_stime;
  clock_t tms_cutime;
  clock_t tms_cstime;
};

#ifdef _LINUX
static
clock_t SysTimes(struct tms* buf)
{
  asm("mov eax, 43\n" // sys_times
      "mov ebx, [ebp + 8]\n"
      "int 0x80");
}
#endif  // _LINUX

#ifdef _MACOS

#define CLK_TCK 60 // TODO(tilarids): Can't be always true. Fix it.
#define CONVTCK(r)  (r.tv_sec * CLK_TCK + r.tv_usec / (1000000 / CLK_TCK))

typedef long suseconds_t;
struct timeval
{
  time_t       tv_sec;   /* seconds since Jan. 1, 1970 */
  suseconds_t  tv_usec;  /* and microseconds */
};

struct rusage
{
  struct timeval ru_utime; /* user time used */
  struct timeval ru_stime; /* system time used */
  long ru_maxrss;          /* max resident set size */
  long ru_ixrss;           /* integral shared text memory size */
  long ru_idrss;           /* integral unshared data size */
  long ru_isrss;           /* integral unshared stack size */
  long ru_minflt;          /* page reclaims */
  long ru_majflt;          /* page faults */
  long ru_nswap;           /* swaps */
  long ru_inblock;         /* block input operations */
  long ru_oublock;         /* block output operations */
  long ru_msgsnd;          /* messages sent */
  long ru_msgrcv;          /* messages received */
  long ru_nsignals;        /* signals received */
  long ru_nvcsw;           /* voluntary context switches */
  long ru_nivcsw;          /* involuntary context switches */
};

static
int SysGetrusage(int who, struct rusage *rusage) {
  asm("mov eax, 117\n" // sys_getrusage
      "push dword [ebp + 12]\n"
      "push dword [ebp + 8]\n"
      "sub esp, 4\n"
      "int 0x80");
}

#define RUSAGE_SELF 0
#define RUSAGE_CHILDREN -1

static
int SysGettimeofday(long tv[2], int tz[2])
{
  asm("mov eax, 116\n" // sys_gettimeofday
      "push dword [ebp + 12]\n"
      "push dword [ebp + 8]\n"
      "sub esp, 4\n"
      "int 0x80");
}

clock_t
SysTimes(struct tms *tp)
{
  struct rusage ru;
  struct timeval t;

  if (SysGetrusage(RUSAGE_SELF, &ru) < 0)
    return ((clock_t)-1);
  tp->tms_utime = CONVTCK(ru.ru_utime);
  tp->tms_stime = CONVTCK(ru.ru_stime);
  if (SysGetrusage(RUSAGE_CHILDREN, &ru) < 0)
    return ((clock_t)-1);
  tp->tms_cutime = CONVTCK(ru.ru_utime);
  tp->tms_cstime = CONVTCK(ru.ru_stime);
  if (SysGettimeofday(&t, (struct timezone *)0))
    return ((clock_t)-1);
  return ((clock_t)(CONVTCK(t)));
}

#endif  // _MACOS

clock_t clock(void)
{
  struct tms tms;
  if (SysTimes(&tms) == (clock_t)-1)
    return (clock_t)-1;
  // tms members are in clock ticks, there are sysconf(_SC_CLK_TCK) (always 100?) clock ticks per second in Linux.
  // OTOH, CLOCKS_PER_SEC is 1000000 (mandated by POSIX).
  // TBD??? Can sysconf(_SC_CLK_TCK) be obtained somehow w/o being hard-coded here and w/o including system headers?
  return (tms.tms_utime + tms.tms_stime) * (CLOCKS_PER_SEC / 100);
}

#endif // _LINUX
