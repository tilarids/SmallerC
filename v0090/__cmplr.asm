SEGMENT _TEXT PUBLIC CLASS=CODE USE16
SEGMENT _DATA PUBLIC CLASS=DATA

; glb _setargv__ : char
    extern  __setargv__
; glb exit : (
; prm     status : int
;     ) void
    extern  _exit
; glb malloc : (
; prm     s : int
;     ) * void
    extern  _malloc
; glb free : (
; prm     <something> : * void
;     ) void
    extern  _free
; glb atoi : (
; prm     <something> : * char
;     ) int
    extern  _atoi
; glb strlen : (
; prm     s : * char
;     ) int
    extern  _strlen
; glb strcpy : (
; prm     s1 : * char
; prm     s2 : * char
;     ) * char
    extern  _strcpy
; glb strchr : (
; prm     s : * char
; prm     c : int
;     ) * char
    extern  _strchr
; glb strcmp : (
; prm     s1 : * char
; prm     s2 : * char
;     ) int
    extern  _strcmp
; glb memmove : (
; prm     <something> : * void
; prm     <something> : * void
; prm     <something> : int
;     ) * void
    extern  _memmove
; glb memcpy : (
; prm     <something> : * void
; prm     <something> : * void
; prm     <something> : int
;     ) * void
    extern  _memcpy
; glb isspace : (
; prm     c : int
;     ) int
    extern  _isspace
; glb isdigit : (
; prm     c : int
;     ) int
    extern  _isdigit
; glb isalpha : (
; prm     c : int
;     ) int
    extern  _isalpha
; glb isalnum : (
; prm     c : int
;     ) int
    extern  _isalnum
; glb putchar : (
; prm     c : int
;     ) int
    extern  _putchar
; glb fopen : (
; prm     <something> : * char
; prm     <something> : * char
;     ) * int
    extern  _fopen
; glb fclose : (
; prm     <something> : * int
;     ) int
    extern  _fclose
; glb fgetc : (
; prm     <something> : * int
;     ) int
    extern  _fgetc
; glb printf : (
; prm     fmt : * char
; prm     ...
;     ) int
    extern  _printf
; glb GetToken : (void) int
; glb GetTokenName : (
; prm     token : int
;     ) * char
; glb GetTokenValueInt : (void) int
; glb GetTokenValueString : (void) * char
; glb GetTokenValueStringLength : (void) int
; glb GetTokenIdentName : (void) * char
; glb GetTokenFileName : (void) * char
; glb GetTokenFileLineNo : (void) int
; glb GetTokenFileLinePos : (void) int
; glb DumpMacroTable : (void) void
; glb PurgeStringTable : (void) void
; glb AddString : (
; prm     label : int
; prm     str : * char
; prm     len : int
;     ) void
; glb FindString : (
; prm     label : int
;     ) * char
; glb AddIdent : (
; prm     name : * char
;     ) int
; glb FindIdent : (
; prm     name : * char
;     ) int
; glb DumpIdentTable : (void) void
; glb GenLabel : (
; prm     Label : * char
;     ) void
; glb GenExtern : (
; prm     Label : * char
;     ) void
; glb GenNumLabel : (
; prm     Label : int
;     ) void
; glb GenZeroData : (
; prm     Size : int
;     ) void
; glb GenIntData : (
; prm     Size : int
; prm     Val : int
;     ) void
; glb GenAddrData : (
; prm     Size : int
; prm     Label : * char
;     ) void
; glb GenJumpUncond : (
; prm     Label : int
;     ) void
; glb GenJumpIfZero : (
; prm     Label : int
;     ) void
; glb GenJumpIfNotZero : (
; prm     Label : int
;     ) void
; glb GenJumpIfNotEqual : (
; prm     val : int
; prm     Label : int
;     ) void
; glb GenFxnProlog : (void) void
; glb GenFxnEpilog : (void) void
; glb GenLocalAlloc : (
; prm     Size : int
;     ) void
; glb GenStrData : (
; prm     insertJump : int
;     ) void
; glb GenExpr : (void) void
; glb PushSyntax : (
; prm     t : int
;     ) void
; glb PushSyntax2 : (
; prm     t : int
; prm     v : int
;     ) void
; glb DumpSynDecls : (void) void
; glb push2 : (
; prm     v : int
; prm     v2 : int
;     ) void
; glb ins2 : (
; prm     pos : int
; prm     v : int
; prm     v2 : int
;     ) void
; glb ins : (
; prm     pos : int
; prm     v : int
;     ) void
; glb del : (
; prm     pos : int
; prm     cnt : int
;     ) void
; glb TokenStartsDeclaration : (
; prm     t : int
; prm     params : int
;     ) int
; glb ParseDecl : (
; prm     tok : int
;     ) int
; glb ShiftChar : (void) void
; glb error : (
; prm     format : * char
; prm     ...
;     ) void
; glb FindSymbol : (
; prm     s : * char
;     ) int
; glb SymType : (
; prm     SynPtr : int
;     ) int
; glb GetDeclSize : (
; prm     SyntaxPtr : int
;     ) int
; glb ParseExpr : (
; prm     tok : int
; prm     GotUnary : * int
; prm     ExprTypeSynPtr : * int
; prm     ConstExpr : * int
; prm     ConstVal : * int
;     ) int
; glb GetFxnInfo : (
; prm     ExprTypeSynPtr : int
; prm     MinParams : * int
; prm     MaxParams : * int
; prm     ReturnExprTypeSynPtr : * int
;     ) int
; glb TokenValueInt : int
SEGMENT _DATA
    global  _TokenValueInt
_TokenValueInt:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "31 1 + "
; Expanded expression: "32 "
; Expression value: 32
; glb TokenIdentName : [32] char
SEGMENT _DATA
    global  _TokenIdentName
_TokenIdentName:
    times 32 db 0
; SEGMENT _DATA
; glb TokenIdentNameLen : int
SEGMENT _DATA
    global  _TokenIdentNameLen
_TokenIdentNameLen:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "127 1 + "
; Expanded expression: "128 "
; Expression value: 128
; glb TokenValueString : [128] char
SEGMENT _DATA
    global  _TokenValueString
_TokenValueString:
    times 128 db 0
; SEGMENT _DATA
; glb TokenStringLen : int
SEGMENT _DATA
    global  _TokenStringLen
_TokenStringLen:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb LineNo : int
SEGMENT _DATA
    global  _LineNo
_LineNo:
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    dw  1
; SEGMENT _DATA
; glb LinePos : int
SEGMENT _DATA
    global  _LinePos
_LinePos:
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    dw  1
; SEGMENT _DATA
; glb CurFileName : * char
SEGMENT _DATA
    global  _CurFileName
_CurFileName:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb CurFile : * int
SEGMENT _DATA
    global  _CurFile
_CurFile:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
; glb CharQueue : [256] char
SEGMENT _DATA
    global  _CharQueue
_CharQueue:
    times 256 db 0
; SEGMENT _DATA
; glb CharQueueLen : int
SEGMENT _DATA
    global  _CharQueueLen
_CharQueueLen:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "4096 "
; Expanded expression: "4096 "
; Expression value: 4096
; glb MacroTable : [4096] char
SEGMENT _DATA
    global  _MacroTable
_MacroTable:
    times 4096 db 0
; SEGMENT _DATA
; glb MacroTableLen : int
SEGMENT _DATA
    global  _MacroTableLen
_MacroTableLen:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "512 "
; Expanded expression: "512 "
; Expression value: 512
; glb StringTable : [512] char
SEGMENT _DATA
    global  _StringTable
_StringTable:
    times 512 db 0
; SEGMENT _DATA
; glb StringTableLen : int
SEGMENT _DATA
    global  _StringTableLen
_StringTableLen:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "4096 "
; Expanded expression: "4096 "
; Expression value: 4096
; glb IdentTable : [4096] char
SEGMENT _DATA
    global  _IdentTable
_IdentTable:
    times 4096 db 0
; SEGMENT _DATA
; glb IdentTableLen : int
SEGMENT _DATA
    global  _IdentTableLen
_IdentTableLen:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb ExprLevel : int
SEGMENT _DATA
    global  _ExprLevel
_ExprLevel:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "100 "
; Expanded expression: "100 "
; Expression value: 100
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; glb stack : [100] [2] int
SEGMENT _DATA
    global  _stack
_stack:
    times 400 db 0
; SEGMENT _DATA
; glb sp : int
SEGMENT _DATA
    global  _sp
_sp:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "100 "
; Expanded expression: "100 "
; Expression value: 100
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; glb opstack : [100] [2] int
SEGMENT _DATA
    global  _opstack
_opstack:
    times 400 db 0
; SEGMENT _DATA
; glb opsp : int
SEGMENT _DATA
    global  _opsp
_opsp:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb OutputFormat : int
SEGMENT _DATA
    global  _OutputFormat
_OutputFormat:
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    dw  1
; SEGMENT _DATA
; glb FileHeader : * char
SEGMENT _DATA
    global  _FileHeader
_FileHeader:
; =
; RPN'ized expression: "L1 "
; Expanded expression: "L1 "
    dw  L1
; SEGMENT _DATA
SEGMENT _DATA
L1:
    db  0
; SEGMENT _DATA
; glb CodeHeader : * char
SEGMENT _DATA
    global  _CodeHeader
_CodeHeader:
; =
; RPN'ized expression: "L3 "
; Expanded expression: "L3 "
    dw  L3
; SEGMENT _DATA
SEGMENT _DATA
L3:
    db  0
; SEGMENT _DATA
; glb CodeFooter : * char
SEGMENT _DATA
    global  _CodeFooter
_CodeFooter:
; =
; RPN'ized expression: "L5 "
; Expanded expression: "L5 "
    dw  L5
; SEGMENT _DATA
SEGMENT _DATA
L5:
    db  0
; SEGMENT _DATA
; glb DataHeader : * char
SEGMENT _DATA
    global  _DataHeader
_DataHeader:
; =
; RPN'ized expression: "L7 "
; Expanded expression: "L7 "
    dw  L7
; SEGMENT _DATA
SEGMENT _DATA
L7:
    db  0
; SEGMENT _DATA
; glb DataFooter : * char
SEGMENT _DATA
    global  _DataFooter
_DataFooter:
; =
; RPN'ized expression: "L9 "
; Expanded expression: "L9 "
    dw  L9
; SEGMENT _DATA
SEGMENT _DATA
L9:
    db  0
; SEGMENT _DATA
; glb SizeOfChar : int
SEGMENT _DATA
    global  _SizeOfChar
_SizeOfChar:
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    dw  1
; SEGMENT _DATA
; glb CharIsSigned : int
SEGMENT _DATA
    global  _CharIsSigned
_CharIsSigned:
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    dw  1
; SEGMENT _DATA
; glb SizeOfWord : int
SEGMENT _DATA
    global  _SizeOfWord
_SizeOfWord:
; =
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    dw  2
; SEGMENT _DATA
; glb LabelCnt : int
SEGMENT _DATA
    global  _LabelCnt
_LabelCnt:
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    dw  1
; SEGMENT _DATA
; glb CurFxnSyntaxPtr : int
SEGMENT _DATA
    global  _CurFxnSyntaxPtr
_CurFxnSyntaxPtr:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb CurFxnParamCnt : int
SEGMENT _DATA
    global  _CurFxnParamCnt
_CurFxnParamCnt:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb CurFxnParamOfs : int
SEGMENT _DATA
    global  _CurFxnParamOfs
_CurFxnParamOfs:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb CurFxnLocalOfs : int
SEGMENT _DATA
    global  _CurFxnLocalOfs
_CurFxnLocalOfs:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb CurFxnReturnExprTypeSynPtr : int
SEGMENT _DATA
    global  _CurFxnReturnExprTypeSynPtr
_CurFxnReturnExprTypeSynPtr:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb CurFxnEpilogLabel : int
SEGMENT _DATA
    global  _CurFxnEpilogLabel
_CurFxnEpilogLabel:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb ParseLevel : int
SEGMENT _DATA
    global  _ParseLevel
_ParseLevel:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; RPN'ized expression: "2048 "
; Expanded expression: "2048 "
; Expression value: 2048
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; glb SyntaxStack : [2048] [2] int
SEGMENT _DATA
    global  _SyntaxStack
_SyntaxStack:
    times 8192 db 0
; SEGMENT _DATA
; glb SyntaxStackCnt : int
SEGMENT _DATA
    global  _SyntaxStackCnt
_SyntaxStackCnt:
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    dw  0
; SEGMENT _DATA
; glb FindMacro : (
; prm     name : * char
;     ) int
SEGMENT _TEXT
    global  _FindMacro
_FindMacro:
    push    bp
    mov     bp, sp
; loc     name : (@4): * char
; loc     i : (@-2): int
    sub     sp, 2
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-2) 0 =(2) "
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
L12:
; RPN'ized expression: "i MacroTableLen < "
; Expanded expression: "(@-2) *(2) MacroTableLen *(2) < "
; Fused expression:    "< *(@-2) *MacroTableLen IF! "
    mov     ax, [bp-2]
    cmp     ax, [_MacroTableLen]
    jge     L15
    jmp     L14
L13:
    jmp     L12
L14:
; {
; if
; RPN'ized expression: "( name , MacroTable i + 1 + strcmp ) 0 == "
; Expanded expression: " (@4) *(2)  MacroTable (@-2) *(2) + 1 +  strcmp ()4 0 == "
; Fused expression:    "( *(2) (@4) , + MacroTable *(@-2) + ax 1 , strcmp )4 == ax 0 IF! "
    push    word [bp+4]
    mov     ax, _MacroTable
    add     ax, [bp-2]
    add     ax, 1
    push    ax
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L16
; return
; RPN'ized expression: "i 1 + MacroTable i + *u + "
; Expanded expression: "(@-2) *(2) 1 + MacroTable (@-2) *(2) + *(1) + "
; Fused expression:    "+ *(@-2) 1 push-ax + MacroTable *(@-2) + *sp *ax "
    mov     ax, [bp-2]
    add     ax, 1
    push    ax
    mov     ax, _MacroTable
    add     ax, [bp-2]
    mov     bx, ax
    movsx   cx, byte [bx]
    pop     ax
    add     ax, cx
    jmp     L11
L16:
; RPN'ized expression: "i i 1 + MacroTable i + *u + = "
; Expanded expression: "(@-2) (@-2) *(2) 1 + MacroTable (@-2) *(2) + *(1) + =(2) "
; Fused expression:    "+ *(@-2) 1 push-ax + MacroTable *(@-2) + *sp *ax =(34) *(@-2) ax "
    mov     ax, [bp-2]
    add     ax, 1
    push    ax
    mov     ax, _MacroTable
    add     ax, [bp-2]
    mov     bx, ax
    movsx   cx, byte [bx]
    pop     ax
    add     ax, cx
    mov     [bp-2], ax
; RPN'ized expression: "i i 1 + MacroTable i + *u + = "
; Expanded expression: "(@-2) (@-2) *(2) 1 + MacroTable (@-2) *(2) + *(1) + =(2) "
; Fused expression:    "+ *(@-2) 1 push-ax + MacroTable *(@-2) + *sp *ax =(34) *(@-2) ax "
    mov     ax, [bp-2]
    add     ax, 1
    push    ax
    mov     ax, _MacroTable
    add     ax, [bp-2]
    mov     bx, ax
    movsx   cx, byte [bx]
    pop     ax
    add     ax, cx
    mov     [bp-2], ax
; }
    jmp     L13
L15:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1 "
    mov     ax, -1
    jmp     L11
L11:
    leave
    ret
; SEGMENT _TEXT
; glb AddMacroIdent : (
; prm     name : * char
;     ) void
SEGMENT _TEXT
    global  _AddMacroIdent
_AddMacroIdent:
    push    bp
    mov     bp, sp
; loc     name : (@4): * char
; loc     l : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "( name strlen ) "
; Expanded expression: " (@4) *(2)  strlen ()2 "
; Fused expression:    "( *(2) (@4) , strlen )2 =(34) *(@-2) ax "
    push    word [bp+4]
    call    _strlen
    sub     sp, -2
    mov     [bp-2], ax
; if
; RPN'ized expression: "l 127 >= "
; Expanded expression: "(@-2) *(2) 127 >= "
; Fused expression:    ">= *(@-2) 127 IF! "
    mov     ax, [bp-2]
    cmp     ax, 127
    jl      L19
; RPN'ized expression: "( name , L21 error ) "
; Expanded expression: " (@4) *(2)  L21  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L21:
    db  "Error: Macro identifier too long '%s'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L21 , error )4 "
    push    word [bp+4]
    push    L21
    call    _error
    sub     sp, -4
L19:
; if
; RPN'ized expression: "4096 MacroTableLen - l 3 + < "
; Expanded expression: "4096 MacroTableLen *(2) - (@-2) *(2) 3 + < "
; Fused expression:    "- 4096 *MacroTableLen push-ax + *(@-2) 3 < *sp ax IF! "
    mov     ax, 4096
    sub     ax, [_MacroTableLen]
    push    ax
    mov     ax, [bp-2]
    add     ax, 3
    mov     cx, ax
    pop     ax
    cmp     ax, cx
    jge     L23
; RPN'ized expression: "( L25 error ) "
; Expanded expression: " L25  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L25:
    db  "Error: Macro table full",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L25 , error )2 "
    push    L25
    call    _error
    sub     sp, -2
L23:
; RPN'ized expression: "MacroTable MacroTableLen ++p + *u l 1 + = "
; Expanded expression: "MacroTable MacroTableLen ++p(2) + (@-2) *(2) 1 + =(1) "
; Fused expression:    "++p(2) *MacroTableLen + MacroTable ax push-ax + *(@-2) 1 =(18) **sp ax "
    mov     ax, [_MacroTableLen]
    inc     word [_MacroTableLen]
    mov     cx, ax
    mov     ax, _MacroTable
    add     ax, cx
    push    ax
    mov     ax, [bp-2]
    add     ax, 1
    pop     bx
    mov     [bx], al
    cbw
; RPN'ized expression: "( name , MacroTable MacroTableLen + strcpy ) "
; Expanded expression: " (@4) *(2)  MacroTable MacroTableLen *(2) +  strcpy ()4 "
; Fused expression:    "( *(2) (@4) , + MacroTable *MacroTableLen , strcpy )4 "
    push    word [bp+4]
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    push    ax
    call    _strcpy
    sub     sp, -4
; RPN'ized expression: "MacroTableLen l 1 + += "
; Expanded expression: "MacroTableLen (@-2) *(2) 1 + +=(2) "
; Fused expression:    "+ *(@-2) 1 +=(34) *MacroTableLen ax "
    mov     ax, [bp-2]
    add     ax, 1
    mov     cx, ax
    mov     ax, [_MacroTableLen]
    add     ax, cx
    mov     [_MacroTableLen], ax
; RPN'ized expression: "MacroTable MacroTableLen + *u 0 = "
; Expanded expression: "MacroTable MacroTableLen *(2) + 0 =(1) "
; Fused expression:    "+ MacroTable *MacroTableLen =(18) *ax 0 "
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], al
    cbw
L18:
    leave
    ret
; SEGMENT _TEXT
; glb AddMacroExpansionChar : (
; prm     e : char
;     ) void
SEGMENT _TEXT
    global  _AddMacroExpansionChar
_AddMacroExpansionChar:
    push    bp
    mov     bp, sp
; loc     e : (@4): char
; if
; RPN'ized expression: "e 0 == "
; Expanded expression: "(@4) *(1) 0 == "
; Fused expression:    "== *(@4) 0 IF! "
    mov     al, [bp+4]
    cbw
    cmp     ax, 0
    jne     L28
; {
; while
; RPN'ized expression: "MacroTable MacroTableLen + *u ( MacroTable MacroTableLen MacroTable MacroTableLen + *u + + *u , L32 strchr ) && "
; Expanded expression: "MacroTable MacroTableLen *(2) + *(1) _Bool [sh&&->34]  MacroTable MacroTableLen *(2) MacroTable MacroTableLen *(2) + *(1) + + *(1)  L32  strchr ()4 _Bool &&[34] "
L30:
; SEGMENT _TEXT
SEGMENT _DATA
L32:
    db  " ",9,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "+ MacroTable *MacroTableLen *(1) ax _Bool [sh&&->34] ( + MacroTable *MacroTableLen + *MacroTableLen *ax + MacroTable ax *(1) ax , L32 , strchr )4 _Bool &&[34] "
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    mov     al, [bx]
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L34
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    movsx   cx, byte [bx]
    mov     ax, [_MacroTableLen]
    add     ax, cx
    mov     cx, ax
    mov     ax, _MacroTable
    add     ax, cx
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L32
    call    _strchr
    sub     sp, -4
    test    ax, ax
    setne   al
    cbw
L34:
; JumpIfZero
    test    ax, ax
    je      L31
; RPN'ized expression: "MacroTable MacroTableLen + *u --p "
; Expanded expression: "MacroTable MacroTableLen *(2) + --p(1) "
; Fused expression:    "+ MacroTable *MacroTableLen --p(1) *ax "
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    mov     al, [bx]
    cbw
    dec     byte [bx]
    jmp     L30
L31:
; RPN'ized expression: "MacroTableLen 1 MacroTable MacroTableLen + *u + += "
; Expanded expression: "MacroTableLen 1 MacroTable MacroTableLen *(2) + *(1) + +=(2) "
; Fused expression:    "+ MacroTable *MacroTableLen + 1 *ax +=(34) *MacroTableLen ax "
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    movsx   cx, byte [bx]
    mov     ax, 1
    add     ax, cx
    mov     cx, ax
    mov     ax, [_MacroTableLen]
    add     ax, cx
    mov     [_MacroTableLen], ax
; return
    jmp     L27
; }
L28:
; if
; RPN'ized expression: "MacroTableLen 1 + MacroTable MacroTableLen + *u + 4096 >= "
; Expanded expression: "MacroTableLen *(2) 1 + MacroTable MacroTableLen *(2) + *(1) + 4096 >= "
; Fused expression:    "+ *MacroTableLen 1 push-ax + MacroTable *MacroTableLen + *sp *ax >= ax 4096 IF! "
    mov     ax, [_MacroTableLen]
    add     ax, 1
    push    ax
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    movsx   cx, byte [bx]
    pop     ax
    add     ax, cx
    cmp     ax, 4096
    jl      L35
; RPN'ized expression: "( L37 error ) "
; Expanded expression: " L37  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L37:
    db  "Error: Macro table full",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L37 , error )2 "
    push    L37
    call    _error
    sub     sp, -2
L35:
; if
; RPN'ized expression: "MacroTable MacroTableLen + *u 127 >= "
; Expanded expression: "MacroTable MacroTableLen *(2) + *(1) 127 >= "
; Fused expression:    "+ MacroTable *MacroTableLen >= *ax 127 IF! "
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 127
    jl      L39
; RPN'ized expression: "( L41 error ) "
; Expanded expression: " L41  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L41:
    db  "Error: Macro definition too long",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L41 , error )2 "
    push    L41
    call    _error
    sub     sp, -2
L39:
; RPN'ized expression: "MacroTable MacroTableLen 1 + MacroTable MacroTableLen + *u + + *u e = "
; Expanded expression: "MacroTable MacroTableLen *(2) 1 + MacroTable MacroTableLen *(2) + *(1) + + (@4) *(1) =(1) "
; Fused expression:    "+ *MacroTableLen 1 push-ax + MacroTable *MacroTableLen + *sp *ax + MacroTable ax =(17) *ax *(@4) "
    mov     ax, [_MacroTableLen]
    add     ax, 1
    push    ax
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    movsx   cx, byte [bx]
    pop     ax
    add     ax, cx
    mov     cx, ax
    mov     ax, _MacroTable
    add     ax, cx
    mov     bx, ax
    mov     al, [bp+4]
    cbw
    mov     [bx], al
    cbw
; RPN'ized expression: "MacroTable MacroTableLen + *u ++p "
; Expanded expression: "MacroTable MacroTableLen *(2) + ++p(1) "
; Fused expression:    "+ MacroTable *MacroTableLen ++p(1) *ax "
    mov     ax, _MacroTable
    add     ax, [_MacroTableLen]
    mov     bx, ax
    mov     al, [bx]
    cbw
    inc     byte [bx]
L27:
    leave
    ret
; SEGMENT _TEXT
; glb DumpMacroTable : (void) void
SEGMENT _TEXT
    global  _DumpMacroTable
_DumpMacroTable:
    push    bp
    mov     bp, sp
; loc     i : (@-2): int
    sub     sp, 2
; loc     j : (@-4): int
    sub     sp, 2
; RPN'ized expression: "( L44 printf ) "
; Expanded expression: " L44  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L44:
    db  10,"; Macro table:",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L44 , printf )2 "
    push    L44
    call    _printf
    sub     sp, -2
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-2) 0 =(2) "
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
L46:
; RPN'ized expression: "i MacroTableLen < "
; Expanded expression: "(@-2) *(2) MacroTableLen *(2) < "
; Fused expression:    "< *(@-2) *MacroTableLen IF! "
    mov     ax, [bp-2]
    cmp     ax, [_MacroTableLen]
    jge     L49
    jmp     L48
L47:
    jmp     L46
L48:
; {
; RPN'ized expression: "( MacroTable i + 1 + , L50 printf ) "
; Expanded expression: " MacroTable (@-2) *(2) + 1 +  L50  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L50:
    db  "; Macro %s = ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( + MacroTable *(@-2) + ax 1 , L50 , printf )4 "
    mov     ax, _MacroTable
    add     ax, [bp-2]
    add     ax, 1
    push    ax
    push    L50
    call    _printf
    sub     sp, -4
; RPN'ized expression: "i i 1 + MacroTable i + *u + = "
; Expanded expression: "(@-2) (@-2) *(2) 1 + MacroTable (@-2) *(2) + *(1) + =(2) "
; Fused expression:    "+ *(@-2) 1 push-ax + MacroTable *(@-2) + *sp *ax =(34) *(@-2) ax "
    mov     ax, [bp-2]
    add     ax, 1
    push    ax
    mov     ax, _MacroTable
    add     ax, [bp-2]
    mov     bx, ax
    movsx   cx, byte [bx]
    pop     ax
    add     ax, cx
    mov     [bp-2], ax
; RPN'ized expression: "( L52 printf ) "
; Expanded expression: " L52  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L52:
    db  "`",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L52 , printf )2 "
    push    L52
    call    _printf
    sub     sp, -2
; RPN'ized expression: "j MacroTable i ++p + *u = "
; Expanded expression: "(@-4) MacroTable (@-2) ++p(2) + *(1) =(2) "
; Fused expression:    "++p(2) *(@-2) + MacroTable ax =(33) *(@-4) *ax "
    mov     ax, [bp-2]
    inc     word [bp-2]
    mov     cx, ax
    mov     ax, _MacroTable
    add     ax, cx
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-4], ax
; while
; RPN'ized expression: "j --p "
; Expanded expression: "(@-4) --p(2) "
L54:
; Fused expression:    "--p(2) *(@-4) "
    mov     ax, [bp-4]
    dec     word [bp-4]
; JumpIfZero
    test    ax, ax
    je      L55
; RPN'ized expression: "( MacroTable i ++p + *u , L56 printf ) "
; Expanded expression: " MacroTable (@-2) ++p(2) + *(1)  L56  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L56:
    db  "%c",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ++p(2) *(@-2) + MacroTable ax *(1) ax , L56 , printf )4 "
    mov     ax, [bp-2]
    inc     word [bp-2]
    mov     cx, ax
    mov     ax, _MacroTable
    add     ax, cx
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L56
    call    _printf
    sub     sp, -4
    jmp     L54
L55:
; RPN'ized expression: "( L58 printf ) "
; Expanded expression: " L58  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L58:
    db  "`",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L58 , printf )2 "
    push    L58
    call    _printf
    sub     sp, -2
; }
    jmp     L47
L49:
; RPN'ized expression: "( 4096 , MacroTableLen , L60 printf ) "
; Expanded expression: " 4096  MacroTableLen *(2)  L60  printf ()6 "
; SEGMENT _TEXT
SEGMENT _DATA
L60:
    db  "; Bytes used: %d/%d",10,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( 4096 , *(2) MacroTableLen , L60 , printf )6 "
    push    4096
    push    word [_MacroTableLen]
    push    L60
    call    _printf
    sub     sp, -6
L43:
    leave
    ret
; SEGMENT _TEXT
; glb PurgeStringTable : (void) void
SEGMENT _TEXT
    global  _PurgeStringTable
_PurgeStringTable:
    push    bp
    mov     bp, sp
; RPN'ized expression: "StringTableLen 0 = "
; Expanded expression: "StringTableLen 0 =(2) "
; Fused expression:    "=(34) *StringTableLen 0 "
    mov     ax, 0
    mov     [_StringTableLen], ax
L62:
    leave
    ret
; SEGMENT _TEXT
; glb AddString : (
; prm     label : int
; prm     str : * char
; prm     len : int
;     ) void
SEGMENT _TEXT
    global  _AddString
_AddString:
    push    bp
    mov     bp, sp
; loc     label : (@4): int
; loc     str : (@6): * char
; loc     len : (@8): int
; if
; RPN'ized expression: "len 127 > "
; Expanded expression: "(@8) *(2) 127 > "
; Fused expression:    "> *(@8) 127 IF! "
    mov     ax, [bp+8]
    cmp     ax, 127
    jle     L64
; RPN'ized expression: "( L66 error ) "
; Expanded expression: " L66  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L66:
    db  "Error: String too long",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L66 , error )2 "
    push    L66
    call    _error
    sub     sp, -2
L64:
; if
; RPN'ized expression: "512 StringTableLen - label sizeof 1 + len + < "
; Expanded expression: "512 StringTableLen *(2) - 3 (@8) *(2) + < "
; Fused expression:    "- 512 *StringTableLen push-ax + 3 *(@8) < *sp ax IF! "
    mov     ax, 512
    sub     ax, [_StringTableLen]
    push    ax
    mov     ax, 3
    add     ax, [bp+8]
    mov     cx, ax
    pop     ax
    cmp     ax, cx
    jge     L68
; RPN'ized expression: "( L70 error ) "
; Expanded expression: " L70  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L70:
    db  "Error: String table full",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L70 , error )2 "
    push    L70
    call    _error
    sub     sp, -2
L68:
; RPN'ized expression: "( label sizeof , label &u , StringTable StringTableLen + memcpy ) "
; Expanded expression: " 2  (@4)  StringTable StringTableLen *(2) +  memcpy ()6 "
; Fused expression:    "( 2 , (@4) , + StringTable *StringTableLen , memcpy )6 "
    push    2
    lea     ax, [bp+4]
    push    ax
    mov     ax, _StringTable
    add     ax, [_StringTableLen]
    push    ax
    call    _memcpy
    sub     sp, -6
; RPN'ized expression: "StringTableLen label sizeof += "
; Expanded expression: "StringTableLen 2 +=(2) "
; Fused expression:    "+=(34) *StringTableLen 2 "
    mov     ax, [_StringTableLen]
    add     ax, 2
    mov     [_StringTableLen], ax
; RPN'ized expression: "StringTable StringTableLen ++p + *u len = "
; Expanded expression: "StringTable StringTableLen ++p(2) + (@8) *(2) =(1) "
; Fused expression:    "++p(2) *StringTableLen + StringTable ax =(18) *ax *(@8) "
    mov     ax, [_StringTableLen]
    inc     word [_StringTableLen]
    mov     cx, ax
    mov     ax, _StringTable
    add     ax, cx
    mov     bx, ax
    mov     ax, [bp+8]
    mov     [bx], al
    cbw
; RPN'ized expression: "( len , str , StringTable StringTableLen + memcpy ) "
; Expanded expression: " (@8) *(2)  (@6) *(2)  StringTable StringTableLen *(2) +  memcpy ()6 "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , + StringTable *StringTableLen , memcpy )6 "
    push    word [bp+8]
    push    word [bp+6]
    mov     ax, _StringTable
    add     ax, [_StringTableLen]
    push    ax
    call    _memcpy
    sub     sp, -6
; RPN'ized expression: "StringTableLen len += "
; Expanded expression: "StringTableLen (@8) *(2) +=(2) "
; Fused expression:    "+=(34) *StringTableLen *(@8) "
    mov     ax, [_StringTableLen]
    add     ax, [bp+8]
    mov     [_StringTableLen], ax
L63:
    leave
    ret
; SEGMENT _TEXT
; glb FindString : (
; prm     label : int
;     ) * char
SEGMENT _TEXT
    global  _FindString
_FindString:
    push    bp
    mov     bp, sp
; loc     label : (@4): int
; loc     i : (@-2): int
    sub     sp, 2
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-2) 0 =(2) "
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
L73:
; RPN'ized expression: "i StringTableLen < "
; Expanded expression: "(@-2) *(2) StringTableLen *(2) < "
; Fused expression:    "< *(@-2) *StringTableLen IF! "
    mov     ax, [bp-2]
    cmp     ax, [_StringTableLen]
    jge     L76
    jmp     L75
L74:
    jmp     L73
L75:
; {
; loc         lab : (@-4): int
    sub     sp, 2
; RPN'ized expression: "( lab sizeof , StringTable i + , lab &u memcpy ) "
; Expanded expression: " 2  StringTable (@-2) *(2) +  (@-4)  memcpy ()6 "
; Fused expression:    "( 2 , + StringTable *(@-2) , (@-4) , memcpy )6 "
    push    2
    mov     ax, _StringTable
    add     ax, [bp-2]
    push    ax
    lea     ax, [bp-4]
    push    ax
    call    _memcpy
    sub     sp, -6
; if
; RPN'ized expression: "lab label == "
; Expanded expression: "(@-4) *(2) (@4) *(2) == "
; Fused expression:    "== *(@-4) *(@4) IF! "
    mov     ax, [bp-4]
    cmp     ax, [bp+4]
    jne     L77
; return
; RPN'ized expression: "StringTable i + lab sizeof + "
; Expanded expression: "StringTable (@-2) *(2) + 2 + "
; Fused expression:    "+ StringTable *(@-2) + ax 2 "
    mov     ax, _StringTable
    add     ax, [bp-2]
    add     ax, 2
    jmp     L72
L77:
; RPN'ized expression: "i lab sizeof += "
; Expanded expression: "(@-2) 2 +=(2) "
; Fused expression:    "+=(34) *(@-2) 2 "
    mov     ax, [bp-2]
    add     ax, 2
    mov     [bp-2], ax
; RPN'ized expression: "i 1 StringTable i + *u + += "
; Expanded expression: "(@-2) 1 StringTable (@-2) *(2) + *(1) + +=(2) "
; Fused expression:    "+ StringTable *(@-2) + 1 *ax +=(34) *(@-2) ax "
    mov     ax, _StringTable
    add     ax, [bp-2]
    mov     bx, ax
    movsx   cx, byte [bx]
    mov     ax, 1
    add     ax, cx
    mov     cx, ax
    mov     ax, [bp-2]
    add     ax, cx
    mov     [bp-2], ax
    sub     sp, -2
; }
    jmp     L74
L76:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L72
L72:
    leave
    ret
; SEGMENT _TEXT
; glb FindIdent : (
; prm     name : * char
;     ) int
SEGMENT _TEXT
    global  _FindIdent
_FindIdent:
    push    bp
    mov     bp, sp
; loc     name : (@4): * char
; loc     i : (@-2): int
    sub     sp, 2
; for
; RPN'ized expression: "i IdentTableLen = "
; Expanded expression: "(@-2) IdentTableLen *(2) =(2) "
; Fused expression:    "=(34) *(@-2) *IdentTableLen "
    mov     ax, [_IdentTableLen]
    mov     [bp-2], ax
L80:
; RPN'ized expression: "i 0 > "
; Expanded expression: "(@-2) *(2) 0 > "
; Fused expression:    "> *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jle     L83
    jmp     L82
L81:
    jmp     L80
L82:
; {
; RPN'ized expression: "i 1 IdentTable i 1 - + *u + -= "
; Expanded expression: "(@-2) 1 IdentTable (@-2) *(2) 1 - + *(1) + -=(2) "
; Fused expression:    "- *(@-2) 1 + IdentTable ax + 1 *ax -=(34) *(@-2) ax "
    mov     ax, [bp-2]
    sub     ax, 1
    mov     cx, ax
    mov     ax, _IdentTable
    add     ax, cx
    mov     bx, ax
    movsx   cx, byte [bx]
    mov     ax, 1
    add     ax, cx
    mov     cx, ax
    mov     ax, [bp-2]
    sub     ax, cx
    mov     [bp-2], ax
; if
; RPN'ized expression: "( name , IdentTable i + strcmp ) 0 == "
; Expanded expression: " (@4) *(2)  IdentTable (@-2) *(2) +  strcmp ()4 0 == "
; Fused expression:    "( *(2) (@4) , + IdentTable *(@-2) , strcmp )4 == ax 0 IF! "
    push    word [bp+4]
    mov     ax, _IdentTable
    add     ax, [bp-2]
    push    ax
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L84
; return
; RPN'ized expression: "i "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L79
L84:
; }
    jmp     L81
L83:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1 "
    mov     ax, -1
    jmp     L79
L79:
    leave
    ret
; SEGMENT _TEXT
; glb AddIdent : (
; prm     name : * char
;     ) int
SEGMENT _TEXT
    global  _AddIdent
_AddIdent:
    push    bp
    mov     bp, sp
; loc     name : (@4): * char
; loc     i : (@-2): int
    sub     sp, 2
; loc     len : (@-4): int
    sub     sp, 2
; if
; RPN'ized expression: "i ( name FindIdent ) = 0 >= "
; Expanded expression: "(@-2)  (@4) *(2)  FindIdent ()2 =(2) 0 >= "
; Fused expression:    "( *(2) (@4) , FindIdent )2 =(34) *(@-2) ax >= ax 0 IF! "
    push    word [bp+4]
    call    _FindIdent
    sub     sp, -2
    mov     [bp-2], ax
    cmp     ax, 0
    jl      L87
; return
; RPN'ized expression: "i "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L86
L87:
; RPN'ized expression: "i IdentTableLen = "
; Expanded expression: "(@-2) IdentTableLen *(2) =(2) "
; Fused expression:    "=(34) *(@-2) *IdentTableLen "
    mov     ax, [_IdentTableLen]
    mov     [bp-2], ax
; RPN'ized expression: "len ( name strlen ) = "
; Expanded expression: "(@-4)  (@4) *(2)  strlen ()2 =(2) "
; Fused expression:    "( *(2) (@4) , strlen )2 =(34) *(@-4) ax "
    push    word [bp+4]
    call    _strlen
    sub     sp, -2
    mov     [bp-4], ax
; if
; RPN'ized expression: "len 127 >= "
; Expanded expression: "(@-4) *(2) 127 >= "
; Fused expression:    ">= *(@-4) 127 IF! "
    mov     ax, [bp-4]
    cmp     ax, 127
    jl      L89
; RPN'ized expression: "( L91 error ) "
; Expanded expression: " L91  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L91:
    db  "Error: Identifier table too long",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L91 , error )2 "
    push    L91
    call    _error
    sub     sp, -2
L89:
; if
; RPN'ized expression: "4096 IdentTableLen - len 2 + < "
; Expanded expression: "4096 IdentTableLen *(2) - (@-4) *(2) 2 + < "
; Fused expression:    "- 4096 *IdentTableLen push-ax + *(@-4) 2 < *sp ax IF! "
    mov     ax, 4096
    sub     ax, [_IdentTableLen]
    push    ax
    mov     ax, [bp-4]
    add     ax, 2
    mov     cx, ax
    pop     ax
    cmp     ax, cx
    jge     L93
; RPN'ized expression: "( L95 error ) "
; Expanded expression: " L95  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L95:
    db  "Error: Identifier table full",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L95 , error )2 "
    push    L95
    call    _error
    sub     sp, -2
L93:
; RPN'ized expression: "( name , IdentTable IdentTableLen + strcpy ) "
; Expanded expression: " (@4) *(2)  IdentTable IdentTableLen *(2) +  strcpy ()4 "
; Fused expression:    "( *(2) (@4) , + IdentTable *IdentTableLen , strcpy )4 "
    push    word [bp+4]
    mov     ax, _IdentTable
    add     ax, [_IdentTableLen]
    push    ax
    call    _strcpy
    sub     sp, -4
; RPN'ized expression: "IdentTableLen len 1 + += "
; Expanded expression: "IdentTableLen (@-4) *(2) 1 + +=(2) "
; Fused expression:    "+ *(@-4) 1 +=(34) *IdentTableLen ax "
    mov     ax, [bp-4]
    add     ax, 1
    mov     cx, ax
    mov     ax, [_IdentTableLen]
    add     ax, cx
    mov     [_IdentTableLen], ax
; RPN'ized expression: "IdentTable IdentTableLen ++p + *u len 1 + = "
; Expanded expression: "IdentTable IdentTableLen ++p(2) + (@-4) *(2) 1 + =(1) "
; Fused expression:    "++p(2) *IdentTableLen + IdentTable ax push-ax + *(@-4) 1 =(18) **sp ax "
    mov     ax, [_IdentTableLen]
    inc     word [_IdentTableLen]
    mov     cx, ax
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    mov     ax, [bp-4]
    add     ax, 1
    pop     bx
    mov     [bx], al
    cbw
; return
; RPN'ized expression: "i "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L86
L86:
    leave
    ret
; SEGMENT _TEXT
; glb DumpIdentTable : (void) void
SEGMENT _TEXT
    global  _DumpIdentTable
_DumpIdentTable:
    push    bp
    mov     bp, sp
; loc     i : (@-2): int
    sub     sp, 2
; RPN'ized expression: "( L98 printf ) "
; Expanded expression: " L98  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L98:
    db  10,"; Identifier table:",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L98 , printf )2 "
    push    L98
    call    _printf
    sub     sp, -2
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-2) 0 =(2) "
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
L100:
; RPN'ized expression: "i IdentTableLen < "
; Expanded expression: "(@-2) *(2) IdentTableLen *(2) < "
; Fused expression:    "< *(@-2) *IdentTableLen IF! "
    mov     ax, [bp-2]
    cmp     ax, [_IdentTableLen]
    jge     L103
    jmp     L102
L101:
    jmp     L100
L102:
; {
; RPN'ized expression: "( IdentTable i + , L104 printf ) "
; Expanded expression: " IdentTable (@-2) *(2) +  L104  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L104:
    db  "; Ident %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( + IdentTable *(@-2) , L104 , printf )4 "
    mov     ax, _IdentTable
    add     ax, [bp-2]
    push    ax
    push    L104
    call    _printf
    sub     sp, -4
; RPN'ized expression: "i ( IdentTable i + strlen ) 2 + += "
; Expanded expression: "(@-2)  IdentTable (@-2) *(2) +  strlen ()2 2 + +=(2) "
; Fused expression:    "( + IdentTable *(@-2) , strlen )2 + ax 2 +=(34) *(@-2) ax "
    mov     ax, _IdentTable
    add     ax, [bp-2]
    push    ax
    call    _strlen
    sub     sp, -2
    add     ax, 2
    mov     cx, ax
    mov     ax, [bp-2]
    add     ax, cx
    mov     [bp-2], ax
; }
    jmp     L101
L103:
; RPN'ized expression: "( 4096 , IdentTableLen , L106 printf ) "
; Expanded expression: " 4096  IdentTableLen *(2)  L106  printf ()6 "
; SEGMENT _TEXT
SEGMENT _DATA
L106:
    db  "; Bytes used: %d/%d",10,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( 4096 , *(2) IdentTableLen , L106 , printf )6 "
    push    4096
    push    word [_IdentTableLen]
    push    L106
    call    _printf
    sub     sp, -6
L97:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenByWord : (
; prm     word : * char
;     ) int
SEGMENT _TEXT
    global  _GetTokenByWord
_GetTokenByWord:
    push    bp
    mov     bp, sp
; loc     word : (@4): * char
; if
; RPN'ized expression: "( L111 , word strcmp ) 0 == "
; Expanded expression: " L111  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L111:
    db  "break",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L111 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L111
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L109
; return
; RPN'ized expression: "26 "
; Expanded expression: "26 "
; Expression value: 26
; Fused expression:    "26 "
    mov     ax, 26
    jmp     L108
L109:
; if
; RPN'ized expression: "( L115 , word strcmp ) 0 == "
; Expanded expression: " L115  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L115:
    db  "case",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L115 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L115
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L113
; return
; RPN'ized expression: "118 "
; Expanded expression: "118 "
; Expression value: 118
; Fused expression:    "118 "
    mov     ax, 118
    jmp     L108
L113:
; if
; RPN'ized expression: "( L119 , word strcmp ) 0 == "
; Expanded expression: " L119  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L119:
    db  "char",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L119 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L119
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L117
; return
; RPN'ized expression: "18 "
; Expanded expression: "18 "
; Expression value: 18
; Fused expression:    "18 "
    mov     ax, 18
    jmp     L108
L117:
; if
; RPN'ized expression: "( L123 , word strcmp ) 0 == "
; Expanded expression: " L123  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L123:
    db  "continue",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L123 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L123
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L121
; return
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
; Fused expression:    "25 "
    mov     ax, 25
    jmp     L108
L121:
; if
; RPN'ized expression: "( L127 , word strcmp ) 0 == "
; Expanded expression: " L127  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L127:
    db  "default",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L127 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L127
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L125
; return
; RPN'ized expression: "119 "
; Expanded expression: "119 "
; Expression value: 119
; Fused expression:    "119 "
    mov     ax, 119
    jmp     L108
L125:
; if
; RPN'ized expression: "( L131 , word strcmp ) 0 == "
; Expanded expression: " L131  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L131:
    db  "do",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L131 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L131
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L129
; return
; RPN'ized expression: "115 "
; Expanded expression: "115 "
; Expression value: 115
; Fused expression:    "115 "
    mov     ax, 115
    jmp     L108
L129:
; if
; RPN'ized expression: "( L135 , word strcmp ) 0 == "
; Expanded expression: " L135  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L135:
    db  "else",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L135 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L135
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L133
; return
; RPN'ized expression: "23 "
; Expanded expression: "23 "
; Expression value: 23
; Fused expression:    "23 "
    mov     ax, 23
    jmp     L108
L133:
; if
; RPN'ized expression: "( L139 , word strcmp ) 0 == "
; Expanded expression: " L139  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L139:
    db  "extern",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L139 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L139
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L137
; return
; RPN'ized expression: "108 "
; Expanded expression: "108 "
; Expression value: 108
; Fused expression:    "108 "
    mov     ax, 108
    jmp     L108
L137:
; if
; RPN'ized expression: "( L143 , word strcmp ) 0 == "
; Expanded expression: " L143  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L143:
    db  "for",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L143 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L143
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L141
; return
; RPN'ized expression: "116 "
; Expanded expression: "116 "
; Expression value: 116
; Fused expression:    "116 "
    mov     ax, 116
    jmp     L108
L141:
; if
; RPN'ized expression: "( L147 , word strcmp ) 0 == "
; Expanded expression: " L147  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L147:
    db  "if",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L147 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L147
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L145
; return
; RPN'ized expression: "22 "
; Expanded expression: "22 "
; Expression value: 22
; Fused expression:    "22 "
    mov     ax, 22
    jmp     L108
L145:
; if
; RPN'ized expression: "( L151 , word strcmp ) 0 == "
; Expanded expression: " L151  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L151:
    db  "int",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L151 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L151
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L149
; return
; RPN'ized expression: "19 "
; Expanded expression: "19 "
; Expression value: 19
; Fused expression:    "19 "
    mov     ax, 19
    jmp     L108
L149:
; if
; RPN'ized expression: "( L155 , word strcmp ) 0 == "
; Expanded expression: " L155  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L155:
    db  "return",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L155 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L155
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L153
; return
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
; Fused expression:    "20 "
    mov     ax, 20
    jmp     L108
L153:
; if
; RPN'ized expression: "( L159 , word strcmp ) 0 == "
; Expanded expression: " L159  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L159:
    db  "sizeof",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L159 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L159
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L157
; return
; RPN'ized expression: "27 "
; Expanded expression: "27 "
; Expression value: 27
; Fused expression:    "27 "
    mov     ax, 27
    jmp     L108
L157:
; if
; RPN'ized expression: "( L163 , word strcmp ) 0 == "
; Expanded expression: " L163  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L163:
    db  "switch",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L163 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L163
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L161
; return
; RPN'ized expression: "117 "
; Expanded expression: "117 "
; Expression value: 117
; Fused expression:    "117 "
    mov     ax, 117
    jmp     L108
L161:
; if
; RPN'ized expression: "( L167 , word strcmp ) 0 == "
; Expanded expression: " L167  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L167:
    db  "void",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L167 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L167
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L165
; return
; RPN'ized expression: "17 "
; Expanded expression: "17 "
; Expression value: 17
; Fused expression:    "17 "
    mov     ax, 17
    jmp     L108
L165:
; if
; RPN'ized expression: "( L171 , word strcmp ) 0 == "
; Expanded expression: " L171  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L171:
    db  "while",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L171 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L171
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L169
; return
; RPN'ized expression: "24 "
; Expanded expression: "24 "
; Expression value: 24
; Fused expression:    "24 "
    mov     ax, 24
    jmp     L108
L169:
; if
; RPN'ized expression: "( L175 , word strcmp ) 0 == "
; Expanded expression: " L175  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L175:
    db  "auto",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L175 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L175
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L173
; return
; RPN'ized expression: "109 "
; Expanded expression: "109 "
; Expression value: 109
; Fused expression:    "109 "
    mov     ax, 109
    jmp     L108
L173:
; if
; RPN'ized expression: "( L179 , word strcmp ) 0 == "
; Expanded expression: " L179  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L179:
    db  "const",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L179 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L179
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L177
; return
; RPN'ized expression: "103 "
; Expanded expression: "103 "
; Expression value: 103
; Fused expression:    "103 "
    mov     ax, 103
    jmp     L108
L177:
; if
; RPN'ized expression: "( L183 , word strcmp ) 0 == "
; Expanded expression: " L183  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L183:
    db  "double",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L183 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L183
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L181
; return
; RPN'ized expression: "98 "
; Expanded expression: "98 "
; Expression value: 98
; Fused expression:    "98 "
    mov     ax, 98
    jmp     L108
L181:
; if
; RPN'ized expression: "( L187 , word strcmp ) 0 == "
; Expanded expression: " L187  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L187:
    db  "enum",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L187 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L187
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L185
; return
; RPN'ized expression: "112 "
; Expanded expression: "112 "
; Expression value: 112
; Fused expression:    "112 "
    mov     ax, 112
    jmp     L108
L185:
; if
; RPN'ized expression: "( L191 , word strcmp ) 0 == "
; Expanded expression: " L191  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L191:
    db  "float",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L191 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L191
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L189
; return
; RPN'ized expression: "97 "
; Expanded expression: "97 "
; Expression value: 97
; Fused expression:    "97 "
    mov     ax, 97
    jmp     L108
L189:
; if
; RPN'ized expression: "( L195 , word strcmp ) 0 == "
; Expanded expression: " L195  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L195:
    db  "goto",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L195 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L195
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L193
; return
; RPN'ized expression: "21 "
; Expanded expression: "21 "
; Expression value: 21
; Fused expression:    "21 "
    mov     ax, 21
    jmp     L108
L193:
; if
; RPN'ized expression: "( L199 , word strcmp ) 0 == "
; Expanded expression: " L199  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L199:
    db  "inline",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L199 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L199
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L197
; return
; RPN'ized expression: "107 "
; Expanded expression: "107 "
; Expression value: 107
; Fused expression:    "107 "
    mov     ax, 107
    jmp     L108
L197:
; if
; RPN'ized expression: "( L203 , word strcmp ) 0 == "
; Expanded expression: " L203  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L203:
    db  "long",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L203 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L203
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L201
; return
; RPN'ized expression: "99 "
; Expanded expression: "99 "
; Expression value: 99
; Fused expression:    "99 "
    mov     ax, 99
    jmp     L108
L201:
; if
; RPN'ized expression: "( L207 , word strcmp ) 0 == "
; Expanded expression: " L207  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L207:
    db  "register",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L207 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L207
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L205
; return
; RPN'ized expression: "110 "
; Expanded expression: "110 "
; Expression value: 110
; Fused expression:    "110 "
    mov     ax, 110
    jmp     L108
L205:
; if
; RPN'ized expression: "( L211 , word strcmp ) 0 == "
; Expanded expression: " L211  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L211:
    db  "restrict",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L211 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L211
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L209
; return
; RPN'ized expression: "105 "
; Expanded expression: "105 "
; Expression value: 105
; Fused expression:    "105 "
    mov     ax, 105
    jmp     L108
L209:
; if
; RPN'ized expression: "( L215 , word strcmp ) 0 == "
; Expanded expression: " L215  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L215:
    db  "short",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L215 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L215
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L213
; return
; RPN'ized expression: "100 "
; Expanded expression: "100 "
; Expression value: 100
; Fused expression:    "100 "
    mov     ax, 100
    jmp     L108
L213:
; if
; RPN'ized expression: "( L219 , word strcmp ) 0 == "
; Expanded expression: " L219  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L219:
    db  "signed",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L219 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L219
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L217
; return
; RPN'ized expression: "102 "
; Expanded expression: "102 "
; Expression value: 102
; Fused expression:    "102 "
    mov     ax, 102
    jmp     L108
L217:
; if
; RPN'ized expression: "( L223 , word strcmp ) 0 == "
; Expanded expression: " L223  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L223:
    db  "static",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L223 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L223
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L221
; return
; RPN'ized expression: "106 "
; Expanded expression: "106 "
; Expression value: 106
; Fused expression:    "106 "
    mov     ax, 106
    jmp     L108
L221:
; if
; RPN'ized expression: "( L227 , word strcmp ) 0 == "
; Expanded expression: " L227  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L227:
    db  "struct",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L227 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L227
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L225
; return
; RPN'ized expression: "113 "
; Expanded expression: "113 "
; Expression value: 113
; Fused expression:    "113 "
    mov     ax, 113
    jmp     L108
L225:
; if
; RPN'ized expression: "( L231 , word strcmp ) 0 == "
; Expanded expression: " L231  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L231:
    db  "typedef",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L231 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L231
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L229
; return
; RPN'ized expression: "111 "
; Expanded expression: "111 "
; Expression value: 111
; Fused expression:    "111 "
    mov     ax, 111
    jmp     L108
L229:
; if
; RPN'ized expression: "( L235 , word strcmp ) 0 == "
; Expanded expression: " L235  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L235:
    db  "union",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L235 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L235
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L233
; return
; RPN'ized expression: "114 "
; Expanded expression: "114 "
; Expression value: 114
; Fused expression:    "114 "
    mov     ax, 114
    jmp     L108
L233:
; if
; RPN'ized expression: "( L239 , word strcmp ) 0 == "
; Expanded expression: " L239  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L239:
    db  "unsigned",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L239 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L239
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L237
; return
; RPN'ized expression: "101 "
; Expanded expression: "101 "
; Expression value: 101
; Fused expression:    "101 "
    mov     ax, 101
    jmp     L108
L237:
; if
; RPN'ized expression: "( L243 , word strcmp ) 0 == "
; Expanded expression: " L243  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L243:
    db  "volatile",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L243 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L243
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L241
; return
; RPN'ized expression: "104 "
; Expanded expression: "104 "
; Expression value: 104
; Fused expression:    "104 "
    mov     ax, 104
    jmp     L108
L241:
; if
; RPN'ized expression: "( L247 , word strcmp ) 0 == "
; Expanded expression: " L247  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L247:
    db  "_Bool",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L247 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L247
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L245
; return
; RPN'ized expression: "120 "
; Expanded expression: "120 "
; Expression value: 120
; Fused expression:    "120 "
    mov     ax, 120
    jmp     L108
L245:
; if
; RPN'ized expression: "( L251 , word strcmp ) 0 == "
; Expanded expression: " L251  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L251:
    db  "_Complex",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L251 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L251
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L249
; return
; RPN'ized expression: "121 "
; Expanded expression: "121 "
; Expression value: 121
; Fused expression:    "121 "
    mov     ax, 121
    jmp     L108
L249:
; if
; RPN'ized expression: "( L255 , word strcmp ) 0 == "
; Expanded expression: " L255  (@4) *(2)  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L255:
    db  "_Imaginary",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L255 , *(2) (@4) , strcmp )4 == ax 0 IF! "
    push    L255
    push    word [bp+4]
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L253
; return
; RPN'ized expression: "122 "
; Expanded expression: "122 "
; Expression value: 122
; Fused expression:    "122 "
    mov     ax, 122
    jmp     L108
L253:
; return
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; Fused expression:    "16 "
    mov     ax, 16
    jmp     L108
L108:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenName : (
; prm     token : int
;     ) * char
SEGMENT _TEXT
    global  _GetTokenName
_GetTokenName:
    push    bp
    mov     bp, sp
; loc     token : (@4): int
; switch
; RPN'ized expression: "token "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L260
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    jmp     L261
L260:
    cmp     ax, 0
    jne     L262
L261:
; return
; RPN'ized expression: "L264 "
; Expanded expression: "L264 "
; SEGMENT _TEXT
SEGMENT _DATA
L264:
    db  "<EOF>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L264 "
    mov     ax, L264
    jmp     L257
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L263
L262:
    cmp     ax, 43
    jne     L266
L263:
; return
; RPN'ized expression: "L268 "
; Expanded expression: "L268 "
; SEGMENT _TEXT
SEGMENT _DATA
L268:
    db  "+",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L268 "
    mov     ax, L268
    jmp     L257
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L267
L266:
    cmp     ax, 45
    jne     L270
L267:
; return
; RPN'ized expression: "L272 "
; Expanded expression: "L272 "
; SEGMENT _TEXT
SEGMENT _DATA
L272:
    db  "-",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L272 "
    mov     ax, L272
    jmp     L257
; case
; RPN'ized expression: "126 "
; Expanded expression: "126 "
; Expression value: 126
    jmp     L271
L270:
    cmp     ax, 126
    jne     L274
L271:
; return
; RPN'ized expression: "L276 "
; Expanded expression: "L276 "
; SEGMENT _TEXT
SEGMENT _DATA
L276:
    db  "~",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L276 "
    mov     ax, L276
    jmp     L257
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L275
L274:
    cmp     ax, 42
    jne     L278
L275:
; return
; RPN'ized expression: "L280 "
; Expanded expression: "L280 "
; SEGMENT _TEXT
SEGMENT _DATA
L280:
    db  "*",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L280 "
    mov     ax, L280
    jmp     L257
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L279
L278:
    cmp     ax, 47
    jne     L282
L279:
; return
; RPN'ized expression: "L284 "
; Expanded expression: "L284 "
; SEGMENT _TEXT
SEGMENT _DATA
L284:
    db  "/",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L284 "
    mov     ax, L284
    jmp     L257
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L283
L282:
    cmp     ax, 37
    jne     L286
L283:
; return
; RPN'ized expression: "L288 "
; Expanded expression: "L288 "
; SEGMENT _TEXT
SEGMENT _DATA
L288:
    db  "%",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L288 "
    mov     ax, L288
    jmp     L257
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L287
L286:
    cmp     ax, 38
    jne     L290
L287:
; return
; RPN'ized expression: "L292 "
; Expanded expression: "L292 "
; SEGMENT _TEXT
SEGMENT _DATA
L292:
    db  "&",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L292 "
    mov     ax, L292
    jmp     L257
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L291
L290:
    cmp     ax, 124
    jne     L294
L291:
; return
; RPN'ized expression: "L296 "
; Expanded expression: "L296 "
; SEGMENT _TEXT
SEGMENT _DATA
L296:
    db  "|",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L296 "
    mov     ax, L296
    jmp     L257
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L295
L294:
    cmp     ax, 94
    jne     L298
L295:
; return
; RPN'ized expression: "L300 "
; Expanded expression: "L300 "
; SEGMENT _TEXT
SEGMENT _DATA
L300:
    db  "^",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L300 "
    mov     ax, L300
    jmp     L257
; case
; RPN'ized expression: "33 "
; Expanded expression: "33 "
; Expression value: 33
    jmp     L299
L298:
    cmp     ax, 33
    jne     L302
L299:
; return
; RPN'ized expression: "L304 "
; Expanded expression: "L304 "
; SEGMENT _TEXT
SEGMENT _DATA
L304:
    db  "!",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L304 "
    mov     ax, L304
    jmp     L257
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L303
L302:
    cmp     ax, 60
    jne     L306
L303:
; return
; RPN'ized expression: "L308 "
; Expanded expression: "L308 "
; SEGMENT _TEXT
SEGMENT _DATA
L308:
    db  "<",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L308 "
    mov     ax, L308
    jmp     L257
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L307
L306:
    cmp     ax, 62
    jne     L310
L307:
; return
; RPN'ized expression: "L312 "
; Expanded expression: "L312 "
; SEGMENT _TEXT
SEGMENT _DATA
L312:
    db  ">",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L312 "
    mov     ax, L312
    jmp     L257
; case
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
    jmp     L311
L310:
    cmp     ax, 40
    jne     L314
L311:
; return
; RPN'ized expression: "L316 "
; Expanded expression: "L316 "
; SEGMENT _TEXT
SEGMENT _DATA
L316:
    db  "(",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L316 "
    mov     ax, L316
    jmp     L257
; case
; RPN'ized expression: "41 "
; Expanded expression: "41 "
; Expression value: 41
    jmp     L315
L314:
    cmp     ax, 41
    jne     L318
L315:
; return
; RPN'ized expression: "L320 "
; Expanded expression: "L320 "
; SEGMENT _TEXT
SEGMENT _DATA
L320:
    db  ")",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L320 "
    mov     ax, L320
    jmp     L257
; case
; RPN'ized expression: "91 "
; Expanded expression: "91 "
; Expression value: 91
    jmp     L319
L318:
    cmp     ax, 91
    jne     L322
L319:
; return
; RPN'ized expression: "L324 "
; Expanded expression: "L324 "
; SEGMENT _TEXT
SEGMENT _DATA
L324:
    db  "[",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L324 "
    mov     ax, L324
    jmp     L257
; case
; RPN'ized expression: "93 "
; Expanded expression: "93 "
; Expression value: 93
    jmp     L323
L322:
    cmp     ax, 93
    jne     L326
L323:
; return
; RPN'ized expression: "L328 "
; Expanded expression: "L328 "
; SEGMENT _TEXT
SEGMENT _DATA
L328:
    db  "]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L328 "
    mov     ax, L328
    jmp     L257
; case
; RPN'ized expression: "123 "
; Expanded expression: "123 "
; Expression value: 123
    jmp     L327
L326:
    cmp     ax, 123
    jne     L330
L327:
; return
; RPN'ized expression: "L332 "
; Expanded expression: "L332 "
; SEGMENT _TEXT
SEGMENT _DATA
L332:
    db  "{",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L332 "
    mov     ax, L332
    jmp     L257
; case
; RPN'ized expression: "125 "
; Expanded expression: "125 "
; Expression value: 125
    jmp     L331
L330:
    cmp     ax, 125
    jne     L334
L331:
; return
; RPN'ized expression: "L336 "
; Expanded expression: "L336 "
; SEGMENT _TEXT
SEGMENT _DATA
L336:
    db  "}",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L336 "
    mov     ax, L336
    jmp     L257
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L335
L334:
    cmp     ax, 61
    jne     L338
L335:
; return
; RPN'ized expression: "L340 "
; Expanded expression: "L340 "
; SEGMENT _TEXT
SEGMENT _DATA
L340:
    db  "=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L340 "
    mov     ax, L340
    jmp     L257
; case
; RPN'ized expression: "44 "
; Expanded expression: "44 "
; Expression value: 44
    jmp     L339
L338:
    cmp     ax, 44
    jne     L342
L339:
; return
; RPN'ized expression: "L344 "
; Expanded expression: "L344 "
; SEGMENT _TEXT
SEGMENT _DATA
L344:
    db  ",",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L344 "
    mov     ax, L344
    jmp     L257
; case
; RPN'ized expression: "59 "
; Expanded expression: "59 "
; Expression value: 59
    jmp     L343
L342:
    cmp     ax, 59
    jne     L346
L343:
; return
; RPN'ized expression: "L348 "
; Expanded expression: "L348 "
; SEGMENT _TEXT
SEGMENT _DATA
L348:
    db  ";",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L348 "
    mov     ax, L348
    jmp     L257
; case
; RPN'ized expression: "58 "
; Expanded expression: "58 "
; Expression value: 58
    jmp     L347
L346:
    cmp     ax, 58
    jne     L350
L347:
; return
; RPN'ized expression: "L352 "
; Expanded expression: "L352 "
; SEGMENT _TEXT
SEGMENT _DATA
L352:
    db  ":",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L352 "
    mov     ax, L352
    jmp     L257
; case
; RPN'ized expression: "46 "
; Expanded expression: "46 "
; Expression value: 46
    jmp     L351
L350:
    cmp     ax, 46
    jne     L354
L351:
; return
; RPN'ized expression: "L356 "
; Expanded expression: "L356 "
; SEGMENT _TEXT
SEGMENT _DATA
L356:
    db  ".",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L356 "
    mov     ax, L356
    jmp     L257
; case
; RPN'ized expression: "63 "
; Expanded expression: "63 "
; Expression value: 63
    jmp     L355
L354:
    cmp     ax, 63
    jne     L358
L355:
; return
; RPN'ized expression: "L360 "
; Expanded expression: "L360 "
; SEGMENT _TEXT
SEGMENT _DATA
L360:
    db  "?",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L360 "
    mov     ax, L360
    jmp     L257
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L359
L358:
    cmp     ax, 4
    jne     L362
L359:
; return
; RPN'ized expression: "L364 "
; Expanded expression: "L364 "
; SEGMENT _TEXT
SEGMENT _DATA
L364:
    db  "<<",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L364 "
    mov     ax, L364
    jmp     L257
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L363
L362:
    cmp     ax, 5
    jne     L366
L363:
; return
; RPN'ized expression: "L368 "
; Expanded expression: "L368 "
; SEGMENT _TEXT
SEGMENT _DATA
L368:
    db  ">>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L368 "
    mov     ax, L368
    jmp     L257
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L367
L366:
    cmp     ax, 6
    jne     L370
L367:
; return
; RPN'ized expression: "L372 "
; Expanded expression: "L372 "
; SEGMENT _TEXT
SEGMENT _DATA
L372:
    db  "&&",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L372 "
    mov     ax, L372
    jmp     L257
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L371
L370:
    cmp     ax, 7
    jne     L374
L371:
; return
; RPN'ized expression: "L376 "
; Expanded expression: "L376 "
; SEGMENT _TEXT
SEGMENT _DATA
L376:
    db  "||",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L376 "
    mov     ax, L376
    jmp     L257
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L375
L374:
    cmp     ax, 8
    jne     L378
L375:
; return
; RPN'ized expression: "L380 "
; Expanded expression: "L380 "
; SEGMENT _TEXT
SEGMENT _DATA
L380:
    db  "==",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L380 "
    mov     ax, L380
    jmp     L257
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L379
L378:
    cmp     ax, 9
    jne     L382
L379:
; return
; RPN'ized expression: "L384 "
; Expanded expression: "L384 "
; SEGMENT _TEXT
SEGMENT _DATA
L384:
    db  "!=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L384 "
    mov     ax, L384
    jmp     L257
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L383
L382:
    cmp     ax, 10
    jne     L386
L383:
; return
; RPN'ized expression: "L388 "
; Expanded expression: "L388 "
; SEGMENT _TEXT
SEGMENT _DATA
L388:
    db  "<=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L388 "
    mov     ax, L388
    jmp     L257
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L387
L386:
    cmp     ax, 11
    jne     L390
L387:
; return
; RPN'ized expression: "L392 "
; Expanded expression: "L392 "
; SEGMENT _TEXT
SEGMENT _DATA
L392:
    db  ">=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L392 "
    mov     ax, L392
    jmp     L257
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L391
L390:
    cmp     ax, 12
    jne     L394
L391:
; return
; RPN'ized expression: "L396 "
; Expanded expression: "L396 "
; SEGMENT _TEXT
SEGMENT _DATA
L396:
    db  "++",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L396 "
    mov     ax, L396
    jmp     L257
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L395
L394:
    cmp     ax, 13
    jne     L398
L395:
; return
; RPN'ized expression: "L400 "
; Expanded expression: "L400 "
; SEGMENT _TEXT
SEGMENT _DATA
L400:
    db  "--",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L400 "
    mov     ax, L400
    jmp     L257
; case
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
    jmp     L399
L398:
    cmp     ax, 14
    jne     L402
L399:
; return
; RPN'ized expression: "L404 "
; Expanded expression: "L404 "
; SEGMENT _TEXT
SEGMENT _DATA
L404:
    db  "->",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L404 "
    mov     ax, L404
    jmp     L257
; case
; RPN'ized expression: "15 "
; Expanded expression: "15 "
; Expression value: 15
    jmp     L403
L402:
    cmp     ax, 15
    jne     L406
L403:
; return
; RPN'ized expression: "L408 "
; Expanded expression: "L408 "
; SEGMENT _TEXT
SEGMENT _DATA
L408:
    db  "...",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L408 "
    mov     ax, L408
    jmp     L257
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L407
L406:
    cmp     ax, 65
    jne     L410
L407:
; return
; RPN'ized expression: "L412 "
; Expanded expression: "L412 "
; SEGMENT _TEXT
SEGMENT _DATA
L412:
    db  "*=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L412 "
    mov     ax, L412
    jmp     L257
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L411
L410:
    cmp     ax, 66
    jne     L414
L411:
; return
; RPN'ized expression: "L416 "
; Expanded expression: "L416 "
; SEGMENT _TEXT
SEGMENT _DATA
L416:
    db  "/=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L416 "
    mov     ax, L416
    jmp     L257
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L415
L414:
    cmp     ax, 67
    jne     L418
L415:
; return
; RPN'ized expression: "L420 "
; Expanded expression: "L420 "
; SEGMENT _TEXT
SEGMENT _DATA
L420:
    db  "%=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L420 "
    mov     ax, L420
    jmp     L257
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L419
L418:
    cmp     ax, 68
    jne     L422
L419:
; return
; RPN'ized expression: "L424 "
; Expanded expression: "L424 "
; SEGMENT _TEXT
SEGMENT _DATA
L424:
    db  "+=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L424 "
    mov     ax, L424
    jmp     L257
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L423
L422:
    cmp     ax, 69
    jne     L426
L423:
; return
; RPN'ized expression: "L428 "
; Expanded expression: "L428 "
; SEGMENT _TEXT
SEGMENT _DATA
L428:
    db  "-=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L428 "
    mov     ax, L428
    jmp     L257
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L427
L426:
    cmp     ax, 70
    jne     L430
L427:
; return
; RPN'ized expression: "L432 "
; Expanded expression: "L432 "
; SEGMENT _TEXT
SEGMENT _DATA
L432:
    db  "<<=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L432 "
    mov     ax, L432
    jmp     L257
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L431
L430:
    cmp     ax, 71
    jne     L434
L431:
; return
; RPN'ized expression: "L436 "
; Expanded expression: "L436 "
; SEGMENT _TEXT
SEGMENT _DATA
L436:
    db  ">>=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L436 "
    mov     ax, L436
    jmp     L257
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L435
L434:
    cmp     ax, 72
    jne     L438
L435:
; return
; RPN'ized expression: "L440 "
; Expanded expression: "L440 "
; SEGMENT _TEXT
SEGMENT _DATA
L440:
    db  "&=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L440 "
    mov     ax, L440
    jmp     L257
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L439
L438:
    cmp     ax, 73
    jne     L442
L439:
; return
; RPN'ized expression: "L444 "
; Expanded expression: "L444 "
; SEGMENT _TEXT
SEGMENT _DATA
L444:
    db  "^=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L444 "
    mov     ax, L444
    jmp     L257
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L443
L442:
    cmp     ax, 74
    jne     L446
L443:
; return
; RPN'ized expression: "L448 "
; Expanded expression: "L448 "
; SEGMENT _TEXT
SEGMENT _DATA
L448:
    db  "|=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L448 "
    mov     ax, L448
    jmp     L257
; case
; RPN'ized expression: "77 "
; Expanded expression: "77 "
; Expression value: 77
    jmp     L447
L446:
    cmp     ax, 77
    jne     L450
L447:
; return
; RPN'ized expression: "L452 "
; Expanded expression: "L452 "
; SEGMENT _TEXT
SEGMENT _DATA
L452:
    db  "&u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L452 "
    mov     ax, L452
    jmp     L257
; case
; RPN'ized expression: "78 "
; Expanded expression: "78 "
; Expression value: 78
    jmp     L451
L450:
    cmp     ax, 78
    jne     L454
L451:
; return
; RPN'ized expression: "L456 "
; Expanded expression: "L456 "
; SEGMENT _TEXT
SEGMENT _DATA
L456:
    db  "*u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L456 "
    mov     ax, L456
    jmp     L257
; case
; RPN'ized expression: "79 "
; Expanded expression: "79 "
; Expression value: 79
    jmp     L455
L454:
    cmp     ax, 79
    jne     L458
L455:
; return
; RPN'ized expression: "L460 "
; Expanded expression: "L460 "
; SEGMENT _TEXT
SEGMENT _DATA
L460:
    db  "+u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L460 "
    mov     ax, L460
    jmp     L257
; case
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
    jmp     L459
L458:
    cmp     ax, 80
    jne     L462
L459:
; return
; RPN'ized expression: "L464 "
; Expanded expression: "L464 "
; SEGMENT _TEXT
SEGMENT _DATA
L464:
    db  "-u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L464 "
    mov     ax, L464
    jmp     L257
; case
; RPN'ized expression: "81 "
; Expanded expression: "81 "
; Expression value: 81
    jmp     L463
L462:
    cmp     ax, 81
    jne     L466
L463:
; return
; RPN'ized expression: "L468 "
; Expanded expression: "L468 "
; SEGMENT _TEXT
SEGMENT _DATA
L468:
    db  "++p",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L468 "
    mov     ax, L468
    jmp     L257
; case
; RPN'ized expression: "82 "
; Expanded expression: "82 "
; Expression value: 82
    jmp     L467
L466:
    cmp     ax, 82
    jne     L470
L467:
; return
; RPN'ized expression: "L472 "
; Expanded expression: "L472 "
; SEGMENT _TEXT
SEGMENT _DATA
L472:
    db  "--p",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L472 "
    mov     ax, L472
    jmp     L257
; case
; RPN'ized expression: "83 "
; Expanded expression: "83 "
; Expression value: 83
    jmp     L471
L470:
    cmp     ax, 83
    jne     L474
L471:
; return
; RPN'ized expression: "L476 "
; Expanded expression: "L476 "
; SEGMENT _TEXT
SEGMENT _DATA
L476:
    db  "+=p",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L476 "
    mov     ax, L476
    jmp     L257
; case
; RPN'ized expression: "84 "
; Expanded expression: "84 "
; Expression value: 84
    jmp     L475
L474:
    cmp     ax, 84
    jne     L478
L475:
; return
; RPN'ized expression: "L480 "
; Expanded expression: "L480 "
; SEGMENT _TEXT
SEGMENT _DATA
L480:
    db  "-=p",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L480 "
    mov     ax, L480
    jmp     L257
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L479
L478:
    cmp     ax, 85
    jne     L482
L479:
; return
; RPN'ized expression: "L484 "
; Expanded expression: "L484 "
; SEGMENT _TEXT
SEGMENT _DATA
L484:
    db  "<u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L484 "
    mov     ax, L484
    jmp     L257
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L483
L482:
    cmp     ax, 86
    jne     L486
L483:
; return
; RPN'ized expression: "L488 "
; Expanded expression: "L488 "
; SEGMENT _TEXT
SEGMENT _DATA
L488:
    db  ">u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L488 "
    mov     ax, L488
    jmp     L257
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L487
L486:
    cmp     ax, 87
    jne     L490
L487:
; return
; RPN'ized expression: "L492 "
; Expanded expression: "L492 "
; SEGMENT _TEXT
SEGMENT _DATA
L492:
    db  "<=u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L492 "
    mov     ax, L492
    jmp     L257
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L491
L490:
    cmp     ax, 88
    jne     L494
L491:
; return
; RPN'ized expression: "L496 "
; Expanded expression: "L496 "
; SEGMENT _TEXT
SEGMENT _DATA
L496:
    db  ">=u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L496 "
    mov     ax, L496
    jmp     L257
; case
; RPN'ized expression: "17 "
; Expanded expression: "17 "
; Expression value: 17
    jmp     L495
L494:
    cmp     ax, 17
    jne     L498
L495:
; return
; RPN'ized expression: "L500 "
; Expanded expression: "L500 "
; SEGMENT _TEXT
SEGMENT _DATA
L500:
    db  "void",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L500 "
    mov     ax, L500
    jmp     L257
; case
; RPN'ized expression: "18 "
; Expanded expression: "18 "
; Expression value: 18
    jmp     L499
L498:
    cmp     ax, 18
    jne     L502
L499:
; return
; RPN'ized expression: "L504 "
; Expanded expression: "L504 "
; SEGMENT _TEXT
SEGMENT _DATA
L504:
    db  "char",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L504 "
    mov     ax, L504
    jmp     L257
; case
; RPN'ized expression: "19 "
; Expanded expression: "19 "
; Expression value: 19
    jmp     L503
L502:
    cmp     ax, 19
    jne     L506
L503:
; return
; RPN'ized expression: "L508 "
; Expanded expression: "L508 "
; SEGMENT _TEXT
SEGMENT _DATA
L508:
    db  "int",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L508 "
    mov     ax, L508
    jmp     L257
; case
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
    jmp     L507
L506:
    cmp     ax, 20
    jne     L510
L507:
; return
; RPN'ized expression: "L512 "
; Expanded expression: "L512 "
; SEGMENT _TEXT
SEGMENT _DATA
L512:
    db  "return",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L512 "
    mov     ax, L512
    jmp     L257
; case
; RPN'ized expression: "21 "
; Expanded expression: "21 "
; Expression value: 21
    jmp     L511
L510:
    cmp     ax, 21
    jne     L514
L511:
; return
; RPN'ized expression: "L516 "
; Expanded expression: "L516 "
; SEGMENT _TEXT
SEGMENT _DATA
L516:
    db  "goto",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L516 "
    mov     ax, L516
    jmp     L257
; case
; RPN'ized expression: "22 "
; Expanded expression: "22 "
; Expression value: 22
    jmp     L515
L514:
    cmp     ax, 22
    jne     L518
L515:
; return
; RPN'ized expression: "L520 "
; Expanded expression: "L520 "
; SEGMENT _TEXT
SEGMENT _DATA
L520:
    db  "if",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L520 "
    mov     ax, L520
    jmp     L257
; case
; RPN'ized expression: "23 "
; Expanded expression: "23 "
; Expression value: 23
    jmp     L519
L518:
    cmp     ax, 23
    jne     L522
L519:
; return
; RPN'ized expression: "L524 "
; Expanded expression: "L524 "
; SEGMENT _TEXT
SEGMENT _DATA
L524:
    db  "else",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L524 "
    mov     ax, L524
    jmp     L257
; case
; RPN'ized expression: "24 "
; Expanded expression: "24 "
; Expression value: 24
    jmp     L523
L522:
    cmp     ax, 24
    jne     L526
L523:
; return
; RPN'ized expression: "L528 "
; Expanded expression: "L528 "
; SEGMENT _TEXT
SEGMENT _DATA
L528:
    db  "while",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L528 "
    mov     ax, L528
    jmp     L257
; case
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
    jmp     L527
L526:
    cmp     ax, 25
    jne     L530
L527:
; return
; RPN'ized expression: "L532 "
; Expanded expression: "L532 "
; SEGMENT _TEXT
SEGMENT _DATA
L532:
    db  "continue",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L532 "
    mov     ax, L532
    jmp     L257
; case
; RPN'ized expression: "26 "
; Expanded expression: "26 "
; Expression value: 26
    jmp     L531
L530:
    cmp     ax, 26
    jne     L534
L531:
; return
; RPN'ized expression: "L536 "
; Expanded expression: "L536 "
; SEGMENT _TEXT
SEGMENT _DATA
L536:
    db  "break",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L536 "
    mov     ax, L536
    jmp     L257
; case
; RPN'ized expression: "27 "
; Expanded expression: "27 "
; Expression value: 27
    jmp     L535
L534:
    cmp     ax, 27
    jne     L538
L535:
; return
; RPN'ized expression: "L540 "
; Expanded expression: "L540 "
; SEGMENT _TEXT
SEGMENT _DATA
L540:
    db  "sizeof",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L540 "
    mov     ax, L540
    jmp     L257
; case
; RPN'ized expression: "97 "
; Expanded expression: "97 "
; Expression value: 97
    jmp     L539
L538:
    cmp     ax, 97
    jne     L542
L539:
; return
; RPN'ized expression: "L544 "
; Expanded expression: "L544 "
; SEGMENT _TEXT
SEGMENT _DATA
L544:
    db  "float",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L544 "
    mov     ax, L544
    jmp     L257
; case
; RPN'ized expression: "98 "
; Expanded expression: "98 "
; Expression value: 98
    jmp     L543
L542:
    cmp     ax, 98
    jne     L546
L543:
; return
; RPN'ized expression: "L548 "
; Expanded expression: "L548 "
; SEGMENT _TEXT
SEGMENT _DATA
L548:
    db  "double",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L548 "
    mov     ax, L548
    jmp     L257
; case
; RPN'ized expression: "99 "
; Expanded expression: "99 "
; Expression value: 99
    jmp     L547
L546:
    cmp     ax, 99
    jne     L550
L547:
; return
; RPN'ized expression: "L552 "
; Expanded expression: "L552 "
; SEGMENT _TEXT
SEGMENT _DATA
L552:
    db  "long",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L552 "
    mov     ax, L552
    jmp     L257
; case
; RPN'ized expression: "100 "
; Expanded expression: "100 "
; Expression value: 100
    jmp     L551
L550:
    cmp     ax, 100
    jne     L554
L551:
; return
; RPN'ized expression: "L556 "
; Expanded expression: "L556 "
; SEGMENT _TEXT
SEGMENT _DATA
L556:
    db  "short",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L556 "
    mov     ax, L556
    jmp     L257
; case
; RPN'ized expression: "101 "
; Expanded expression: "101 "
; Expression value: 101
    jmp     L555
L554:
    cmp     ax, 101
    jne     L558
L555:
; return
; RPN'ized expression: "L560 "
; Expanded expression: "L560 "
; SEGMENT _TEXT
SEGMENT _DATA
L560:
    db  "unsigned",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L560 "
    mov     ax, L560
    jmp     L257
; case
; RPN'ized expression: "102 "
; Expanded expression: "102 "
; Expression value: 102
    jmp     L559
L558:
    cmp     ax, 102
    jne     L562
L559:
; return
; RPN'ized expression: "L564 "
; Expanded expression: "L564 "
; SEGMENT _TEXT
SEGMENT _DATA
L564:
    db  "signed",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L564 "
    mov     ax, L564
    jmp     L257
; case
; RPN'ized expression: "103 "
; Expanded expression: "103 "
; Expression value: 103
    jmp     L563
L562:
    cmp     ax, 103
    jne     L566
L563:
; return
; RPN'ized expression: "L568 "
; Expanded expression: "L568 "
; SEGMENT _TEXT
SEGMENT _DATA
L568:
    db  "const",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L568 "
    mov     ax, L568
    jmp     L257
; case
; RPN'ized expression: "104 "
; Expanded expression: "104 "
; Expression value: 104
    jmp     L567
L566:
    cmp     ax, 104
    jne     L570
L567:
; return
; RPN'ized expression: "L572 "
; Expanded expression: "L572 "
; SEGMENT _TEXT
SEGMENT _DATA
L572:
    db  "volatile",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L572 "
    mov     ax, L572
    jmp     L257
; case
; RPN'ized expression: "105 "
; Expanded expression: "105 "
; Expression value: 105
    jmp     L571
L570:
    cmp     ax, 105
    jne     L574
L571:
; return
; RPN'ized expression: "L576 "
; Expanded expression: "L576 "
; SEGMENT _TEXT
SEGMENT _DATA
L576:
    db  "restrict",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L576 "
    mov     ax, L576
    jmp     L257
; case
; RPN'ized expression: "106 "
; Expanded expression: "106 "
; Expression value: 106
    jmp     L575
L574:
    cmp     ax, 106
    jne     L578
L575:
; return
; RPN'ized expression: "L580 "
; Expanded expression: "L580 "
; SEGMENT _TEXT
SEGMENT _DATA
L580:
    db  "static",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L580 "
    mov     ax, L580
    jmp     L257
; case
; RPN'ized expression: "107 "
; Expanded expression: "107 "
; Expression value: 107
    jmp     L579
L578:
    cmp     ax, 107
    jne     L582
L579:
; return
; RPN'ized expression: "L584 "
; Expanded expression: "L584 "
; SEGMENT _TEXT
SEGMENT _DATA
L584:
    db  "inline",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L584 "
    mov     ax, L584
    jmp     L257
; case
; RPN'ized expression: "108 "
; Expanded expression: "108 "
; Expression value: 108
    jmp     L583
L582:
    cmp     ax, 108
    jne     L586
L583:
; return
; RPN'ized expression: "L588 "
; Expanded expression: "L588 "
; SEGMENT _TEXT
SEGMENT _DATA
L588:
    db  "extern",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L588 "
    mov     ax, L588
    jmp     L257
; case
; RPN'ized expression: "109 "
; Expanded expression: "109 "
; Expression value: 109
    jmp     L587
L586:
    cmp     ax, 109
    jne     L590
L587:
; return
; RPN'ized expression: "L592 "
; Expanded expression: "L592 "
; SEGMENT _TEXT
SEGMENT _DATA
L592:
    db  "auto",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L592 "
    mov     ax, L592
    jmp     L257
; case
; RPN'ized expression: "110 "
; Expanded expression: "110 "
; Expression value: 110
    jmp     L591
L590:
    cmp     ax, 110
    jne     L594
L591:
; return
; RPN'ized expression: "L596 "
; Expanded expression: "L596 "
; SEGMENT _TEXT
SEGMENT _DATA
L596:
    db  "register",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L596 "
    mov     ax, L596
    jmp     L257
; case
; RPN'ized expression: "111 "
; Expanded expression: "111 "
; Expression value: 111
    jmp     L595
L594:
    cmp     ax, 111
    jne     L598
L595:
; return
; RPN'ized expression: "L600 "
; Expanded expression: "L600 "
; SEGMENT _TEXT
SEGMENT _DATA
L600:
    db  "typedef",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L600 "
    mov     ax, L600
    jmp     L257
; case
; RPN'ized expression: "112 "
; Expanded expression: "112 "
; Expression value: 112
    jmp     L599
L598:
    cmp     ax, 112
    jne     L602
L599:
; return
; RPN'ized expression: "L604 "
; Expanded expression: "L604 "
; SEGMENT _TEXT
SEGMENT _DATA
L604:
    db  "enum",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L604 "
    mov     ax, L604
    jmp     L257
; case
; RPN'ized expression: "113 "
; Expanded expression: "113 "
; Expression value: 113
    jmp     L603
L602:
    cmp     ax, 113
    jne     L606
L603:
; return
; RPN'ized expression: "L608 "
; Expanded expression: "L608 "
; SEGMENT _TEXT
SEGMENT _DATA
L608:
    db  "struct",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L608 "
    mov     ax, L608
    jmp     L257
; case
; RPN'ized expression: "114 "
; Expanded expression: "114 "
; Expression value: 114
    jmp     L607
L606:
    cmp     ax, 114
    jne     L610
L607:
; return
; RPN'ized expression: "L612 "
; Expanded expression: "L612 "
; SEGMENT _TEXT
SEGMENT _DATA
L612:
    db  "union",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L612 "
    mov     ax, L612
    jmp     L257
; case
; RPN'ized expression: "115 "
; Expanded expression: "115 "
; Expression value: 115
    jmp     L611
L610:
    cmp     ax, 115
    jne     L614
L611:
; return
; RPN'ized expression: "L616 "
; Expanded expression: "L616 "
; SEGMENT _TEXT
SEGMENT _DATA
L616:
    db  "do",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L616 "
    mov     ax, L616
    jmp     L257
; case
; RPN'ized expression: "116 "
; Expanded expression: "116 "
; Expression value: 116
    jmp     L615
L614:
    cmp     ax, 116
    jne     L618
L615:
; return
; RPN'ized expression: "L620 "
; Expanded expression: "L620 "
; SEGMENT _TEXT
SEGMENT _DATA
L620:
    db  "for",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L620 "
    mov     ax, L620
    jmp     L257
; case
; RPN'ized expression: "117 "
; Expanded expression: "117 "
; Expression value: 117
    jmp     L619
L618:
    cmp     ax, 117
    jne     L622
L619:
; return
; RPN'ized expression: "L624 "
; Expanded expression: "L624 "
; SEGMENT _TEXT
SEGMENT _DATA
L624:
    db  "switch",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L624 "
    mov     ax, L624
    jmp     L257
; case
; RPN'ized expression: "118 "
; Expanded expression: "118 "
; Expression value: 118
    jmp     L623
L622:
    cmp     ax, 118
    jne     L626
L623:
; return
; RPN'ized expression: "L628 "
; Expanded expression: "L628 "
; SEGMENT _TEXT
SEGMENT _DATA
L628:
    db  "case",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L628 "
    mov     ax, L628
    jmp     L257
; case
; RPN'ized expression: "119 "
; Expanded expression: "119 "
; Expression value: 119
    jmp     L627
L626:
    cmp     ax, 119
    jne     L630
L627:
; return
; RPN'ized expression: "L632 "
; Expanded expression: "L632 "
; SEGMENT _TEXT
SEGMENT _DATA
L632:
    db  "default",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L632 "
    mov     ax, L632
    jmp     L257
; case
; RPN'ized expression: "120 "
; Expanded expression: "120 "
; Expression value: 120
    jmp     L631
L630:
    cmp     ax, 120
    jne     L634
L631:
; return
; RPN'ized expression: "L636 "
; Expanded expression: "L636 "
; SEGMENT _TEXT
SEGMENT _DATA
L636:
    db  "_Bool",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L636 "
    mov     ax, L636
    jmp     L257
; case
; RPN'ized expression: "121 "
; Expanded expression: "121 "
; Expression value: 121
    jmp     L635
L634:
    cmp     ax, 121
    jne     L638
L635:
; return
; RPN'ized expression: "L640 "
; Expanded expression: "L640 "
; SEGMENT _TEXT
SEGMENT _DATA
L640:
    db  "_Complex",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L640 "
    mov     ax, L640
    jmp     L257
; case
; RPN'ized expression: "122 "
; Expanded expression: "122 "
; Expression value: 122
    jmp     L639
L638:
    cmp     ax, 122
    jne     L642
L639:
; return
; RPN'ized expression: "L644 "
; Expanded expression: "L644 "
; SEGMENT _TEXT
SEGMENT _DATA
L644:
    db  "_Imaginary",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L644 "
    mov     ax, L644
    jmp     L257
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L643
L642:
    cmp     ax, 1
    jne     L646
L643:
; return
; RPN'ized expression: "L648 "
; Expanded expression: "L648 "
; SEGMENT _TEXT
SEGMENT _DATA
L648:
    db  "<Num>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L648 "
    mov     ax, L648
    jmp     L257
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L647
L646:
    cmp     ax, 2
    jne     L650
L647:
; return
; RPN'ized expression: "L652 "
; Expanded expression: "L652 "
; SEGMENT _TEXT
SEGMENT _DATA
L652:
    db  "<LitChar>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L652 "
    mov     ax, L652
    jmp     L257
; case
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
    jmp     L651
L650:
    cmp     ax, 3
    jne     L654
L651:
; return
; RPN'ized expression: "L656 "
; Expanded expression: "L656 "
; SEGMENT _TEXT
SEGMENT _DATA
L656:
    db  "<LitStr>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L656 "
    mov     ax, L656
    jmp     L257
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L655
L654:
    cmp     ax, 16
    jne     L658
L655:
; return
; RPN'ized expression: "L660 "
; Expanded expression: "L660 "
; SEGMENT _TEXT
SEGMENT _DATA
L660:
    db  "<Ident>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L660 "
    mov     ax, L660
    jmp     L257
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L659
L658:
    cmp     ax, 89
    jne     L662
L659:
; return
; RPN'ized expression: "L664 "
; Expanded expression: "L664 "
; SEGMENT _TEXT
SEGMENT _DATA
L664:
    db  "<LocalOfs>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L664 "
    mov     ax, L664
    jmp     L257
; case
; RPN'ized expression: "90 "
; Expanded expression: "90 "
; Expression value: 90
    jmp     L663
L662:
    cmp     ax, 90
    jne     L666
L663:
; return
; RPN'ized expression: "L668 "
; Expanded expression: "L668 "
; SEGMENT _TEXT
SEGMENT _DATA
L668:
    db  "<ShortCirc>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L668 "
    mov     ax, L668
    jmp     L257
; }
    jmp     L258
L666:
L258:
; RPN'ized expression: "( token , L670 error ) "
; Expanded expression: " (@4) *(2)  L670  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L670:
    db  "Internal Error: GetTokenName(): Invalid token %d",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L670 , error )4 "
    push    word [bp+4]
    push    L670
    call    _error
    sub     sp, -4
; return
; RPN'ized expression: "L672 "
; Expanded expression: "L672 "
; SEGMENT _TEXT
SEGMENT _DATA
L672:
    db  0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "L672 "
    mov     ax, L672
    jmp     L257
L257:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenValueInt : (void) int
SEGMENT _TEXT
    global  _GetTokenValueInt
_GetTokenValueInt:
    push    bp
    mov     bp, sp
; return
; RPN'ized expression: "TokenValueInt "
; Expanded expression: "TokenValueInt *(2) "
; Fused expression:    "*(2) TokenValueInt "
    mov     ax, [_TokenValueInt]
    jmp     L674
L674:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenValueString : (void) * char
SEGMENT _TEXT
    global  _GetTokenValueString
_GetTokenValueString:
    push    bp
    mov     bp, sp
; return
; RPN'ized expression: "TokenValueString "
; Expanded expression: "TokenValueString "
; Fused expression:    "TokenValueString "
    mov     ax, _TokenValueString
    jmp     L675
L675:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenValueStringLength : (void) int
SEGMENT _TEXT
    global  _GetTokenValueStringLength
_GetTokenValueStringLength:
    push    bp
    mov     bp, sp
; return
; RPN'ized expression: "TokenStringLen "
; Expanded expression: "TokenStringLen *(2) "
; Fused expression:    "*(2) TokenStringLen "
    mov     ax, [_TokenStringLen]
    jmp     L676
L676:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenIdentName : (void) * char
SEGMENT _TEXT
    global  _GetTokenIdentName
_GetTokenIdentName:
    push    bp
    mov     bp, sp
; return
; RPN'ized expression: "TokenIdentName "
; Expanded expression: "TokenIdentName "
; Fused expression:    "TokenIdentName "
    mov     ax, _TokenIdentName
    jmp     L677
L677:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenFileName : (void) * char
SEGMENT _TEXT
    global  _GetTokenFileName
_GetTokenFileName:
    push    bp
    mov     bp, sp
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L678
L678:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenFileLineNo : (void) int
SEGMENT _TEXT
    global  _GetTokenFileLineNo
_GetTokenFileLineNo:
    push    bp
    mov     bp, sp
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L679
L679:
    leave
    ret
; SEGMENT _TEXT
; glb GetTokenFileLinePos : (void) int
SEGMENT _TEXT
    global  _GetTokenFileLinePos
_GetTokenFileLinePos:
    push    bp
    mov     bp, sp
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L680
L680:
    leave
    ret
; SEGMENT _TEXT
; glb ShiftChar : (void) void
; glb GetNextChar : (void) int
SEGMENT _TEXT
    global  _GetNextChar
_GetNextChar:
    push    bp
    mov     bp, sp
; loc     ch : (@-2): int
    sub     sp, 2
; if
; RPN'ized expression: "CurFile 0 == "
; Expanded expression: "CurFile *(2) 0 == "
; Fused expression:    "== *CurFile 0 IF! "
    mov     ax, [_CurFile]
    cmp     ax, 0
    jne     L682
; {
; if
; RPN'ized expression: "CurFile ( L686 , CurFileName fopen ) = 0 == "
; Expanded expression: "CurFile  L686  CurFileName *(2)  fopen ()4 =(2) 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L686:
    db  "rt",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L686 , *(2) CurFileName , fopen )4 =(34) *CurFile ax == ax 0 IF! "
    push    L686
    push    word [_CurFileName]
    call    _fopen
    sub     sp, -4
    mov     [_CurFile], ax
    cmp     ax, 0
    jne     L684
; RPN'ized expression: "( CurFileName , L688 error ) "
; Expanded expression: " CurFileName *(2)  L688  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L688:
    db  "Cannot open file ",34,"%s",34,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) CurFileName , L688 , error )4 "
    push    word [_CurFileName]
    push    L688
    call    _error
    sub     sp, -4
L684:
; }
L682:
; if
; RPN'ized expression: "ch ( CurFile fgetc ) = 1 -u == "
; Expanded expression: "(@-2)  CurFile *(2)  fgetc ()2 =(2) -1 == "
; Fused expression:    "( *(2) CurFile , fgetc )2 =(34) *(@-2) ax == ax -1 IF! "
    push    word [_CurFile]
    call    _fgetc
    sub     sp, -2
    mov     [bp-2], ax
    cmp     ax, -1
    jne     L690
; {
; RPN'ized expression: "( CurFile fclose ) "
; Expanded expression: " CurFile *(2)  fclose ()2 "
; Fused expression:    "( *(2) CurFile , fclose )2 "
    push    word [_CurFile]
    call    _fclose
    sub     sp, -2
; RPN'ized expression: "CurFile 0 = "
; Expanded expression: "CurFile 0 =(2) "
; Fused expression:    "=(34) *CurFile 0 "
    mov     ax, 0
    mov     [_CurFile], ax
; }
L690:
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L681
L681:
    leave
    ret
; SEGMENT _TEXT
; glb ShiftChar : (void) void
SEGMENT _TEXT
    global  _ShiftChar
_ShiftChar:
    push    bp
    mov     bp, sp
; loc     eof : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
; if
; RPN'ized expression: "CharQueueLen "
; Expanded expression: "CharQueueLen *(2) "
; Fused expression:    "*(2) CharQueueLen "
    mov     ax, [_CharQueueLen]
; JumpIfZero
    test    ax, ax
    je      L693
; {
; RPN'ized expression: "( CharQueueLen -- , CharQueue 1 + , CharQueue memmove ) "
; Expanded expression: " CharQueueLen --(2)  CharQueue 1 +  CharQueue  memmove ()6 "
; Fused expression:    "( --(2) *CharQueueLen , + CharQueue 1 , CharQueue , memmove )6 "
    dec     word [_CharQueueLen]
    mov     ax, [_CharQueueLen]
    push    ax
    mov     ax, _CharQueue
    add     ax, 1
    push    ax
    push    _CharQueue
    call    _memmove
    sub     sp, -6
; RPN'ized expression: "eof CharQueue CharQueueLen + *u 0 == = "
; Expanded expression: "(@-2) CharQueue CharQueueLen *(2) + *(1) 0 == =(2) "
; Fused expression:    "+ CharQueue *CharQueueLen == *ax 0 =(34) *(@-2) ax "
    mov     ax, _CharQueue
    add     ax, [_CharQueueLen]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 0
    sete    al
    cbw
    mov     [bp-2], ax
; }
L693:
; while
; RPN'ized expression: "CharQueueLen 4 < "
; Expanded expression: "CharQueueLen *(2) 4 < "
L695:
; Fused expression:    "< *CharQueueLen 4 IF! "
    mov     ax, [_CharQueueLen]
    cmp     ax, 4
    jge     L696
; {
; if
; RPN'ized expression: "eof 0 == "
; Expanded expression: "(@-2) *(2) 0 == "
; Fused expression:    "== *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jne     L697
; {
; loc             ch : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "( GetNextChar ) "
; Expanded expression: " GetNextChar ()0 "
; Fused expression:    "( GetNextChar )0 =(34) *(@-4) ax "
    call    _GetNextChar
    mov     [bp-4], ax
; RPN'ized expression: "CharQueue CharQueueLen + *u ch = "
; Expanded expression: "CharQueue CharQueueLen *(2) + (@-4) *(2) =(1) "
; Fused expression:    "+ CharQueue *CharQueueLen =(18) *ax *(@-4) "
    mov     ax, _CharQueue
    add     ax, [_CharQueueLen]
    mov     bx, ax
    mov     ax, [bp-4]
    mov     [bx], al
    cbw
; RPN'ized expression: "eof ch 1 -u == = "
; Expanded expression: "(@-2) (@-4) *(2) -1 == =(2) "
; Fused expression:    "== *(@-4) -1 =(34) *(@-2) ax "
    mov     ax, [bp-4]
    cmp     ax, -1
    sete    al
    cbw
    mov     [bp-2], ax
    sub     sp, -2
; }
L697:
; if
; RPN'ized expression: "eof "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L699
; RPN'ized expression: "CharQueue CharQueueLen + *u 0 = "
; Expanded expression: "CharQueue CharQueueLen *(2) + 0 =(1) "
; Fused expression:    "+ CharQueue *CharQueueLen =(18) *ax 0 "
    mov     ax, _CharQueue
    add     ax, [_CharQueueLen]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], al
    cbw
L699:
; RPN'ized expression: "CharQueueLen ++p "
; Expanded expression: "CharQueueLen ++p(2) "
; Fused expression:    "++p(2) *CharQueueLen "
    mov     ax, [_CharQueueLen]
    inc     word [_CharQueueLen]
; }
    jmp     L695
L696:
L692:
    leave
    ret
; SEGMENT _TEXT
; glb ShiftCharN : (
; prm     n : int
;     ) void
SEGMENT _TEXT
    global  _ShiftCharN
_ShiftCharN:
    push    bp
    mov     bp, sp
; loc     n : (@4): int
; while
; RPN'ized expression: "n --p 0 > "
; Expanded expression: "(@4) --p(2) 0 > "
L702:
; Fused expression:    "--p(2) *(@4) > ax 0 IF! "
    mov     ax, [bp+4]
    dec     word [bp+4]
    cmp     ax, 0
    jle     L703
; {
; RPN'ized expression: "( ShiftChar ) "
; Expanded expression: " ShiftChar ()0 "
; Fused expression:    "( ShiftChar )0 "
    call    _ShiftChar
; RPN'ized expression: "LinePos ++p "
; Expanded expression: "LinePos ++p(2) "
; Fused expression:    "++p(2) *LinePos "
    mov     ax, [_LinePos]
    inc     word [_LinePos]
; }
    jmp     L702
L703:
L701:
    leave
    ret
; SEGMENT _TEXT
; glb SkipSpace : (
; prm     SkipNewLines : int
;     ) void
SEGMENT _TEXT
    global  _SkipSpace
_SkipSpace:
    push    bp
    mov     bp, sp
; loc     SkipNewLines : (@4): int
; loc     p : (@-2): * char
    sub     sp, 2
; =
; RPN'ized expression: "CharQueue "
; Expanded expression: "CharQueue "
; Fused expression:    "=(34) *(@-2) CharQueue "
    mov     ax, _CharQueue
    mov     [bp-2], ax
; while
; RPN'ized expression: "p *u 0 != "
; Expanded expression: "(@-2) *(2) *(1) 0 != "
L705:
; Fused expression:    "*(2) (@-2) != *ax 0 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 0
    je      L706
; {
; if
; RPN'ized expression: "( p *u , L709 strchr ) 0 != "
; Expanded expression: " (@-2) *(2) *(1)  L709  strchr ()4 0 != "
; SEGMENT _TEXT
SEGMENT _DATA
L709:
    db  " ",9,12,11,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-2) *(1) ax , L709 , strchr )4 != ax 0 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L709
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    je      L707
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; continue
    jmp     L705
; }
L707:
; if
; RPN'ized expression: "( p *u , L713 strchr ) "
; Expanded expression: " (@-2) *(2) *(1)  L713  strchr ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L713:
    db  13,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-2) *(1) ax , L713 , strchr )4 "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L713
    call    _strchr
    sub     sp, -4
; JumpIfZero
    test    ax, ax
    je      L711
; {
; if
; RPN'ized expression: "SkipNewLines 0 == "
; Expanded expression: "(@4) *(2) 0 == "
; Fused expression:    "== *(@4) 0 IF! "
    mov     ax, [bp+4]
    cmp     ax, 0
    jne     L715
; return
    jmp     L704
L715:
; if
; RPN'ized expression: "p *u 13 == p 1 + *u 10 == && "
; Expanded expression: "(@-2) *(2) *(1) 13 == _Bool [sh&&->719] (@-2) *(2) 1 + *(1) 10 == _Bool &&[719] "
; Fused expression:    "*(2) (@-2) == *ax 13 _Bool [sh&&->719] + *(@-2) 1 == *ax 10 _Bool &&[719] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 13
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L719
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 10
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L719:
; JumpIfZero
    test    ax, ax
    je      L717
; RPN'ized expression: "( ShiftChar ) "
; Expanded expression: " ShiftChar ()0 "
; Fused expression:    "( ShiftChar )0 "
    call    _ShiftChar
L717:
; RPN'ized expression: "( ShiftChar ) "
; Expanded expression: " ShiftChar ()0 "
; Fused expression:    "( ShiftChar )0 "
    call    _ShiftChar
; RPN'ized expression: "LineNo ++p "
; Expanded expression: "LineNo ++p(2) "
; Fused expression:    "++p(2) *LineNo "
    mov     ax, [_LineNo]
    inc     word [_LineNo]
; RPN'ized expression: "LinePos 1 = "
; Expanded expression: "LinePos 1 =(2) "
; Fused expression:    "=(34) *LinePos 1 "
    mov     ax, 1
    mov     [_LinePos], ax
; continue
    jmp     L705
; }
L711:
; if
; RPN'ized expression: "p *u 47 == "
; Expanded expression: "(@-2) *(2) *(1) 47 == "
; Fused expression:    "*(2) (@-2) == *ax 47 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 47
    jne     L720
; {
; if
; RPN'ized expression: "p 1 + *u 47 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 47 == "
; Fused expression:    "+ *(@-2) 1 == *ax 47 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 47
    jne     L722
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; while
; RPN'ized expression: "( p *u , L726 strchr ) 0 == "
; Expanded expression: " (@-2) *(2) *(1)  L726  strchr ()4 0 == "
L724:
; SEGMENT _TEXT
SEGMENT _DATA
L726:
    db  13,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-2) *(1) ax , L726 , strchr )4 == ax 0 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L726
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    jne     L725
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
    jmp     L724
L725:
; continue
    jmp     L705
; }
    jmp     L723
L722:
; else
; if
; RPN'ized expression: "p 1 + *u 42 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 42 == "
; Fused expression:    "+ *(@-2) 1 == *ax 42 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 42
    jne     L728
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; while
; RPN'ized expression: "p *u 0 != p *u 42 == p 1 + *u 47 == && 0 == && "
; Expanded expression: "(@-2) *(2) *(1) 0 != _Bool [sh&&->732] (@-2) *(2) *(1) 42 == _Bool [sh&&->733] (@-2) *(2) 1 + *(1) 47 == _Bool &&[733] 0 == _Bool &&[732] "
L730:
; Fused expression:    "*(2) (@-2) != *ax 0 _Bool [sh&&->732] *(2) (@-2) == *ax 42 _Bool [sh&&->733] + *(@-2) 1 == *ax 47 _Bool &&[733] == ax 0 _Bool &&[732] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 0
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L732
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 42
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L733
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 47
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L733:
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L732:
; JumpIfZero
    test    ax, ax
    je      L731
; {
; if
; RPN'ized expression: "( p *u , L736 strchr ) "
; Expanded expression: " (@-2) *(2) *(1)  L736  strchr ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L736:
    db  13,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-2) *(1) ax , L736 , strchr )4 "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L736
    call    _strchr
    sub     sp, -4
; JumpIfZero
    test    ax, ax
    je      L734
; {
; if
; RPN'ized expression: "SkipNewLines 0 == "
; Expanded expression: "(@4) *(2) 0 == "
; Fused expression:    "== *(@4) 0 IF! "
    mov     ax, [bp+4]
    cmp     ax, 0
    jne     L738
; RPN'ized expression: "( L740 error ) "
; Expanded expression: " L740  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L740:
    db  "Error: Invalid comment",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L740 , error )2 "
    push    L740
    call    _error
    sub     sp, -2
L738:
; if
; RPN'ized expression: "p *u 13 == p 1 + *u 10 == && "
; Expanded expression: "(@-2) *(2) *(1) 13 == _Bool [sh&&->744] (@-2) *(2) 1 + *(1) 10 == _Bool &&[744] "
; Fused expression:    "*(2) (@-2) == *ax 13 _Bool [sh&&->744] + *(@-2) 1 == *ax 10 _Bool &&[744] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 13
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L744
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 10
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L744:
; JumpIfZero
    test    ax, ax
    je      L742
; RPN'ized expression: "( ShiftChar ) "
; Expanded expression: " ShiftChar ()0 "
; Fused expression:    "( ShiftChar )0 "
    call    _ShiftChar
L742:
; RPN'ized expression: "( ShiftChar ) "
; Expanded expression: " ShiftChar ()0 "
; Fused expression:    "( ShiftChar )0 "
    call    _ShiftChar
; RPN'ized expression: "LineNo ++p "
; Expanded expression: "LineNo ++p(2) "
; Fused expression:    "++p(2) *LineNo "
    mov     ax, [_LineNo]
    inc     word [_LineNo]
; RPN'ized expression: "LinePos 1 = "
; Expanded expression: "LinePos 1 =(2) "
; Fused expression:    "=(34) *LinePos 1 "
    mov     ax, 1
    mov     [_LinePos], ax
; }
    jmp     L735
L734:
; else
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; }
L735:
; }
    jmp     L730
L731:
; if
; RPN'ized expression: "p *u 0 == "
; Expanded expression: "(@-2) *(2) *(1) 0 == "
; Fused expression:    "*(2) (@-2) == *ax 0 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 0
    jne     L745
; RPN'ized expression: "( L747 error ) "
; Expanded expression: " L747  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L747:
    db  "Error: Invalid comment",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L747 , error )2 "
    push    L747
    call    _error
    sub     sp, -2
L745:
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; continue
    jmp     L705
; }
L728:
L723:
; }
L720:
; break
    jmp     L706
; }
    jmp     L705
L706:
L704:
    leave
    ret
; SEGMENT _TEXT
; glb GetIdent : (void) void
SEGMENT _TEXT
    global  _GetIdent
_GetIdent:
    push    bp
    mov     bp, sp
; loc     p : (@-2): * char
    sub     sp, 2
; =
; RPN'ized expression: "CharQueue "
; Expanded expression: "CharQueue "
; Fused expression:    "=(34) *(@-2) CharQueue "
    mov     ax, _CharQueue
    mov     [bp-2], ax
; if
; RPN'ized expression: "p *u 95 != ( p *u isalpha ) 0 == && "
; Expanded expression: "(@-2) *(2) *(1) 95 != _Bool [sh&&->752]  (@-2) *(2) *(1)  isalpha ()2 0 == _Bool &&[752] "
; Fused expression:    "*(2) (@-2) != *ax 95 _Bool [sh&&->752] ( *(2) (@-2) *(1) ax , isalpha )2 == ax 0 _Bool &&[752] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 95
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L752
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isalpha
    sub     sp, -2
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L752:
; JumpIfZero
    test    ax, ax
    je      L750
; RPN'ized expression: "( L753 error ) "
; Expanded expression: " L753  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L753:
    db  "Error: Identifier expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L753 , error )2 "
    push    L753
    call    _error
    sub     sp, -2
L750:
; if
; RPN'ized expression: "p *u 76 == p *u 108 == || p 1 + *u 39 == p 1 + *u 34 == || && "
; Expanded expression: "(@-2) *(2) *(1) 76 == _Bool [sh||->759] (@-2) *(2) *(1) 108 == _Bool ||[759] _Bool [sh&&->757] (@-2) *(2) 1 + *(1) 39 == _Bool [sh||->758] (@-2) *(2) 1 + *(1) 34 == _Bool ||[758] _Bool &&[757] "
; Fused expression:    "*(2) (@-2) == *ax 76 _Bool [sh||->759] *(2) (@-2) == *ax 108 _Bool ||[759] _Bool [sh&&->757] + *(@-2) 1 == *ax 39 _Bool [sh||->758] + *(@-2) 1 == *ax 34 _Bool ||[758] _Bool &&[757] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 76
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L759
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 108
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L759:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L757
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 39
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L758
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 34
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L758:
    test    ax, ax
    setne   al
    cbw
L757:
; JumpIfZero
    test    ax, ax
    je      L755
; RPN'ized expression: "( L760 error ) "
; Expanded expression: " L760  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L760:
    db  "Error: Wide characters and strings not supported",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L760 , error )2 "
    push    L760
    call    _error
    sub     sp, -2
L755:
; RPN'ized expression: "TokenIdentNameLen 0 = "
; Expanded expression: "TokenIdentNameLen 0 =(2) "
; Fused expression:    "=(34) *TokenIdentNameLen 0 "
    mov     ax, 0
    mov     [_TokenIdentNameLen], ax
; RPN'ized expression: "TokenIdentName TokenIdentNameLen ++p + *u p *u = "
; Expanded expression: "TokenIdentName TokenIdentNameLen ++p(2) + (@-2) *(2) *(1) =(1) "
; Fused expression:    "++p(2) *TokenIdentNameLen + TokenIdentName ax push-ax *(2) (@-2) =(17) **sp *ax "
    mov     ax, [_TokenIdentNameLen]
    inc     word [_TokenIdentNameLen]
    mov     cx, ax
    mov     ax, _TokenIdentName
    add     ax, cx
    push    ax
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    pop     bx
    mov     [bx], al
    cbw
; RPN'ized expression: "TokenIdentName TokenIdentNameLen + *u 0 = "
; Expanded expression: "TokenIdentName TokenIdentNameLen *(2) + 0 =(1) "
; Fused expression:    "+ TokenIdentName *TokenIdentNameLen =(18) *ax 0 "
    mov     ax, _TokenIdentName
    add     ax, [_TokenIdentNameLen]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; while
; RPN'ized expression: "p *u 95 == ( p *u isalnum ) || "
; Expanded expression: "(@-2) *(2) *(1) 95 == _Bool [sh||->764]  (@-2) *(2) *(1)  isalnum ()2 _Bool ||[764] "
L762:
; Fused expression:    "*(2) (@-2) == *ax 95 _Bool [sh||->764] ( *(2) (@-2) *(1) ax , isalnum )2 _Bool ||[764] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 95
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L764
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isalnum
    sub     sp, -2
    test    ax, ax
    setne   al
    cbw
L764:
; JumpIfZero
    test    ax, ax
    je      L763
; {
; if
; RPN'ized expression: "TokenIdentNameLen 31 == "
; Expanded expression: "TokenIdentNameLen *(2) 31 == "
; Fused expression:    "== *TokenIdentNameLen 31 IF! "
    mov     ax, [_TokenIdentNameLen]
    cmp     ax, 31
    jne     L765
; RPN'ized expression: "( TokenIdentName , L767 error ) "
; Expanded expression: " TokenIdentName  L767  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L767:
    db  "Error: Identifier name too long '%s'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( TokenIdentName , L767 , error )4 "
    push    _TokenIdentName
    push    L767
    call    _error
    sub     sp, -4
L765:
; RPN'ized expression: "TokenIdentName TokenIdentNameLen ++p + *u p *u = "
; Expanded expression: "TokenIdentName TokenIdentNameLen ++p(2) + (@-2) *(2) *(1) =(1) "
; Fused expression:    "++p(2) *TokenIdentNameLen + TokenIdentName ax push-ax *(2) (@-2) =(17) **sp *ax "
    mov     ax, [_TokenIdentNameLen]
    inc     word [_TokenIdentNameLen]
    mov     cx, ax
    mov     ax, _TokenIdentName
    add     ax, cx
    push    ax
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    pop     bx
    mov     [bx], al
    cbw
; RPN'ized expression: "TokenIdentName TokenIdentNameLen + *u 0 = "
; Expanded expression: "TokenIdentName TokenIdentNameLen *(2) + 0 =(1) "
; Fused expression:    "+ TokenIdentName *TokenIdentNameLen =(18) *ax 0 "
    mov     ax, _TokenIdentName
    add     ax, [_TokenIdentNameLen]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; }
    jmp     L762
L763:
L749:
    leave
    ret
; SEGMENT _TEXT
; glb GetToken : (void) int
SEGMENT _TEXT
    global  _GetToken
_GetToken:
    push    bp
    mov     bp, sp
; loc     p : (@-2): * char
    sub     sp, 2
; =
; RPN'ized expression: "CharQueue "
; Expanded expression: "CharQueue "
; Fused expression:    "=(34) *(@-2) CharQueue "
    mov     ax, _CharQueue
    mov     [bp-2], ax
; loc     ch : (@-4): int
    sub     sp, 2
; while
; RPN'ized expression: "ch p *u = 0 != "
; Expanded expression: "(@-4) (@-2) *(2) *(1) =(2) 0 != "
L770:
; Fused expression:    "*(2) (@-2) =(33) *(@-4) *ax != ax 0 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-4], ax
    cmp     ax, 0
    je      L771
; {
; RPN'ized expression: "( 1 SkipSpace ) "
; Expanded expression: " 1  SkipSpace ()2 "
; Fused expression:    "( 1 , SkipSpace )2 "
    push    1
    call    _SkipSpace
    sub     sp, -2
; if
; RPN'ized expression: "ch p *u = 0 == "
; Expanded expression: "(@-4) (@-2) *(2) *(1) =(2) 0 == "
; Fused expression:    "*(2) (@-2) =(33) *(@-4) *ax == ax 0 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-4], ax
    cmp     ax, 0
    jne     L772
; break
    jmp     L771
L772:
; if
; RPN'ized expression: "( ch , L776 strchr ) 0 != "
; Expanded expression: " (@-4) *(2)  L776  strchr ()4 0 != "
; SEGMENT _TEXT
SEGMENT _DATA
L776:
    db  ",;:()[]{}~",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-4) , L776 , strchr )4 != ax 0 IF! "
    push    word [bp-4]
    push    L776
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    je      L774
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; }
L774:
; switch
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L780
; {
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L781
L780:
    cmp     ax, 43
    jne     L782
L781:
; if
; RPN'ized expression: "p 1 + *u 43 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 43 == "
; Fused expression:    "+ *(@-2) 1 == *ax 43 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 43
    jne     L784
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
; Fused expression:    "12 "
    mov     ax, 12
    jmp     L769
; }
L784:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L786
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
; Fused expression:    "68 "
    mov     ax, 68
    jmp     L769
; }
L786:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L783
L782:
    cmp     ax, 45
    jne     L788
L783:
; if
; RPN'ized expression: "p 1 + *u 45 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 45 == "
; Fused expression:    "+ *(@-2) 1 == *ax 45 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 45
    jne     L790
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
; Fused expression:    "13 "
    mov     ax, 13
    jmp     L769
; }
L790:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L792
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
; Fused expression:    "69 "
    mov     ax, 69
    jmp     L769
; }
L792:
; if
; RPN'ized expression: "p 1 + *u 62 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 62 == "
; Fused expression:    "+ *(@-2) 1 == *ax 62 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 62
    jne     L794
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
; Fused expression:    "14 "
    mov     ax, 14
    jmp     L769
; }
L794:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "33 "
; Expanded expression: "33 "
; Expression value: 33
    jmp     L789
L788:
    cmp     ax, 33
    jne     L796
L789:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L798
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; Fused expression:    "9 "
    mov     ax, 9
    jmp     L769
; }
L798:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L797
L796:
    cmp     ax, 61
    jne     L800
L797:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L802
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; Fused expression:    "8 "
    mov     ax, 8
    jmp     L769
; }
L802:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L801
L800:
    cmp     ax, 60
    jne     L804
L801:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L806
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; Fused expression:    "10 "
    mov     ax, 10
    jmp     L769
; }
L806:
; if
; RPN'ized expression: "p 1 + *u 60 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 60 == "
; Fused expression:    "+ *(@-2) 1 == *ax 60 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 60
    jne     L808
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; if
; RPN'ized expression: "p 0 + *u 61 != "
; Expanded expression: "(@-2) *(2) 0 + *(1) 61 != "
; Fused expression:    "+ *(@-2) 0 != *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 0
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    je      L810
; return
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; Fused expression:    "4 "
    mov     ax, 4
    jmp     L769
L810:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
; Fused expression:    "70 "
    mov     ax, 70
    jmp     L769
; }
L808:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L805
L804:
    cmp     ax, 62
    jne     L812
L805:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L814
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
; Fused expression:    "11 "
    mov     ax, 11
    jmp     L769
; }
L814:
; if
; RPN'ized expression: "p 1 + *u 62 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 62 == "
; Fused expression:    "+ *(@-2) 1 == *ax 62 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 62
    jne     L816
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; if
; RPN'ized expression: "p 0 + *u 61 != "
; Expanded expression: "(@-2) *(2) 0 + *(1) 61 != "
; Fused expression:    "+ *(@-2) 0 != *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 0
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    je      L818
; return
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
; Fused expression:    "5 "
    mov     ax, 5
    jmp     L769
L818:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
; Fused expression:    "71 "
    mov     ax, 71
    jmp     L769
; }
L816:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L813
L812:
    cmp     ax, 38
    jne     L820
L813:
; if
; RPN'ized expression: "p 1 + *u 38 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 38 == "
; Fused expression:    "+ *(@-2) 1 == *ax 38 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 38
    jne     L822
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
; Fused expression:    "6 "
    mov     ax, 6
    jmp     L769
; }
L822:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L824
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
; Fused expression:    "72 "
    mov     ax, 72
    jmp     L769
; }
L824:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L821
L820:
    cmp     ax, 124
    jne     L826
L821:
; if
; RPN'ized expression: "p 1 + *u 124 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 124 == "
; Fused expression:    "+ *(@-2) 1 == *ax 124 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 124
    jne     L828
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; Fused expression:    "7 "
    mov     ax, 7
    jmp     L769
; }
L828:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L830
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
; Fused expression:    "74 "
    mov     ax, 74
    jmp     L769
; }
L830:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L827
L826:
    cmp     ax, 94
    jne     L832
L827:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L834
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
; Fused expression:    "73 "
    mov     ax, 73
    jmp     L769
; }
L834:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "46 "
; Expanded expression: "46 "
; Expression value: 46
    jmp     L833
L832:
    cmp     ax, 46
    jne     L836
L833:
; if
; RPN'ized expression: "p 1 + *u 46 == p 2 + *u 46 == && "
; Expanded expression: "(@-2) *(2) 1 + *(1) 46 == _Bool [sh&&->840] (@-2) *(2) 2 + *(1) 46 == _Bool &&[840] "
; Fused expression:    "+ *(@-2) 1 == *ax 46 _Bool [sh&&->840] + *(@-2) 2 == *ax 46 _Bool &&[840] "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 46
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L840
    mov     ax, [bp-2]
    add     ax, 2
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 46
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L840:
; JumpIfZero
    test    ax, ax
    je      L838
; {
; RPN'ized expression: "( 3 ShiftCharN ) "
; Expanded expression: " 3  ShiftCharN ()2 "
; Fused expression:    "( 3 , ShiftCharN )2 "
    push    3
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "15 "
; Expanded expression: "15 "
; Expression value: 15
; Fused expression:    "15 "
    mov     ax, 15
    jmp     L769
; }
L838:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L837
L836:
    cmp     ax, 42
    jne     L841
L837:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L843
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
; Fused expression:    "65 "
    mov     ax, 65
    jmp     L769
; }
L843:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L842
L841:
    cmp     ax, 37
    jne     L845
L842:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L847
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
; Fused expression:    "67 "
    mov     ax, 67
    jmp     L769
; }
L847:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L846
L845:
    cmp     ax, 47
    jne     L849
L846:
; if
; RPN'ized expression: "p 1 + *u 61 == "
; Expanded expression: "(@-2) *(2) 1 + *(1) 61 == "
; Fused expression:    "+ *(@-2) 1 == *ax 61 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 61
    jne     L851
; {
; RPN'ized expression: "( 2 ShiftCharN ) "
; Expanded expression: " 2  ShiftCharN ()2 "
; Fused expression:    "( 2 , ShiftCharN )2 "
    push    2
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
; Fused expression:    "66 "
    mov     ax, 66
    jmp     L769
; }
L851:
; if
; RPN'ized expression: "p 1 + *u 47 == p 1 + *u 42 == || "
; Expanded expression: "(@-2) *(2) 1 + *(1) 47 == _Bool [sh||->855] (@-2) *(2) 1 + *(1) 42 == _Bool ||[855] "
; Fused expression:    "+ *(@-2) 1 == *ax 47 _Bool [sh||->855] + *(@-2) 1 == *ax 42 _Bool ||[855] "
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 47
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L855
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 42
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L855:
; JumpIfZero
    test    ax, ax
    je      L853
; {
; RPN'ized expression: "( 1 SkipSpace ) "
; Expanded expression: " 1  SkipSpace ()2 "
; Fused expression:    "( 1 , SkipSpace )2 "
    push    1
    call    _SkipSpace
    sub     sp, -2
; continue
    jmp     L770
; }
L853:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; return
; RPN'ized expression: "ch "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L769
; }
    jmp     L778
L849:
L778:
; if
; RPN'ized expression: "( p *u isdigit ) "
; Expanded expression: " (@-2) *(2) *(1)  isdigit ()2 "
; Fused expression:    "( *(2) (@-2) *(1) ax , isdigit )2 "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isdigit
    sub     sp, -2
; JumpIfZero
    test    ax, ax
    je      L856
; {
; RPN'ized expression: "TokenValueInt 0 = "
; Expanded expression: "TokenValueInt 0 =(2) "
; Fused expression:    "=(34) *TokenValueInt 0 "
    mov     ax, 0
    mov     [_TokenValueInt], ax
; if
; RPN'ized expression: "p *u 48 == "
; Expanded expression: "(@-2) *(2) *(1) 48 == "
; Fused expression:    "*(2) (@-2) == *ax 48 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 48
    jne     L858
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; if
; RPN'ized expression: "p *u 120 == p *u 88 == || "
; Expanded expression: "(@-2) *(2) *(1) 120 == _Bool [sh||->862] (@-2) *(2) *(1) 88 == _Bool ||[862] "
; Fused expression:    "*(2) (@-2) == *ax 120 _Bool [sh||->862] *(2) (@-2) == *ax 88 _Bool ||[862] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 120
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L862
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 88
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L862:
; JumpIfZero
    test    ax, ax
    je      L860
; {
; loc                     ch : (@-6): int
    sub     sp, 2
; loc                     cnt : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-8) 0 "
    mov     ax, 0
    mov     [bp-8], ax
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; while
; RPN'ized expression: "ch p *u = 0 != ( ch isdigit ) ( ch , L865 strchr ) || && "
; Expanded expression: "(@-6) (@-2) *(2) *(1) =(2) 0 != _Bool [sh&&->867]  (@-6) *(2)  isdigit ()2 _Bool [sh||->868]  (@-6) *(2)  L865  strchr ()4 _Bool ||[868] _Bool &&[867] "
L863:
; SEGMENT _TEXT
SEGMENT _DATA
L865:
    db  "abcdefABCDEF",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "*(2) (@-2) =(33) *(@-6) *ax != ax 0 _Bool [sh&&->867] ( *(2) (@-6) , isdigit )2 _Bool [sh||->868] ( *(2) (@-6) , L865 , strchr )4 _Bool ||[868] _Bool &&[867] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-6], ax
    cmp     ax, 0
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L867
    push    word [bp-6]
    call    _isdigit
    sub     sp, -2
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L868
    push    word [bp-6]
    push    L865
    call    _strchr
    sub     sp, -4
    test    ax, ax
    setne   al
    cbw
L868:
    test    ax, ax
    setne   al
    cbw
L867:
; JumpIfZero
    test    ax, ax
    je      L864
; {
; if
; RPN'ized expression: "ch 97 >= "
; Expanded expression: "(@-6) *(2) 97 >= "
; Fused expression:    ">= *(@-6) 97 IF! "
    mov     ax, [bp-6]
    cmp     ax, 97
    jl      L869
; RPN'ized expression: "ch 97 10 - -= "
; Expanded expression: "(@-6) 87 -=(2) "
; Fused expression:    "-=(34) *(@-6) 87 "
    mov     ax, [bp-6]
    sub     ax, 87
    mov     [bp-6], ax
    jmp     L870
L869:
; else
; if
; RPN'ized expression: "ch 65 >= "
; Expanded expression: "(@-6) *(2) 65 >= "
; Fused expression:    ">= *(@-6) 65 IF! "
    mov     ax, [bp-6]
    cmp     ax, 65
    jl      L871
; RPN'ized expression: "ch 65 10 - -= "
; Expanded expression: "(@-6) 55 -=(2) "
; Fused expression:    "-=(34) *(@-6) 55 "
    mov     ax, [bp-6]
    sub     ax, 55
    mov     [bp-6], ax
    jmp     L872
L871:
; else
; RPN'ized expression: "ch 48 -= "
; Expanded expression: "(@-6) 48 -=(2) "
; Fused expression:    "-=(34) *(@-6) 48 "
    mov     ax, [bp-6]
    sub     ax, 48
    mov     [bp-6], ax
L872:
L870:
; RPN'ized expression: "TokenValueInt 16 *= "
; Expanded expression: "TokenValueInt 16 *=(2) "
; Fused expression:    "*=(34) *TokenValueInt 16 "
    mov     ax, [_TokenValueInt]
    imul    ax, ax, 16
    mov     [_TokenValueInt], ax
; RPN'ized expression: "TokenValueInt ch += "
; Expanded expression: "TokenValueInt (@-6) *(2) +=(2) "
; Fused expression:    "+=(34) *TokenValueInt *(@-6) "
    mov     ax, [_TokenValueInt]
    add     ax, [bp-6]
    mov     [_TokenValueInt], ax
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; RPN'ized expression: "cnt ++p "
; Expanded expression: "(@-8) ++p(2) "
; Fused expression:    "++p(2) *(@-8) "
    mov     ax, [bp-8]
    inc     word [bp-8]
; }
    jmp     L863
L864:
; if
; RPN'ized expression: "cnt 0 == "
; Expanded expression: "(@-8) *(2) 0 == "
; Fused expression:    "== *(@-8) 0 IF! "
    mov     ax, [bp-8]
    cmp     ax, 0
    jne     L873
; RPN'ized expression: "( L875 error ) "
; Expanded expression: " L875  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L875:
    db  "Error: Invalid hexadecimal constant",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L875 , error )2 "
    push    L875
    call    _error
    sub     sp, -2
L873:
    sub     sp, -4
; }
    jmp     L861
L860:
; else
; while
; RPN'ized expression: "p *u 48 >= p *u 55 <= && "
; Expanded expression: "(@-2) *(2) *(1) 48 >= _Bool [sh&&->879] (@-2) *(2) *(1) 55 <= _Bool &&[879] "
L877:
; Fused expression:    "*(2) (@-2) >= *ax 48 _Bool [sh&&->879] *(2) (@-2) <= *ax 55 _Bool &&[879] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 48
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L879
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 55
    setle   al
    cbw
    test    ax, ax
    setne   al
    cbw
L879:
; JumpIfZero
    test    ax, ax
    je      L878
; {
; RPN'ized expression: "TokenValueInt 8 *= "
; Expanded expression: "TokenValueInt 8 *=(2) "
; Fused expression:    "*=(34) *TokenValueInt 8 "
    mov     ax, [_TokenValueInt]
    imul    ax, ax, 8
    mov     [_TokenValueInt], ax
; RPN'ized expression: "TokenValueInt p *u 48 - += "
; Expanded expression: "TokenValueInt (@-2) *(2) *(1) 48 - +=(2) "
; Fused expression:    "*(2) (@-2) - *ax 48 +=(34) *TokenValueInt ax "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    sub     ax, 48
    mov     cx, ax
    mov     ax, [_TokenValueInt]
    add     ax, cx
    mov     [_TokenValueInt], ax
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; }
    jmp     L877
L878:
L861:
; }
    jmp     L859
L858:
; else
; while
; RPN'ized expression: "p *u 48 >= p *u 57 <= && "
; Expanded expression: "(@-2) *(2) *(1) 48 >= _Bool [sh&&->882] (@-2) *(2) *(1) 57 <= _Bool &&[882] "
L880:
; Fused expression:    "*(2) (@-2) >= *ax 48 _Bool [sh&&->882] *(2) (@-2) <= *ax 57 _Bool &&[882] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 48
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L882
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 57
    setle   al
    cbw
    test    ax, ax
    setne   al
    cbw
L882:
; JumpIfZero
    test    ax, ax
    je      L881
; {
; RPN'ized expression: "TokenValueInt 10 *= "
; Expanded expression: "TokenValueInt 10 *=(2) "
; Fused expression:    "*=(34) *TokenValueInt 10 "
    mov     ax, [_TokenValueInt]
    imul    ax, ax, 10
    mov     [_TokenValueInt], ax
; RPN'ized expression: "TokenValueInt p *u 48 - += "
; Expanded expression: "TokenValueInt (@-2) *(2) *(1) 48 - +=(2) "
; Fused expression:    "*(2) (@-2) - *ax 48 +=(34) *TokenValueInt ax "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    sub     ax, 48
    mov     cx, ax
    mov     ax, [_TokenValueInt]
    add     ax, cx
    mov     [_TokenValueInt], ax
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; }
    jmp     L880
L881:
L859:
; return
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1 "
    mov     ax, 1
    jmp     L769
; }
L856:
; if
; RPN'ized expression: "p *u 39 == p *u 34 == || "
; Expanded expression: "(@-2) *(2) *(1) 39 == _Bool [sh||->885] (@-2) *(2) *(1) 34 == _Bool ||[885] "
; Fused expression:    "*(2) (@-2) == *ax 39 _Bool [sh||->885] *(2) (@-2) == *ax 34 _Bool ||[885] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 39
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L885
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 34
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L885:
; JumpIfZero
    test    ax, ax
    je      L883
; {
; loc             terminator : (@-6): char
    sub     sp, 2
; =
; RPN'ized expression: "p *u "
; Expanded expression: "(@-2) *(2) *(1) "
; Fused expression:    "*(2) (@-2) =(33) *(@-6) *ax "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-6], ax
; loc             ch : (@-8): char
    sub     sp, 2
; RPN'ized expression: "TokenStringLen 0 = "
; Expanded expression: "TokenStringLen 0 =(2) "
; Fused expression:    "=(34) *TokenStringLen 0 "
    mov     ax, 0
    mov     [_TokenStringLen], ax
; RPN'ized expression: "TokenValueString TokenStringLen + *u 0 = "
; Expanded expression: "TokenValueString TokenStringLen *(2) + 0 =(1) "
; Fused expression:    "+ TokenValueString *TokenStringLen =(18) *ax 0 "
    mov     ax, _TokenValueString
    add     ax, [_TokenStringLen]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], al
    cbw
; for
L886:
    jmp     L888
L887:
    jmp     L886
L888:
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; while
; RPN'ized expression: "p *u 0 == p *u terminator == || ( p *u , L892 strchr ) || 0 == "
; Expanded expression: "(@-2) *(2) *(1) 0 == _Bool [sh||->895] (@-2) *(2) *(1) (@-6) *(1) == _Bool ||[895] _Bool [sh||->894]  (@-2) *(2) *(1)  L892  strchr ()4 _Bool ||[894] 0 == "
L890:
; SEGMENT _TEXT
SEGMENT _DATA
L892:
    db  7,8,12,10,13,9,11,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "*(2) (@-2) == *ax 0 _Bool [sh||->895] *(2) (@-2) == *ax *(@-6) _Bool ||[895] _Bool [sh||->894] ( *(2) (@-2) *(1) ax , L892 , strchr )4 _Bool ||[894] == ax 0 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L895
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    movsx   cx, byte [bp-6]
    cmp     ax, cx
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L895:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L894
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L892
    call    _strchr
    sub     sp, -4
    test    ax, ax
    setne   al
    cbw
L894:
    cmp     ax, 0
    jne     L891
; {
; RPN'ized expression: "ch p *u = "
; Expanded expression: "(@-8) (@-2) *(2) *(1) =(1) "
; Fused expression:    "*(2) (@-2) =(17) *(@-8) *ax "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-8], al
    cbw
; if
; RPN'ized expression: "ch 92 == "
; Expanded expression: "(@-8) *(1) 92 == "
; Fused expression:    "== *(@-8) 92 IF! "
    mov     al, [bp-8]
    cbw
    cmp     ax, 92
    jne     L896
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; RPN'ized expression: "ch p *u = "
; Expanded expression: "(@-8) (@-2) *(2) *(1) =(1) "
; Fused expression:    "*(2) (@-2) =(17) *(@-8) *ax "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-8], al
    cbw
; if
; RPN'ized expression: "ch 0 == ( ch , L900 strchr ) || "
; Expanded expression: "(@-8) *(1) 0 == _Bool [sh||->902]  (@-8) *(1)  L900  strchr ()4 _Bool ||[902] "
; SEGMENT _TEXT
SEGMENT _DATA
L900:
    db  7,8,12,10,13,9,11,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "== *(@-8) 0 _Bool [sh||->902] ( *(1) (@-8) , L900 , strchr )4 _Bool ||[902] "
    mov     al, [bp-8]
    cbw
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L902
    mov     al, [bp-8]
    cbw
    push    ax
    push    L900
    call    _strchr
    sub     sp, -4
    test    ax, ax
    setne   al
    cbw
L902:
; JumpIfZero
    test    ax, ax
    je      L898
; break
    jmp     L891
L898:
; switch
; RPN'ized expression: "ch "
; Expanded expression: "(@-8) *(1) "
; Fused expression:    "*(1) (@-8) "
    mov     al, [bp-8]
    cbw
    jmp     L905
; {
; case
; RPN'ized expression: "97 "
; Expanded expression: "97 "
; Expression value: 97
    jmp     L906
L905:
    cmp     ax, 97
    jne     L907
L906:
; RPN'ized expression: "ch 7 = "
; Expanded expression: "(@-8) 7 =(1) "
; Fused expression:    "=(18) *(@-8) 7 "
    mov     ax, 7
    mov     [bp-8], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; break
    jmp     L903
; case
; RPN'ized expression: "98 "
; Expanded expression: "98 "
; Expression value: 98
    jmp     L908
L907:
    cmp     ax, 98
    jne     L909
L908:
; RPN'ized expression: "ch 8 = "
; Expanded expression: "(@-8) 8 =(1) "
; Fused expression:    "=(18) *(@-8) 8 "
    mov     ax, 8
    mov     [bp-8], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; break
    jmp     L903
; case
; RPN'ized expression: "102 "
; Expanded expression: "102 "
; Expression value: 102
    jmp     L910
L909:
    cmp     ax, 102
    jne     L911
L910:
; RPN'ized expression: "ch 12 = "
; Expanded expression: "(@-8) 12 =(1) "
; Fused expression:    "=(18) *(@-8) 12 "
    mov     ax, 12
    mov     [bp-8], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; break
    jmp     L903
; case
; RPN'ized expression: "110 "
; Expanded expression: "110 "
; Expression value: 110
    jmp     L912
L911:
    cmp     ax, 110
    jne     L913
L912:
; RPN'ized expression: "ch 10 = "
; Expanded expression: "(@-8) 10 =(1) "
; Fused expression:    "=(18) *(@-8) 10 "
    mov     ax, 10
    mov     [bp-8], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; break
    jmp     L903
; case
; RPN'ized expression: "114 "
; Expanded expression: "114 "
; Expression value: 114
    jmp     L914
L913:
    cmp     ax, 114
    jne     L915
L914:
; RPN'ized expression: "ch 13 = "
; Expanded expression: "(@-8) 13 =(1) "
; Fused expression:    "=(18) *(@-8) 13 "
    mov     ax, 13
    mov     [bp-8], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; break
    jmp     L903
; case
; RPN'ized expression: "116 "
; Expanded expression: "116 "
; Expression value: 116
    jmp     L916
L915:
    cmp     ax, 116
    jne     L917
L916:
; RPN'ized expression: "ch 9 = "
; Expanded expression: "(@-8) 9 =(1) "
; Fused expression:    "=(18) *(@-8) 9 "
    mov     ax, 9
    mov     [bp-8], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; break
    jmp     L903
; case
; RPN'ized expression: "118 "
; Expanded expression: "118 "
; Expression value: 118
    jmp     L918
L917:
    cmp     ax, 118
    jne     L919
L918:
; RPN'ized expression: "ch 11 = "
; Expanded expression: "(@-8) 11 =(1) "
; Fused expression:    "=(18) *(@-8) 11 "
    mov     ax, 11
    mov     [bp-8], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; break
    jmp     L903
; case
; RPN'ized expression: "120 "
; Expanded expression: "120 "
; Expression value: 120
    jmp     L920
L919:
    cmp     ax, 120
    jne     L921
L920:
; {
; loc                                 cnt : (@-10): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-10) 0 "
    mov     ax, 0
    mov     [bp-10], ax
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; RPN'ized expression: "ch 0 = "
; Expanded expression: "(@-8) 0 =(1) "
; Fused expression:    "=(18) *(@-8) 0 "
    mov     ax, 0
    mov     [bp-8], al
    cbw
; while
; RPN'ized expression: "p *u 0 != ( p *u isdigit ) ( p *u , L925 strchr ) || && "
; Expanded expression: "(@-2) *(2) *(1) 0 != _Bool [sh&&->927]  (@-2) *(2) *(1)  isdigit ()2 _Bool [sh||->928]  (@-2) *(2) *(1)  L925  strchr ()4 _Bool ||[928] _Bool &&[927] "
L923:
; SEGMENT _TEXT
SEGMENT _DATA
L925:
    db  "abcdefABCDEF",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "*(2) (@-2) != *ax 0 _Bool [sh&&->927] ( *(2) (@-2) *(1) ax , isdigit )2 _Bool [sh||->928] ( *(2) (@-2) *(1) ax , L925 , strchr )4 _Bool ||[928] _Bool &&[927] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 0
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L927
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isdigit
    sub     sp, -2
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L928
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L925
    call    _strchr
    sub     sp, -4
    test    ax, ax
    setne   al
    cbw
L928:
    test    ax, ax
    setne   al
    cbw
L927:
; JumpIfZero
    test    ax, ax
    je      L924
; {
; RPN'ized expression: "ch 16 *= "
; Expanded expression: "(@-8) 16 *=(1) "
; Fused expression:    "*=(18) *(@-8) 16 "
    mov     al, [bp-8]
    cbw
    imul    ax, ax, 16
    mov     [bp-8], al
    cbw
; if
; RPN'ized expression: "p *u 97 >= "
; Expanded expression: "(@-2) *(2) *(1) 97 >= "
; Fused expression:    "*(2) (@-2) >= *ax 97 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 97
    jl      L929
; RPN'ized expression: "ch p *u 97 - 10 + += "
; Expanded expression: "(@-8) (@-2) *(2) *(1) 97 - 10 + +=(1) "
; Fused expression:    "*(2) (@-2) - *ax 97 + ax 10 +=(18) *(@-8) ax "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    sub     ax, 97
    add     ax, 10
    mov     cx, ax
    mov     al, [bp-8]
    cbw
    add     ax, cx
    mov     [bp-8], al
    cbw
    jmp     L930
L929:
; else
; if
; RPN'ized expression: "p *u 65 >= "
; Expanded expression: "(@-2) *(2) *(1) 65 >= "
; Fused expression:    "*(2) (@-2) >= *ax 65 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 65
    jl      L931
; RPN'ized expression: "ch p *u 65 - 10 + += "
; Expanded expression: "(@-8) (@-2) *(2) *(1) 65 - 10 + +=(1) "
; Fused expression:    "*(2) (@-2) - *ax 65 + ax 10 +=(18) *(@-8) ax "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    sub     ax, 65
    add     ax, 10
    mov     cx, ax
    mov     al, [bp-8]
    cbw
    add     ax, cx
    mov     [bp-8], al
    cbw
    jmp     L932
L931:
; else
; RPN'ized expression: "ch p *u 48 - += "
; Expanded expression: "(@-8) (@-2) *(2) *(1) 48 - +=(1) "
; Fused expression:    "*(2) (@-2) - *ax 48 +=(18) *(@-8) ax "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    sub     ax, 48
    mov     cx, ax
    mov     al, [bp-8]
    cbw
    add     ax, cx
    mov     [bp-8], al
    cbw
L932:
L930:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; RPN'ized expression: "cnt ++p "
; Expanded expression: "(@-10) ++p(2) "
; Fused expression:    "++p(2) *(@-10) "
    mov     ax, [bp-10]
    inc     word [bp-10]
; }
    jmp     L923
L924:
; if
; RPN'ized expression: "cnt 0 == "
; Expanded expression: "(@-10) *(2) 0 == "
; Fused expression:    "== *(@-10) 0 IF! "
    mov     ax, [bp-10]
    cmp     ax, 0
    jne     L933
; RPN'ized expression: "( L935 error ) "
; Expanded expression: " L935  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L935:
    db  "Error: Unsupported or invalid character/string constant",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L935 , error )2 "
    push    L935
    call    _error
    sub     sp, -2
L933:
    sub     sp, -2
; }
; break
    jmp     L903
; default
L904:
; if
; RPN'ized expression: "p *u 48 >= p *u 55 <= && "
; Expanded expression: "(@-2) *(2) *(1) 48 >= _Bool [sh&&->939] (@-2) *(2) *(1) 55 <= _Bool &&[939] "
; Fused expression:    "*(2) (@-2) >= *ax 48 _Bool [sh&&->939] *(2) (@-2) <= *ax 55 _Bool &&[939] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 48
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L939
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 55
    setle   al
    cbw
    test    ax, ax
    setne   al
    cbw
L939:
; JumpIfZero
    test    ax, ax
    je      L937
; {
; loc                                 cnt : (@-10): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-10) 0 "
    mov     ax, 0
    mov     [bp-10], ax
; RPN'ized expression: "ch 0 = "
; Expanded expression: "(@-8) 0 =(1) "
; Fused expression:    "=(18) *(@-8) 0 "
    mov     ax, 0
    mov     [bp-8], al
    cbw
; while
; RPN'ized expression: "p *u 48 >= p *u 55 <= && "
; Expanded expression: "(@-2) *(2) *(1) 48 >= _Bool [sh&&->942] (@-2) *(2) *(1) 55 <= _Bool &&[942] "
L940:
; Fused expression:    "*(2) (@-2) >= *ax 48 _Bool [sh&&->942] *(2) (@-2) <= *ax 55 _Bool &&[942] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 48
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L942
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 55
    setle   al
    cbw
    test    ax, ax
    setne   al
    cbw
L942:
; JumpIfZero
    test    ax, ax
    je      L941
; {
; RPN'ized expression: "ch ch 8 * p *u + 48 - = "
; Expanded expression: "(@-8) (@-8) *(1) 8 * (@-2) *(2) *(1) + 48 - =(1) "
; Fused expression:    "* *(@-8) 8 push-ax *(2) (@-2) + *sp *ax - ax 48 =(18) *(@-8) ax "
    mov     al, [bp-8]
    cbw
    imul    ax, ax, 8
    push    ax
    mov     ax, [bp-2]
    mov     bx, ax
    movsx   cx, byte [bx]
    pop     ax
    add     ax, cx
    sub     ax, 48
    mov     [bp-8], al
    cbw
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; RPN'ized expression: "cnt ++p "
; Expanded expression: "(@-10) ++p(2) "
; Fused expression:    "++p(2) *(@-10) "
    mov     ax, [bp-10]
    inc     word [bp-10]
; }
    jmp     L940
L941:
; if
; RPN'ized expression: "cnt 0 == "
; Expanded expression: "(@-10) *(2) 0 == "
; Fused expression:    "== *(@-10) 0 IF! "
    mov     ax, [bp-10]
    cmp     ax, 0
    jne     L943
; RPN'ized expression: "( L945 error ) "
; Expanded expression: " L945  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L945:
    db  "Error: Unsupported or invalid character/string constant",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L945 , error )2 "
    push    L945
    call    _error
    sub     sp, -2
L943:
    sub     sp, -2
; }
    jmp     L938
L937:
; else
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; }
L938:
; break
    jmp     L903
; }
    jmp     L903
L921:
    jmp     L904
L903:
; }
    jmp     L897
L896:
; else
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; }
L897:
; if
; RPN'ized expression: "terminator 39 == "
; Expanded expression: "(@-6) *(1) 39 == "
; Fused expression:    "== *(@-6) 39 IF! "
    mov     al, [bp-6]
    cbw
    cmp     ax, 39
    jne     L947
; {
; if
; RPN'ized expression: "TokenStringLen 0 != "
; Expanded expression: "TokenStringLen *(2) 0 != "
; Fused expression:    "!= *TokenStringLen 0 IF! "
    mov     ax, [_TokenStringLen]
    cmp     ax, 0
    je      L949
; RPN'ized expression: "( L951 error ) "
; Expanded expression: " L951  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L951:
    db  "Error: Character constant too long",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L951 , error )2 "
    push    L951
    call    _error
    sub     sp, -2
L949:
; }
    jmp     L948
L947:
; else
; if
; RPN'ized expression: "TokenStringLen 127 == "
; Expanded expression: "TokenStringLen *(2) 127 == "
; Fused expression:    "== *TokenStringLen 127 IF! "
    mov     ax, [_TokenStringLen]
    cmp     ax, 127
    jne     L953
; RPN'ized expression: "( L955 error ) "
; Expanded expression: " L955  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L955:
    db  "Error: String constant too long",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L955 , error )2 "
    push    L955
    call    _error
    sub     sp, -2
L953:
L948:
; RPN'ized expression: "TokenValueString TokenStringLen ++p + *u ch = "
; Expanded expression: "TokenValueString TokenStringLen ++p(2) + (@-8) *(1) =(1) "
; Fused expression:    "++p(2) *TokenStringLen + TokenValueString ax =(17) *ax *(@-8) "
    mov     ax, [_TokenStringLen]
    inc     word [_TokenStringLen]
    mov     cx, ax
    mov     ax, _TokenValueString
    add     ax, cx
    mov     bx, ax
    mov     al, [bp-8]
    cbw
    mov     [bx], al
    cbw
; RPN'ized expression: "TokenValueString TokenStringLen + *u 0 = "
; Expanded expression: "TokenValueString TokenStringLen *(2) + 0 =(1) "
; Fused expression:    "+ TokenValueString *TokenStringLen =(18) *ax 0 "
    mov     ax, _TokenValueString
    add     ax, [_TokenStringLen]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], al
    cbw
; }
    jmp     L890
L891:
; if
; RPN'ized expression: "p *u terminator != "
; Expanded expression: "(@-2) *(2) *(1) (@-6) *(1) != "
; Fused expression:    "*(2) (@-2) != *ax *(@-6) IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    movsx   cx, byte [bp-6]
    cmp     ax, cx
    je      L957
; RPN'ized expression: "( L959 error ) "
; Expanded expression: " L959  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L959:
    db  "Error: Unsupported or invalid character/string constant",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L959 , error )2 "
    push    L959
    call    _error
    sub     sp, -2
L957:
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; if
; RPN'ized expression: "terminator 34 != "
; Expanded expression: "(@-6) *(1) 34 != "
; Fused expression:    "!= *(@-6) 34 IF! "
    mov     al, [bp-6]
    cbw
    cmp     ax, 34
    je      L961
; break
    jmp     L889
L961:
; RPN'ized expression: "( 1 SkipSpace ) "
; Expanded expression: " 1  SkipSpace ()2 "
; Fused expression:    "( 1 , SkipSpace )2 "
    push    1
    call    _SkipSpace
    sub     sp, -2
; if
; RPN'ized expression: "p *u 34 != "
; Expanded expression: "(@-2) *(2) *(1) 34 != "
; Fused expression:    "*(2) (@-2) != *ax 34 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 34
    je      L963
; break
    jmp     L889
L963:
; }
    jmp     L887
L889:
; if
; RPN'ized expression: "terminator 39 == "
; Expanded expression: "(@-6) *(1) 39 == "
; Fused expression:    "== *(@-6) 39 IF! "
    mov     al, [bp-6]
    cbw
    cmp     ax, 39
    jne     L965
; {
; if
; RPN'ized expression: "TokenStringLen 1 != "
; Expanded expression: "TokenStringLen *(2) 1 != "
; Fused expression:    "!= *TokenStringLen 1 IF! "
    mov     ax, [_TokenStringLen]
    cmp     ax, 1
    je      L967
; RPN'ized expression: "( L969 error ) "
; Expanded expression: " L969  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L969:
    db  "Error: Character constant too short",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L969 , error )2 "
    push    L969
    call    _error
    sub     sp, -2
L967:
; RPN'ized expression: "TokenValueInt TokenValueString 0 + *u = "
; Expanded expression: "TokenValueInt TokenValueString 0 + *(1) =(2) "
; Fused expression:    "+ TokenValueString 0 =(33) *TokenValueInt *ax "
    mov     ax, _TokenValueString
    add     ax, 0
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [_TokenValueInt], ax
; return
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; Fused expression:    "2 "
    mov     ax, 2
    jmp     L769
; }
L965:
; return
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; Fused expression:    "3 "
    mov     ax, 3
    jmp     L769
    sub     sp, -4
; }
L883:
; if
; RPN'ized expression: "p *u 95 == ( p *u isalpha ) || "
; Expanded expression: "(@-2) *(2) *(1) 95 == _Bool [sh||->973]  (@-2) *(2) *(1)  isalpha ()2 _Bool ||[973] "
; Fused expression:    "*(2) (@-2) == *ax 95 _Bool [sh||->973] ( *(2) (@-2) *(1) ax , isalpha )2 _Bool ||[973] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 95
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L973
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isalpha
    sub     sp, -2
    test    ax, ax
    setne   al
    cbw
L973:
; JumpIfZero
    test    ax, ax
    je      L971
; {
; loc             tok : (@-6): int
    sub     sp, 2
; loc             midx : (@-8): int
    sub     sp, 2
; RPN'ized expression: "( GetIdent ) "
; Expanded expression: " GetIdent ()0 "
; Fused expression:    "( GetIdent )0 "
    call    _GetIdent
; RPN'ized expression: "tok ( TokenIdentName GetTokenByWord ) = "
; Expanded expression: "(@-6)  TokenIdentName  GetTokenByWord ()2 =(2) "
; Fused expression:    "( TokenIdentName , GetTokenByWord )2 =(34) *(@-6) ax "
    push    _TokenIdentName
    call    _GetTokenByWord
    sub     sp, -2
    mov     [bp-6], ax
; if
; RPN'ized expression: "midx ( TokenIdentName FindMacro ) = 0 >= "
; Expanded expression: "(@-8)  TokenIdentName  FindMacro ()2 =(2) 0 >= "
; Fused expression:    "( TokenIdentName , FindMacro )2 =(34) *(@-8) ax >= ax 0 IF! "
    push    _TokenIdentName
    call    _FindMacro
    sub     sp, -2
    mov     [bp-8], ax
    cmp     ax, 0
    jl      L974
; {
; loc                 len : (@-10): int
    sub     sp, 2
; =
; RPN'ized expression: "MacroTable midx + *u "
; Expanded expression: "MacroTable (@-8) *(2) + *(1) "
; Fused expression:    "+ MacroTable *(@-8) =(33) *(@-10) *ax "
    mov     ax, _MacroTable
    add     ax, [bp-8]
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-10], ax
; if
; RPN'ized expression: "256 CharQueueLen - len 1 + < "
; Expanded expression: "256 CharQueueLen *(2) - (@-10) *(2) 1 + < "
; Fused expression:    "- 256 *CharQueueLen push-ax + *(@-10) 1 < *sp ax IF! "
    mov     ax, 256
    sub     ax, [_CharQueueLen]
    push    ax
    mov     ax, [bp-10]
    add     ax, 1
    mov     cx, ax
    pop     ax
    cmp     ax, cx
    jge     L976
; RPN'ized expression: "( TokenIdentName , L978 error ) "
; Expanded expression: " TokenIdentName  L978  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L978:
    db  "Error: Macro expansion is too long at '%s'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( TokenIdentName , L978 , error )4 "
    push    _TokenIdentName
    push    L978
    call    _error
    sub     sp, -4
L976:
; RPN'ized expression: "( CharQueueLen , CharQueue , CharQueue len + 1 + memmove ) "
; Expanded expression: " CharQueueLen *(2)  CharQueue  CharQueue (@-10) *(2) + 1 +  memmove ()6 "
; Fused expression:    "( *(2) CharQueueLen , CharQueue , + CharQueue *(@-10) + ax 1 , memmove )6 "
    push    word [_CharQueueLen]
    push    _CharQueue
    mov     ax, _CharQueue
    add     ax, [bp-10]
    add     ax, 1
    push    ax
    call    _memmove
    sub     sp, -6
; RPN'ized expression: "( len , MacroTable midx + 1 + , CharQueue memcpy ) "
; Expanded expression: " (@-10) *(2)  MacroTable (@-8) *(2) + 1 +  CharQueue  memcpy ()6 "
; Fused expression:    "( *(2) (@-10) , + MacroTable *(@-8) + ax 1 , CharQueue , memcpy )6 "
    push    word [bp-10]
    mov     ax, _MacroTable
    add     ax, [bp-8]
    add     ax, 1
    push    ax
    push    _CharQueue
    call    _memcpy
    sub     sp, -6
; RPN'ized expression: "CharQueue len + *u 32 = "
; Expanded expression: "CharQueue (@-10) *(2) + 32 =(1) "
; Fused expression:    "+ CharQueue *(@-10) =(18) *ax 32 "
    mov     ax, _CharQueue
    add     ax, [bp-10]
    mov     bx, ax
    mov     ax, 32
    mov     [bx], al
    cbw
; RPN'ized expression: "CharQueueLen len 1 + += "
; Expanded expression: "CharQueueLen (@-10) *(2) 1 + +=(2) "
; Fused expression:    "+ *(@-10) 1 +=(34) *CharQueueLen ax "
    mov     ax, [bp-10]
    add     ax, 1
    mov     cx, ax
    mov     ax, [_CharQueueLen]
    add     ax, cx
    mov     [_CharQueueLen], ax
; continue
    sub     sp, -6
    jmp     L770
    sub     sp, -2
; }
L974:
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L769
    sub     sp, -4
; }
L971:
; if
; RPN'ized expression: "p *u 35 == "
; Expanded expression: "(@-2) *(2) *(1) 35 == "
; Fused expression:    "*(2) (@-2) == *ax 35 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 35
    jne     L980
; {
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; RPN'ized expression: "( 0 SkipSpace ) "
; Expanded expression: " 0  SkipSpace ()2 "
; Fused expression:    "( 0 , SkipSpace )2 "
    push    0
    call    _SkipSpace
    sub     sp, -2
; RPN'ized expression: "( GetIdent ) "
; Expanded expression: " GetIdent ()0 "
; Fused expression:    "( GetIdent )0 "
    call    _GetIdent
; if
; RPN'ized expression: "( L984 , TokenIdentName strcmp ) "
; Expanded expression: " L984  TokenIdentName  strcmp ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L984:
    db  "define",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L984 , TokenIdentName , strcmp )4 "
    push    L984
    push    _TokenIdentName
    call    _strcmp
    sub     sp, -4
; JumpIfZero
    test    ax, ax
    je      L982
; RPN'ized expression: "( L986 error ) "
; Expanded expression: " L986  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L986:
    db  "Error: Unsupported or invalid preprocessor directive",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L986 , error )2 "
    push    L986
    call    _error
    sub     sp, -2
L982:
; RPN'ized expression: "( 0 SkipSpace ) "
; Expanded expression: " 0  SkipSpace ()2 "
; Fused expression:    "( 0 , SkipSpace )2 "
    push    0
    call    _SkipSpace
    sub     sp, -2
; RPN'ized expression: "( GetIdent ) "
; Expanded expression: " GetIdent ()0 "
; Fused expression:    "( GetIdent )0 "
    call    _GetIdent
; if
; RPN'ized expression: "( TokenIdentName FindMacro ) 0 >= "
; Expanded expression: " TokenIdentName  FindMacro ()2 0 >= "
; Fused expression:    "( TokenIdentName , FindMacro )2 >= ax 0 IF! "
    push    _TokenIdentName
    call    _FindMacro
    sub     sp, -2
    cmp     ax, 0
    jl      L988
; RPN'ized expression: "( TokenIdentName , L990 error ) "
; Expanded expression: " TokenIdentName  L990  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L990:
    db  "Error: Redefinition of macro '%s'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( TokenIdentName , L990 , error )4 "
    push    _TokenIdentName
    push    L990
    call    _error
    sub     sp, -4
L988:
; if
; RPN'ized expression: "p *u 40 == "
; Expanded expression: "(@-2) *(2) *(1) 40 == "
; Fused expression:    "*(2) (@-2) == *ax 40 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 40
    jne     L992
; RPN'ized expression: "( TokenIdentName , L994 error ) "
; Expanded expression: " TokenIdentName  L994  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L994:
    db  "Error: Unsupported type of macro '%s'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( TokenIdentName , L994 , error )4 "
    push    _TokenIdentName
    push    L994
    call    _error
    sub     sp, -4
L992:
; RPN'ized expression: "( TokenIdentName AddMacroIdent ) "
; Expanded expression: " TokenIdentName  AddMacroIdent ()2 "
; Fused expression:    "( TokenIdentName , AddMacroIdent )2 "
    push    _TokenIdentName
    call    _AddMacroIdent
    sub     sp, -2
; RPN'ized expression: "( 0 SkipSpace ) "
; Expanded expression: " 0  SkipSpace ()2 "
; Fused expression:    "( 0 , SkipSpace )2 "
    push    0
    call    _SkipSpace
    sub     sp, -2
; while
; RPN'ized expression: "( p *u , L998 strchr ) 0 == "
; Expanded expression: " (@-2) *(2) *(1)  L998  strchr ()4 0 == "
L996:
; SEGMENT _TEXT
SEGMENT _DATA
L998:
    db  13,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-2) *(1) ax , L998 , strchr )4 == ax 0 IF! "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L998
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    jne     L997
; {
; RPN'ized expression: "( p *u AddMacroExpansionChar ) "
; Expanded expression: " (@-2) *(2) *(1)  AddMacroExpansionChar ()2 "
; Fused expression:    "( *(2) (@-2) *(1) ax , AddMacroExpansionChar )2 "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _AddMacroExpansionChar
    sub     sp, -2
; RPN'ized expression: "( 1 ShiftCharN ) "
; Expanded expression: " 1  ShiftCharN ()2 "
; Fused expression:    "( 1 , ShiftCharN )2 "
    push    1
    call    _ShiftCharN
    sub     sp, -2
; if
; RPN'ized expression: "p *u 0 != ( p *u , L1002 strchr ) p *u 47 == p 1 + *u 47 == p 1 + *u 42 == || && || && "
; Expanded expression: "(@-2) *(2) *(1) 0 != _Bool [sh&&->1004]  (@-2) *(2) *(1)  L1002  strchr ()4 _Bool [sh||->1005] (@-2) *(2) *(1) 47 == _Bool [sh&&->1006] (@-2) *(2) 1 + *(1) 47 == _Bool [sh||->1007] (@-2) *(2) 1 + *(1) 42 == _Bool ||[1007] _Bool &&[1006] _Bool ||[1005] _Bool &&[1004] "
; SEGMENT _TEXT
SEGMENT _DATA
L1002:
    db  " ",9,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "*(2) (@-2) != *ax 0 _Bool [sh&&->1004] ( *(2) (@-2) *(1) ax , L1002 , strchr )4 _Bool [sh||->1005] *(2) (@-2) == *ax 47 _Bool [sh&&->1006] + *(@-2) 1 == *ax 47 _Bool [sh||->1007] + *(@-2) 1 == *ax 42 _Bool ||[1007] _Bool &&[1006] _Bool ||[1005] _Bool &&[1004] "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 0
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L1004
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L1002
    call    _strchr
    sub     sp, -4
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L1005
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 47
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L1006
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 47
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L1007
    mov     ax, [bp-2]
    add     ax, 1
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 42
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L1007:
    test    ax, ax
    setne   al
    cbw
L1006:
    test    ax, ax
    setne   al
    cbw
L1005:
    test    ax, ax
    setne   al
    cbw
L1004:
; JumpIfZero
    test    ax, ax
    je      L1000
; {
; RPN'ized expression: "( 0 SkipSpace ) "
; Expanded expression: " 0  SkipSpace ()2 "
; Fused expression:    "( 0 , SkipSpace )2 "
    push    0
    call    _SkipSpace
    sub     sp, -2
; RPN'ized expression: "( 32 AddMacroExpansionChar ) "
; Expanded expression: " 32  AddMacroExpansionChar ()2 "
; Fused expression:    "( 32 , AddMacroExpansionChar )2 "
    push    32
    call    _AddMacroExpansionChar
    sub     sp, -2
; }
L1000:
; }
    jmp     L996
L997:
; RPN'ized expression: "( 0 AddMacroExpansionChar ) "
; Expanded expression: " 0  AddMacroExpansionChar ()2 "
; Fused expression:    "( 0 , AddMacroExpansionChar )2 "
    push    0
    call    _AddMacroExpansionChar
    sub     sp, -2
; continue
    jmp     L770
; }
L980:
; RPN'ized expression: "( p *u , L1008 error ) "
; Expanded expression: " (@-2) *(2) *(1)  L1008  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1008:
    db  "Error: Unsupported or invalid character '%c'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-2) *(1) ax , L1008 , error )4 "
    mov     ax, [bp-2]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L1008
    call    _error
    sub     sp, -4
; }
    jmp     L770
L771:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L769
L769:
    leave
    ret
; SEGMENT _TEXT
; glb GenLabel : (
; prm     Label : * char
;     ) void
SEGMENT _TEXT
    global  _GenLabel
_GenLabel:
    push    bp
    mov     bp, sp
; loc     Label : (@4): * char
; if
; RPN'ized expression: "OutputFormat 0 != "
; Expanded expression: "OutputFormat *(2) 0 != "
; Fused expression:    "!= *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    je      L1011
; RPN'ized expression: "( Label , L1013 printf ) "
; Expanded expression: " (@4) *(2)  L1013  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1013:
    db  "    global  _%s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L1013 , printf )4 "
    push    word [bp+4]
    push    L1013
    call    _printf
    sub     sp, -4
L1011:
; RPN'ized expression: "( Label , L1015 printf ) "
; Expanded expression: " (@4) *(2)  L1015  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1015:
    db  "_%s:",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L1015 , printf )4 "
    push    word [bp+4]
    push    L1015
    call    _printf
    sub     sp, -4
L1010:
    leave
    ret
; SEGMENT _TEXT
; glb GenExtern : (
; prm     Label : * char
;     ) void
SEGMENT _TEXT
    global  _GenExtern
_GenExtern:
    push    bp
    mov     bp, sp
; loc     Label : (@4): * char
; if
; RPN'ized expression: "OutputFormat 0 != "
; Expanded expression: "OutputFormat *(2) 0 != "
; Fused expression:    "!= *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    je      L1018
; RPN'ized expression: "( Label , L1020 printf ) "
; Expanded expression: " (@4) *(2)  L1020  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1020:
    db  "    extern  _%s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L1020 , printf )4 "
    push    word [bp+4]
    push    L1020
    call    _printf
    sub     sp, -4
L1018:
L1017:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintLabel : (
; prm     Label : * char
;     ) void
SEGMENT _TEXT
    global  _GenPrintLabel
_GenPrintLabel:
    push    bp
    mov     bp, sp
; loc     Label : (@4): * char
; if
; RPN'ized expression: "( Label *u isdigit ) "
; Expanded expression: " (@4) *(2) *(1)  isdigit ()2 "
; Fused expression:    "( *(2) (@4) *(1) ax , isdigit )2 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isdigit
    sub     sp, -2
; JumpIfZero
    test    ax, ax
    je      L1023
; RPN'ized expression: "( Label , L1025 printf ) "
; Expanded expression: " (@4) *(2)  L1025  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1025:
    db  "L%s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L1025 , printf )4 "
    push    word [bp+4]
    push    L1025
    call    _printf
    sub     sp, -4
    jmp     L1024
L1023:
; else
; RPN'ized expression: "( Label , L1027 printf ) "
; Expanded expression: " (@4) *(2)  L1027  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1027:
    db  "_%s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L1027 , printf )4 "
    push    word [bp+4]
    push    L1027
    call    _printf
    sub     sp, -4
L1024:
L1022:
    leave
    ret
; SEGMENT _TEXT
; glb GenNumLabel : (
; prm     Label : int
;     ) void
SEGMENT _TEXT
    global  _GenNumLabel
_GenNumLabel:
    push    bp
    mov     bp, sp
; loc     Label : (@4): int
; RPN'ized expression: "( Label , L1030 printf ) "
; Expanded expression: " (@4) *(2)  L1030  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1030:
    db  "L%d:",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L1030 , printf )4 "
    push    word [bp+4]
    push    L1030
    call    _printf
    sub     sp, -4
L1029:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintNumLabel : (
; prm     label : int
;     ) void
SEGMENT _TEXT
    global  _GenPrintNumLabel
_GenPrintNumLabel:
    push    bp
    mov     bp, sp
; loc     label : (@4): int
; RPN'ized expression: "( label , L1033 printf ) "
; Expanded expression: " (@4) *(2)  L1033  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1033:
    db  "L%d",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L1033 , printf )4 "
    push    word [bp+4]
    push    L1033
    call    _printf
    sub     sp, -4
L1032:
    leave
    ret
; SEGMENT _TEXT
; glb GenZeroData : (
; prm     Size : int
;     ) void
SEGMENT _TEXT
    global  _GenZeroData
_GenZeroData:
    push    bp
    mov     bp, sp
; loc     Size : (@4): int
; RPN'ized expression: "( Size , L1036 printf ) "
; Expanded expression: " (@4) *(2)  L1036  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1036:
    db  "    times %d db 0",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L1036 , printf )4 "
    push    word [bp+4]
    push    L1036
    call    _printf
    sub     sp, -4
L1035:
    leave
    ret
; SEGMENT _TEXT
; glb GenIntData : (
; prm     Size : int
; prm     Val : int
;     ) void
SEGMENT _TEXT
    global  _GenIntData
_GenIntData:
    push    bp
    mov     bp, sp
; loc     Size : (@4): int
; loc     Val : (@6): int
; if
; RPN'ized expression: "Size 1 == "
; Expanded expression: "(@4) *(2) 1 == "
; Fused expression:    "== *(@4) 1 IF! "
    mov     ax, [bp+4]
    cmp     ax, 1
    jne     L1039
; RPN'ized expression: "( Val , L1041 printf ) "
; Expanded expression: " (@6) *(2)  L1041  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1041:
    db  "    db  %d",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@6) , L1041 , printf )4 "
    push    word [bp+6]
    push    L1041
    call    _printf
    sub     sp, -4
    jmp     L1040
L1039:
; else
; if
; RPN'ized expression: "Size 2 == "
; Expanded expression: "(@4) *(2) 2 == "
; Fused expression:    "== *(@4) 2 IF! "
    mov     ax, [bp+4]
    cmp     ax, 2
    jne     L1043
; RPN'ized expression: "( Val , L1045 printf ) "
; Expanded expression: " (@6) *(2)  L1045  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1045:
    db  "    dw  %d",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@6) , L1045 , printf )4 "
    push    word [bp+6]
    push    L1045
    call    _printf
    sub     sp, -4
L1043:
L1040:
L1038:
    leave
    ret
; SEGMENT _TEXT
; glb GenAddrData : (
; prm     Size : int
; prm     Label : * char
;     ) void
SEGMENT _TEXT
    global  _GenAddrData
_GenAddrData:
    push    bp
    mov     bp, sp
; loc     Size : (@4): int
; loc     Label : (@6): * char
; if
; RPN'ized expression: "Size 1 == "
; Expanded expression: "(@4) *(2) 1 == "
; Fused expression:    "== *(@4) 1 IF! "
    mov     ax, [bp+4]
    cmp     ax, 1
    jne     L1048
; RPN'ized expression: "( L1050 printf ) "
; Expanded expression: " L1050  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1050:
    db  "    db  ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1050 , printf )2 "
    push    L1050
    call    _printf
    sub     sp, -2
    jmp     L1049
L1048:
; else
; if
; RPN'ized expression: "Size 2 == "
; Expanded expression: "(@4) *(2) 2 == "
; Fused expression:    "== *(@4) 2 IF! "
    mov     ax, [bp+4]
    cmp     ax, 2
    jne     L1052
; RPN'ized expression: "( L1054 printf ) "
; Expanded expression: " L1054  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1054:
    db  "    dw  ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1054 , printf )2 "
    push    L1054
    call    _printf
    sub     sp, -2
L1052:
L1049:
; RPN'ized expression: "( Label GenPrintLabel ) "
; Expanded expression: " (@6) *(2)  GenPrintLabel ()2 "
; Fused expression:    "( *(2) (@6) , GenPrintLabel )2 "
    push    word [bp+6]
    call    _GenPrintLabel
    sub     sp, -2
; RPN'ized expression: "( L1056 printf ) "
; Expanded expression: " L1056  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1056:
    db  10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1056 , printf )2 "
    push    L1056
    call    _printf
    sub     sp, -2
L1047:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintInstr : (
; prm     instr : int
; prm     val : int
;     ) void
SEGMENT _TEXT
    global  _GenPrintInstr
_GenPrintInstr:
    push    bp
    mov     bp, sp
; loc     instr : (@4): int
; loc     val : (@6): int
; loc     p : (@-2): * char
    sub     sp, 2
; =
; RPN'ized expression: "L1059 "
; Expanded expression: "L1059 "
; SEGMENT _TEXT
SEGMENT _DATA
L1059:
    db  0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1059 "
    mov     ax, L1059
    mov     [bp-2], ax
; switch
; RPN'ized expression: "instr "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L1063
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    jmp     L1064
L1063:
    cmp     ax, 0
    jne     L1065
L1064:
; RPN'ized expression: "p L1067 = "
; Expanded expression: "(@-2) L1067 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1067:
    db  "mov",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1067 "
    mov     ax, L1067
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L1066
L1065:
    cmp     ax, 1
    jne     L1069
L1066:
; RPN'ized expression: "p L1071 = "
; Expanded expression: "(@-2) L1071 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1071:
    db  "movsx",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1071 "
    mov     ax, L1071
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L1070
L1069:
    cmp     ax, 2
    jne     L1073
L1070:
; RPN'ized expression: "p L1075 = "
; Expanded expression: "(@-2) L1075 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1075:
    db  "movzx",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1075 "
    mov     ax, L1075
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
    jmp     L1074
L1073:
    cmp     ax, 3
    jne     L1077
L1074:
; RPN'ized expression: "p L1079 = "
; Expanded expression: "(@-2) L1079 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1079:
    db  "xchg",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1079 "
    mov     ax, L1079
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L1078
L1077:
    cmp     ax, 4
    jne     L1081
L1078:
; RPN'ized expression: "p L1083 = "
; Expanded expression: "(@-2) L1083 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1083:
    db  "lea",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1083 "
    mov     ax, L1083
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L1082
L1081:
    cmp     ax, 5
    jne     L1085
L1082:
; RPN'ized expression: "p L1087 = "
; Expanded expression: "(@-2) L1087 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1087:
    db  "push",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1087 "
    mov     ax, L1087
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L1086
L1085:
    cmp     ax, 6
    jne     L1089
L1086:
; RPN'ized expression: "p L1091 = "
; Expanded expression: "(@-2) L1091 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1091:
    db  "pop",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1091 "
    mov     ax, L1091
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L1090
L1089:
    cmp     ax, 7
    jne     L1093
L1090:
; RPN'ized expression: "p L1095 = "
; Expanded expression: "(@-2) L1095 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1095:
    db  "inc",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1095 "
    mov     ax, L1095
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L1094
L1093:
    cmp     ax, 8
    jne     L1097
L1094:
; RPN'ized expression: "p L1099 = "
; Expanded expression: "(@-2) L1099 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1099:
    db  "dec",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1099 "
    mov     ax, L1099
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L1098
L1097:
    cmp     ax, 9
    jne     L1101
L1098:
; RPN'ized expression: "p L1103 = "
; Expanded expression: "(@-2) L1103 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1103:
    db  "add",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1103 "
    mov     ax, L1103
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L1102
L1101:
    cmp     ax, 10
    jne     L1105
L1102:
; RPN'ized expression: "p L1107 = "
; Expanded expression: "(@-2) L1107 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1107:
    db  "sub",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1107 "
    mov     ax, L1107
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L1106
L1105:
    cmp     ax, 11
    jne     L1109
L1106:
; RPN'ized expression: "p L1111 = "
; Expanded expression: "(@-2) L1111 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1111:
    db  "and",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1111 "
    mov     ax, L1111
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L1110
L1109:
    cmp     ax, 12
    jne     L1113
L1110:
; RPN'ized expression: "p L1115 = "
; Expanded expression: "(@-2) L1115 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1115:
    db  "xor",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1115 "
    mov     ax, L1115
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L1114
L1113:
    cmp     ax, 13
    jne     L1117
L1114:
; RPN'ized expression: "p L1119 = "
; Expanded expression: "(@-2) L1119 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1119:
    db  "or",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1119 "
    mov     ax, L1119
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
    jmp     L1118
L1117:
    cmp     ax, 14
    jne     L1121
L1118:
; RPN'ized expression: "p L1123 = "
; Expanded expression: "(@-2) L1123 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1123:
    db  "cmp",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1123 "
    mov     ax, L1123
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "15 "
; Expanded expression: "15 "
; Expression value: 15
    jmp     L1122
L1121:
    cmp     ax, 15
    jne     L1125
L1122:
; RPN'ized expression: "p L1127 = "
; Expanded expression: "(@-2) L1127 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1127:
    db  "test",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1127 "
    mov     ax, L1127
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1126
L1125:
    cmp     ax, 16
    jne     L1129
L1126:
; RPN'ized expression: "p L1131 = "
; Expanded expression: "(@-2) L1131 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1131:
    db  "mul",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1131 "
    mov     ax, L1131
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "17 "
; Expanded expression: "17 "
; Expression value: 17
    jmp     L1130
L1129:
    cmp     ax, 17
    jne     L1133
L1130:
; RPN'ized expression: "p L1135 = "
; Expanded expression: "(@-2) L1135 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1135:
    db  "imul",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1135 "
    mov     ax, L1135
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "18 "
; Expanded expression: "18 "
; Expression value: 18
    jmp     L1134
L1133:
    cmp     ax, 18
    jne     L1137
L1134:
; RPN'ized expression: "p L1139 = "
; Expanded expression: "(@-2) L1139 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1139:
    db  "idiv",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1139 "
    mov     ax, L1139
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "19 "
; Expanded expression: "19 "
; Expression value: 19
    jmp     L1138
L1137:
    cmp     ax, 19
    jne     L1141
L1138:
; RPN'ized expression: "p L1143 = "
; Expanded expression: "(@-2) L1143 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1143:
    db  "shl",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1143 "
    mov     ax, L1143
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
    jmp     L1142
L1141:
    cmp     ax, 20
    jne     L1145
L1142:
; RPN'ized expression: "p L1147 = "
; Expanded expression: "(@-2) L1147 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1147:
    db  "sar",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1147 "
    mov     ax, L1147
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "21 "
; Expanded expression: "21 "
; Expression value: 21
    jmp     L1146
L1145:
    cmp     ax, 21
    jne     L1149
L1146:
; RPN'ized expression: "p L1151 = "
; Expanded expression: "(@-2) L1151 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1151:
    db  "neg",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1151 "
    mov     ax, L1151
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "22 "
; Expanded expression: "22 "
; Expression value: 22
    jmp     L1150
L1149:
    cmp     ax, 22
    jne     L1153
L1150:
; RPN'ized expression: "p L1155 = "
; Expanded expression: "(@-2) L1155 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1155:
    db  "not",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1155 "
    mov     ax, L1155
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "23 "
; Expanded expression: "23 "
; Expression value: 23
    jmp     L1154
L1153:
    cmp     ax, 23
    jne     L1157
L1154:
; RPN'ized expression: "p L1159 = "
; Expanded expression: "(@-2) L1159 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1159:
    db  "cbw",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1159 "
    mov     ax, L1159
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "24 "
; Expanded expression: "24 "
; Expression value: 24
    jmp     L1158
L1157:
    cmp     ax, 24
    jne     L1161
L1158:
; RPN'ized expression: "p L1163 = "
; Expanded expression: "(@-2) L1163 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1163:
    db  "cwd",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1163 "
    mov     ax, L1163
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "28 "
; Expanded expression: "28 "
; Expression value: 28
    jmp     L1162
L1161:
    cmp     ax, 28
    jne     L1165
L1162:
; RPN'ized expression: "p L1167 = "
; Expanded expression: "(@-2) L1167 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1167:
    db  "leave",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1167 "
    mov     ax, L1167
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "29 "
; Expanded expression: "29 "
; Expression value: 29
    jmp     L1166
L1165:
    cmp     ax, 29
    jne     L1169
L1166:
; RPN'ized expression: "p L1171 = "
; Expanded expression: "(@-2) L1171 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1171:
    db  "call",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1171 "
    mov     ax, L1171
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "30 "
; Expanded expression: "30 "
; Expression value: 30
    jmp     L1170
L1169:
    cmp     ax, 30
    jne     L1173
L1170:
; RPN'ized expression: "p L1175 = "
; Expanded expression: "(@-2) L1175 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1175:
    db  "ret",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1175 "
    mov     ax, L1175
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "31 "
; Expanded expression: "31 "
; Expression value: 31
    jmp     L1174
L1173:
    cmp     ax, 31
    jne     L1177
L1174:
; RPN'ized expression: "p L1179 = "
; Expanded expression: "(@-2) L1179 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1179:
    db  "jmp",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1179 "
    mov     ax, L1179
    mov     [bp-2], ax
; break
    jmp     L1061
; case
; RPN'ized expression: "26 "
; Expanded expression: "26 "
; Expression value: 26
    jmp     L1178
L1177:
    cmp     ax, 26
    jne     L1181
L1178:
; switch
; RPN'ized expression: "val "
; Expanded expression: "(@6) *(2) "
; Fused expression:    "*(2) (@6) "
    mov     ax, [bp+6]
    jmp     L1185
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L1186
L1185:
    cmp     ax, 60
    jne     L1187
L1186:
; RPN'ized expression: "p L1189 = "
; Expanded expression: "(@-2) L1189 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1189:
    db  "jl",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1189 "
    mov     ax, L1189
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L1188
L1187:
    cmp     ax, 85
    jne     L1191
L1188:
; RPN'ized expression: "p L1193 = "
; Expanded expression: "(@-2) L1193 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1193:
    db  "jb",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1193 "
    mov     ax, L1193
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L1192
L1191:
    cmp     ax, 62
    jne     L1195
L1192:
; RPN'ized expression: "p L1197 = "
; Expanded expression: "(@-2) L1197 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1197:
    db  "jg",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1197 "
    mov     ax, L1197
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L1196
L1195:
    cmp     ax, 86
    jne     L1199
L1196:
; RPN'ized expression: "p L1201 = "
; Expanded expression: "(@-2) L1201 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1201:
    db  "ja",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1201 "
    mov     ax, L1201
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L1200
L1199:
    cmp     ax, 10
    jne     L1203
L1200:
; RPN'ized expression: "p L1205 = "
; Expanded expression: "(@-2) L1205 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1205:
    db  "jle",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1205 "
    mov     ax, L1205
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L1204
L1203:
    cmp     ax, 87
    jne     L1207
L1204:
; RPN'ized expression: "p L1209 = "
; Expanded expression: "(@-2) L1209 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1209:
    db  "jbe",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1209 "
    mov     ax, L1209
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L1208
L1207:
    cmp     ax, 11
    jne     L1211
L1208:
; RPN'ized expression: "p L1213 = "
; Expanded expression: "(@-2) L1213 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1213:
    db  "jge",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1213 "
    mov     ax, L1213
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L1212
L1211:
    cmp     ax, 88
    jne     L1215
L1212:
; RPN'ized expression: "p L1217 = "
; Expanded expression: "(@-2) L1217 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1217:
    db  "jae",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1217 "
    mov     ax, L1217
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L1216
L1215:
    cmp     ax, 8
    jne     L1219
L1216:
; RPN'ized expression: "p L1221 = "
; Expanded expression: "(@-2) L1221 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1221:
    db  "je",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1221 "
    mov     ax, L1221
    mov     [bp-2], ax
; break
    jmp     L1183
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L1220
L1219:
    cmp     ax, 9
    jne     L1223
L1220:
; RPN'ized expression: "p L1225 = "
; Expanded expression: "(@-2) L1225 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1225:
    db  "jne",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1225 "
    mov     ax, L1225
    mov     [bp-2], ax
; break
    jmp     L1183
; }
    jmp     L1183
L1223:
L1183:
; break
    jmp     L1061
; case
; RPN'ized expression: "27 "
; Expanded expression: "27 "
; Expression value: 27
    jmp     L1182
L1181:
    cmp     ax, 27
    jne     L1227
L1182:
; switch
; RPN'ized expression: "val "
; Expanded expression: "(@6) *(2) "
; Fused expression:    "*(2) (@6) "
    mov     ax, [bp+6]
    jmp     L1231
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L1232
L1231:
    cmp     ax, 60
    jne     L1233
L1232:
; RPN'ized expression: "p L1235 = "
; Expanded expression: "(@-2) L1235 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1235:
    db  "jge",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1235 "
    mov     ax, L1235
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L1234
L1233:
    cmp     ax, 85
    jne     L1237
L1234:
; RPN'ized expression: "p L1239 = "
; Expanded expression: "(@-2) L1239 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1239:
    db  "jae",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1239 "
    mov     ax, L1239
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L1238
L1237:
    cmp     ax, 62
    jne     L1241
L1238:
; RPN'ized expression: "p L1243 = "
; Expanded expression: "(@-2) L1243 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1243:
    db  "jle",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1243 "
    mov     ax, L1243
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L1242
L1241:
    cmp     ax, 86
    jne     L1245
L1242:
; RPN'ized expression: "p L1247 = "
; Expanded expression: "(@-2) L1247 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1247:
    db  "jbe",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1247 "
    mov     ax, L1247
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L1246
L1245:
    cmp     ax, 10
    jne     L1249
L1246:
; RPN'ized expression: "p L1251 = "
; Expanded expression: "(@-2) L1251 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1251:
    db  "jg",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1251 "
    mov     ax, L1251
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L1250
L1249:
    cmp     ax, 87
    jne     L1253
L1250:
; RPN'ized expression: "p L1255 = "
; Expanded expression: "(@-2) L1255 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1255:
    db  "ja",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1255 "
    mov     ax, L1255
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L1254
L1253:
    cmp     ax, 11
    jne     L1257
L1254:
; RPN'ized expression: "p L1259 = "
; Expanded expression: "(@-2) L1259 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1259:
    db  "jl",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1259 "
    mov     ax, L1259
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L1258
L1257:
    cmp     ax, 88
    jne     L1261
L1258:
; RPN'ized expression: "p L1263 = "
; Expanded expression: "(@-2) L1263 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1263:
    db  "jb",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1263 "
    mov     ax, L1263
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L1262
L1261:
    cmp     ax, 8
    jne     L1265
L1262:
; RPN'ized expression: "p L1267 = "
; Expanded expression: "(@-2) L1267 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1267:
    db  "jne",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1267 "
    mov     ax, L1267
    mov     [bp-2], ax
; break
    jmp     L1229
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L1266
L1265:
    cmp     ax, 9
    jne     L1269
L1266:
; RPN'ized expression: "p L1271 = "
; Expanded expression: "(@-2) L1271 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1271:
    db  "je",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1271 "
    mov     ax, L1271
    mov     [bp-2], ax
; break
    jmp     L1229
; }
    jmp     L1229
L1269:
L1229:
; break
    jmp     L1061
; case
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
    jmp     L1228
L1227:
    cmp     ax, 25
    jne     L1273
L1228:
; switch
; RPN'ized expression: "val "
; Expanded expression: "(@6) *(2) "
; Fused expression:    "*(2) (@6) "
    mov     ax, [bp+6]
    jmp     L1277
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L1278
L1277:
    cmp     ax, 60
    jne     L1279
L1278:
; RPN'ized expression: "p L1281 = "
; Expanded expression: "(@-2) L1281 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1281:
    db  "setl",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1281 "
    mov     ax, L1281
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L1280
L1279:
    cmp     ax, 85
    jne     L1283
L1280:
; RPN'ized expression: "p L1285 = "
; Expanded expression: "(@-2) L1285 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1285:
    db  "setb",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1285 "
    mov     ax, L1285
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L1284
L1283:
    cmp     ax, 62
    jne     L1287
L1284:
; RPN'ized expression: "p L1289 = "
; Expanded expression: "(@-2) L1289 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1289:
    db  "setg",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1289 "
    mov     ax, L1289
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L1288
L1287:
    cmp     ax, 86
    jne     L1291
L1288:
; RPN'ized expression: "p L1293 = "
; Expanded expression: "(@-2) L1293 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1293:
    db  "seta",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1293 "
    mov     ax, L1293
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L1292
L1291:
    cmp     ax, 10
    jne     L1295
L1292:
; RPN'ized expression: "p L1297 = "
; Expanded expression: "(@-2) L1297 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1297:
    db  "setle",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1297 "
    mov     ax, L1297
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L1296
L1295:
    cmp     ax, 87
    jne     L1299
L1296:
; RPN'ized expression: "p L1301 = "
; Expanded expression: "(@-2) L1301 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1301:
    db  "setbe",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1301 "
    mov     ax, L1301
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L1300
L1299:
    cmp     ax, 11
    jne     L1303
L1300:
; RPN'ized expression: "p L1305 = "
; Expanded expression: "(@-2) L1305 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1305:
    db  "setge",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1305 "
    mov     ax, L1305
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L1304
L1303:
    cmp     ax, 88
    jne     L1307
L1304:
; RPN'ized expression: "p L1309 = "
; Expanded expression: "(@-2) L1309 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1309:
    db  "setae",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1309 "
    mov     ax, L1309
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L1308
L1307:
    cmp     ax, 8
    jne     L1311
L1308:
; RPN'ized expression: "p L1313 = "
; Expanded expression: "(@-2) L1313 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1313:
    db  "sete",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1313 "
    mov     ax, L1313
    mov     [bp-2], ax
; break
    jmp     L1275
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L1312
L1311:
    cmp     ax, 9
    jne     L1315
L1312:
; RPN'ized expression: "p L1317 = "
; Expanded expression: "(@-2) L1317 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L1317:
    db  "setne",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *(@-2) L1317 "
    mov     ax, L1317
    mov     [bp-2], ax
; break
    jmp     L1275
; }
    jmp     L1275
L1315:
L1275:
; break
    jmp     L1061
; }
    jmp     L1061
L1273:
L1061:
; switch
; RPN'ized expression: "instr "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L1321
; {
; case
; RPN'ized expression: "23 "
; Expanded expression: "23 "
; Expression value: 23
    jmp     L1322
L1321:
    cmp     ax, 23
    jne     L1323
L1322:
; case
; RPN'ized expression: "24 "
; Expanded expression: "24 "
; Expression value: 24
    jmp     L1324
L1323:
    cmp     ax, 24
    jne     L1325
L1324:
; case
; RPN'ized expression: "28 "
; Expanded expression: "28 "
; Expression value: 28
    jmp     L1326
L1325:
    cmp     ax, 28
    jne     L1327
L1326:
; case
; RPN'ized expression: "30 "
; Expanded expression: "30 "
; Expression value: 30
    jmp     L1328
L1327:
    cmp     ax, 30
    jne     L1329
L1328:
; RPN'ized expression: "( p , L1331 printf ) "
; Expanded expression: " (@-2) *(2)  L1331  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1331:
    db  "    %s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-2) , L1331 , printf )4 "
    push    word [bp-2]
    push    L1331
    call    _printf
    sub     sp, -4
; break
    jmp     L1319
; default
L1320:
; RPN'ized expression: "( p , L1333 printf ) "
; Expanded expression: " (@-2) *(2)  L1333  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1333:
    db  "    %-7s ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-2) , L1333 , printf )4 "
    push    word [bp-2]
    push    L1333
    call    _printf
    sub     sp, -4
; break
    jmp     L1319
; }
    jmp     L1319
L1329:
    jmp     L1320
L1319:
L1058:
    leave
    ret
; SEGMENT _TEXT
; glb GenSelectByteOrWord : (
; prm     op : int
; prm     opSz : int
;     ) int
SEGMENT _TEXT
    global  _GenSelectByteOrWord
_GenSelectByteOrWord:
    push    bp
    mov     bp, sp
; loc     op : (@4): int
; loc     opSz : (@6): int
; switch
; RPN'ized expression: "op "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L1338
; {
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L1339
L1338:
    cmp     ax, 9
    jne     L1340
L1339:
; RPN'ized expression: "op 0 = "
; Expanded expression: "(@4) 0 =(2) "
; Fused expression:    "=(34) *(@4) 0 "
    mov     ax, 0
    mov     [bp+4], ax
; if
; RPN'ized expression: "opSz 1 != "
; Expanded expression: "(@6) *(2) 1 != "
; Fused expression:    "!= *(@6) 1 IF! "
    mov     ax, [bp+6]
    cmp     ax, 1
    je      L1342
; RPN'ized expression: "op 3 = "
; Expanded expression: "(@4) 3 =(2) "
; Fused expression:    "=(34) *(@4) 3 "
    mov     ax, 3
    mov     [bp+4], ax
L1342:
; break
    jmp     L1336
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L1341
L1340:
    cmp     ax, 10
    jne     L1344
L1341:
; RPN'ized expression: "op 2 = "
; Expanded expression: "(@4) 2 =(2) "
; Fused expression:    "=(34) *(@4) 2 "
    mov     ax, 2
    mov     [bp+4], ax
; if
; RPN'ized expression: "opSz 1 != "
; Expanded expression: "(@6) *(2) 1 != "
; Fused expression:    "!= *(@6) 1 IF! "
    mov     ax, [bp+6]
    cmp     ax, 1
    je      L1346
; RPN'ized expression: "op 5 = "
; Expanded expression: "(@4) 5 =(2) "
; Fused expression:    "=(34) *(@4) 5 "
    mov     ax, 5
    mov     [bp+4], ax
L1346:
; break
    jmp     L1336
; case
; RPN'ized expression: "17 "
; Expanded expression: "17 "
; Expression value: 17
    jmp     L1345
L1344:
    cmp     ax, 17
    jne     L1348
L1345:
; RPN'ized expression: "op 15 = "
; Expanded expression: "(@4) 15 =(2) "
; Fused expression:    "=(34) *(@4) 15 "
    mov     ax, 15
    mov     [bp+4], ax
; if
; RPN'ized expression: "opSz 1 != "
; Expanded expression: "(@6) *(2) 1 != "
; Fused expression:    "!= *(@6) 1 IF! "
    mov     ax, [bp+6]
    cmp     ax, 1
    je      L1350
; RPN'ized expression: "op 16 = "
; Expanded expression: "(@4) 16 =(2) "
; Fused expression:    "=(34) *(@4) 16 "
    mov     ax, 16
    mov     [bp+4], ax
L1350:
; break
    jmp     L1336
; case
; RPN'ized expression: "21 "
; Expanded expression: "21 "
; Expression value: 21
    jmp     L1349
L1348:
    cmp     ax, 21
    jne     L1352
L1349:
; RPN'ized expression: "op 19 = "
; Expanded expression: "(@4) 19 =(2) "
; Fused expression:    "=(34) *(@4) 19 "
    mov     ax, 19
    mov     [bp+4], ax
; if
; RPN'ized expression: "opSz 1 != "
; Expanded expression: "(@6) *(2) 1 != "
; Fused expression:    "!= *(@6) 1 IF! "
    mov     ax, [bp+6]
    cmp     ax, 1
    je      L1354
; RPN'ized expression: "op 20 = "
; Expanded expression: "(@4) 20 =(2) "
; Fused expression:    "=(34) *(@4) 20 "
    mov     ax, 20
    mov     [bp+4], ax
L1354:
; break
    jmp     L1336
; case
; RPN'ized expression: "25 "
; Expanded expression: "25 "
; Expression value: 25
    jmp     L1353
L1352:
    cmp     ax, 25
    jne     L1356
L1353:
; RPN'ized expression: "op 23 = "
; Expanded expression: "(@4) 23 =(2) "
; Fused expression:    "=(34) *(@4) 23 "
    mov     ax, 23
    mov     [bp+4], ax
; if
; RPN'ized expression: "opSz 1 != "
; Expanded expression: "(@6) *(2) 1 != "
; Fused expression:    "!= *(@6) 1 IF! "
    mov     ax, [bp+6]
    cmp     ax, 1
    je      L1358
; RPN'ized expression: "op 24 = "
; Expanded expression: "(@4) 24 =(2) "
; Fused expression:    "=(34) *(@4) 24 "
    mov     ax, 24
    mov     [bp+4], ax
L1358:
; break
    jmp     L1336
; }
    jmp     L1336
L1356:
L1336:
; return
; RPN'ized expression: "op "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L1335
L1335:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintOperand : (
; prm     op : int
; prm     val : int
;     ) void
SEGMENT _TEXT
    global  _GenPrintOperand
_GenPrintOperand:
    push    bp
    mov     bp, sp
; loc     op : (@4): int
; loc     val : (@6): int
; switch
; RPN'ized expression: "op "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L1363
; {
; case
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
    jmp     L1364
L1363:
    cmp     ax, 0
    jne     L1365
L1364:
; RPN'ized expression: "( L1367 printf ) "
; Expanded expression: " L1367  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1367:
    db  "al",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1367 , printf )2 "
    push    L1367
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L1366
L1365:
    cmp     ax, 1
    jne     L1369
L1366:
; RPN'ized expression: "( L1371 printf ) "
; Expanded expression: " L1371  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1371:
    db  "ah",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1371 , printf )2 "
    push    L1371
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L1370
L1369:
    cmp     ax, 2
    jne     L1373
L1370:
; RPN'ized expression: "( L1375 printf ) "
; Expanded expression: " L1375  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1375:
    db  "cl",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1375 , printf )2 "
    push    L1375
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
    jmp     L1374
L1373:
    cmp     ax, 3
    jne     L1377
L1374:
; RPN'ized expression: "( L1379 printf ) "
; Expanded expression: " L1379  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1379:
    db  "ax",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1379 , printf )2 "
    push    L1379
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L1378
L1377:
    cmp     ax, 4
    jne     L1381
L1378:
; RPN'ized expression: "( L1383 printf ) "
; Expanded expression: " L1383  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1383:
    db  "bx",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1383 , printf )2 "
    push    L1383
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L1382
L1381:
    cmp     ax, 5
    jne     L1385
L1382:
; RPN'ized expression: "( L1387 printf ) "
; Expanded expression: " L1387  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1387:
    db  "cx",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1387 , printf )2 "
    push    L1387
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L1386
L1385:
    cmp     ax, 6
    jne     L1389
L1386:
; RPN'ized expression: "( L1391 printf ) "
; Expanded expression: " L1391  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1391:
    db  "dx",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1391 , printf )2 "
    push    L1391
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L1390
L1389:
    cmp     ax, 7
    jne     L1393
L1390:
; RPN'ized expression: "( L1395 printf ) "
; Expanded expression: " L1395  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1395:
    db  "bp",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1395 , printf )2 "
    push    L1395
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L1394
L1393:
    cmp     ax, 8
    jne     L1397
L1394:
; RPN'ized expression: "( L1399 printf ) "
; Expanded expression: " L1399  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1399:
    db  "sp",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1399 , printf )2 "
    push    L1399
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L1398
L1397:
    cmp     ax, 11
    jne     L1401
L1398:
; RPN'ized expression: "( val , L1403 printf ) "
; Expanded expression: " (@6) *(2)  L1403  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1403:
    db  "%d",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@6) , L1403 , printf )4 "
    push    word [bp+6]
    push    L1403
    call    _printf
    sub     sp, -4
; break
    jmp     L1361
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L1402
L1401:
    cmp     ax, 12
    jne     L1405
L1402:
; RPN'ized expression: "( IdentTable val + GenPrintLabel ) "
; Expanded expression: " IdentTable (@6) *(2) +  GenPrintLabel ()2 "
; Fused expression:    "( + IdentTable *(@6) , GenPrintLabel )2 "
    mov     ax, _IdentTable
    add     ax, [bp+6]
    push    ax
    call    _GenPrintLabel
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L1406
L1405:
    cmp     ax, 13
    jne     L1407
L1406:
; RPN'ized expression: "( val GenPrintNumLabel ) "
; Expanded expression: " (@6) *(2)  GenPrintNumLabel ()2 "
; Fused expression:    "( *(2) (@6) , GenPrintNumLabel )2 "
    push    word [bp+6]
    call    _GenPrintNumLabel
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
    jmp     L1408
L1407:
    cmp     ax, 14
    jne     L1409
L1408:
; RPN'ized expression: "( L1411 printf ) "
; Expanded expression: " L1411  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1411:
    db  "[",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1411 , printf )2 "
    push    L1411
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( IdentTable val + GenPrintLabel ) "
; Expanded expression: " IdentTable (@6) *(2) +  GenPrintLabel ()2 "
; Fused expression:    "( + IdentTable *(@6) , GenPrintLabel )2 "
    mov     ax, _IdentTable
    add     ax, [bp+6]
    push    ax
    call    _GenPrintLabel
    sub     sp, -2
; RPN'ized expression: "( L1413 printf ) "
; Expanded expression: " L1413  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1413:
    db  "]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1413 , printf )2 "
    push    L1413
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "15 "
; Expanded expression: "15 "
; Expression value: 15
    jmp     L1410
L1409:
    cmp     ax, 15
    jne     L1415
L1410:
; RPN'ized expression: "( L1417 printf ) "
; Expanded expression: " L1417  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1417:
    db  "byte [",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1417 , printf )2 "
    push    L1417
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( IdentTable val + GenPrintLabel ) "
; Expanded expression: " IdentTable (@6) *(2) +  GenPrintLabel ()2 "
; Fused expression:    "( + IdentTable *(@6) , GenPrintLabel )2 "
    mov     ax, _IdentTable
    add     ax, [bp+6]
    push    ax
    call    _GenPrintLabel
    sub     sp, -2
; RPN'ized expression: "( L1419 printf ) "
; Expanded expression: " L1419  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1419:
    db  "]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1419 , printf )2 "
    push    L1419
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1416
L1415:
    cmp     ax, 16
    jne     L1421
L1416:
; RPN'ized expression: "( L1423 printf ) "
; Expanded expression: " L1423  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1423:
    db  "word [",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1423 , printf )2 "
    push    L1423
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( IdentTable val + GenPrintLabel ) "
; Expanded expression: " IdentTable (@6) *(2) +  GenPrintLabel ()2 "
; Fused expression:    "( + IdentTable *(@6) , GenPrintLabel )2 "
    mov     ax, _IdentTable
    add     ax, [bp+6]
    push    ax
    call    _GenPrintLabel
    sub     sp, -2
; RPN'ized expression: "( L1425 printf ) "
; Expanded expression: " L1425  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1425:
    db  "]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1425 , printf )2 "
    push    L1425
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "18 "
; Expanded expression: "18 "
; Expression value: 18
    jmp     L1422
L1421:
    cmp     ax, 18
    jne     L1427
L1422:
; RPN'ized expression: "( val , L1429 printf ) "
; Expanded expression: " (@6) *(2)  L1429  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1429:
    db  "[bp%+d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@6) , L1429 , printf )4 "
    push    word [bp+6]
    push    L1429
    call    _printf
    sub     sp, -4
; break
    jmp     L1361
; case
; RPN'ized expression: "19 "
; Expanded expression: "19 "
; Expression value: 19
    jmp     L1428
L1427:
    cmp     ax, 19
    jne     L1431
L1428:
; RPN'ized expression: "( val , L1433 printf ) "
; Expanded expression: " (@6) *(2)  L1433  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1433:
    db  "byte [bp%+d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@6) , L1433 , printf )4 "
    push    word [bp+6]
    push    L1433
    call    _printf
    sub     sp, -4
; break
    jmp     L1361
; case
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
    jmp     L1432
L1431:
    cmp     ax, 20
    jne     L1435
L1432:
; RPN'ized expression: "( val , L1437 printf ) "
; Expanded expression: " (@6) *(2)  L1437  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1437:
    db  "word [bp%+d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@6) , L1437 , printf )4 "
    push    word [bp+6]
    push    L1437
    call    _printf
    sub     sp, -4
; break
    jmp     L1361
; case
; RPN'ized expression: "22 "
; Expanded expression: "22 "
; Expression value: 22
    jmp     L1436
L1435:
    cmp     ax, 22
    jne     L1439
L1436:
; RPN'ized expression: "( L1441 printf ) "
; Expanded expression: " L1441  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1441:
    db  "[bx]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1441 , printf )2 "
    push    L1441
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "23 "
; Expanded expression: "23 "
; Expression value: 23
    jmp     L1440
L1439:
    cmp     ax, 23
    jne     L1443
L1440:
; RPN'ized expression: "( L1445 printf ) "
; Expanded expression: " L1445  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1445:
    db  "byte [bx]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1445 , printf )2 "
    push    L1445
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; case
; RPN'ized expression: "24 "
; Expanded expression: "24 "
; Expression value: 24
    jmp     L1444
L1443:
    cmp     ax, 24
    jne     L1447
L1444:
; RPN'ized expression: "( L1449 printf ) "
; Expanded expression: " L1449  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1449:
    db  "word [bx]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1449 , printf )2 "
    push    L1449
    call    _printf
    sub     sp, -2
; break
    jmp     L1361
; }
    jmp     L1361
L1447:
L1361:
L1360:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintOperandSeparator : (void) void
SEGMENT _TEXT
    global  _GenPrintOperandSeparator
_GenPrintOperandSeparator:
    push    bp
    mov     bp, sp
; RPN'ized expression: "( L1452 printf ) "
; Expanded expression: " L1452  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1452:
    db  ", ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1452 , printf )2 "
    push    L1452
    call    _printf
    sub     sp, -2
L1451:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintNewLine : (void) void
SEGMENT _TEXT
    global  _GenPrintNewLine
_GenPrintNewLine:
    push    bp
    mov     bp, sp
; RPN'ized expression: "( L1455 printf ) "
; Expanded expression: " L1455  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1455:
    db  10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1455 , printf )2 "
    push    L1455
    call    _printf
    sub     sp, -2
L1454:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintInstrNoOperand : (
; prm     instr : int
;     ) void
SEGMENT _TEXT
    global  _GenPrintInstrNoOperand
_GenPrintInstrNoOperand:
    push    bp
    mov     bp, sp
; loc     instr : (@4): int
; RPN'ized expression: "( 0 , instr GenPrintInstr ) "
; Expanded expression: " 0  (@4) *(2)  GenPrintInstr ()4 "
; Fused expression:    "( 0 , *(2) (@4) , GenPrintInstr )4 "
    push    0
    push    word [bp+4]
    call    _GenPrintInstr
    sub     sp, -4
; RPN'ized expression: "( GenPrintNewLine ) "
; Expanded expression: " GenPrintNewLine ()0 "
; Fused expression:    "( GenPrintNewLine )0 "
    call    _GenPrintNewLine
L1457:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintInstr1Operand : (
; prm     instr : int
; prm     instrval : int
; prm     operand : int
; prm     operandval : int
;     ) void
SEGMENT _TEXT
    global  _GenPrintInstr1Operand
_GenPrintInstr1Operand:
    push    bp
    mov     bp, sp
; loc     instr : (@4): int
; loc     instrval : (@6): int
; loc     operand : (@8): int
; loc     operandval : (@10): int
; RPN'ized expression: "( instrval , instr GenPrintInstr ) "
; Expanded expression: " (@6) *(2)  (@4) *(2)  GenPrintInstr ()4 "
; Fused expression:    "( *(2) (@6) , *(2) (@4) , GenPrintInstr )4 "
    push    word [bp+6]
    push    word [bp+4]
    call    _GenPrintInstr
    sub     sp, -4
; RPN'ized expression: "( operandval , operand GenPrintOperand ) "
; Expanded expression: " (@10) *(2)  (@8) *(2)  GenPrintOperand ()4 "
; Fused expression:    "( *(2) (@10) , *(2) (@8) , GenPrintOperand )4 "
    push    word [bp+10]
    push    word [bp+8]
    call    _GenPrintOperand
    sub     sp, -4
; RPN'ized expression: "( GenPrintNewLine ) "
; Expanded expression: " GenPrintNewLine ()0 "
; Fused expression:    "( GenPrintNewLine )0 "
    call    _GenPrintNewLine
L1458:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintInstr2Operands : (
; prm     instr : int
; prm     instrval : int
; prm     operand1 : int
; prm     operand1val : int
; prm     operand2 : int
; prm     operand2val : int
;     ) void
SEGMENT _TEXT
    global  _GenPrintInstr2Operands
_GenPrintInstr2Operands:
    push    bp
    mov     bp, sp
; loc     instr : (@4): int
; loc     instrval : (@6): int
; loc     operand1 : (@8): int
; loc     operand1val : (@10): int
; loc     operand2 : (@12): int
; loc     operand2val : (@14): int
; RPN'ized expression: "( instrval , instr GenPrintInstr ) "
; Expanded expression: " (@6) *(2)  (@4) *(2)  GenPrintInstr ()4 "
; Fused expression:    "( *(2) (@6) , *(2) (@4) , GenPrintInstr )4 "
    push    word [bp+6]
    push    word [bp+4]
    call    _GenPrintInstr
    sub     sp, -4
; RPN'ized expression: "( operand1val , operand1 GenPrintOperand ) "
; Expanded expression: " (@10) *(2)  (@8) *(2)  GenPrintOperand ()4 "
; Fused expression:    "( *(2) (@10) , *(2) (@8) , GenPrintOperand )4 "
    push    word [bp+10]
    push    word [bp+8]
    call    _GenPrintOperand
    sub     sp, -4
; RPN'ized expression: "( GenPrintOperandSeparator ) "
; Expanded expression: " GenPrintOperandSeparator ()0 "
; Fused expression:    "( GenPrintOperandSeparator )0 "
    call    _GenPrintOperandSeparator
; RPN'ized expression: "( operand2val , operand2 GenPrintOperand ) "
; Expanded expression: " (@14) *(2)  (@12) *(2)  GenPrintOperand ()4 "
; Fused expression:    "( *(2) (@14) , *(2) (@12) , GenPrintOperand )4 "
    push    word [bp+14]
    push    word [bp+12]
    call    _GenPrintOperand
    sub     sp, -4
; RPN'ized expression: "( GenPrintNewLine ) "
; Expanded expression: " GenPrintNewLine ()0 "
; Fused expression:    "( GenPrintNewLine )0 "
    call    _GenPrintNewLine
L1459:
    leave
    ret
; SEGMENT _TEXT
; glb GenPrintInstr3Operands : (
; prm     instr : int
; prm     instrval : int
; prm     operand1 : int
; prm     operand1val : int
; prm     operand2 : int
; prm     operand2val : int
; prm     operand3 : int
; prm     operand3val : int
;     ) void
SEGMENT _TEXT
    global  _GenPrintInstr3Operands
_GenPrintInstr3Operands:
    push    bp
    mov     bp, sp
; loc     instr : (@4): int
; loc     instrval : (@6): int
; loc     operand1 : (@8): int
; loc     operand1val : (@10): int
; loc     operand2 : (@12): int
; loc     operand2val : (@14): int
; loc     operand3 : (@16): int
; loc     operand3val : (@18): int
; RPN'ized expression: "( instrval , instr GenPrintInstr ) "
; Expanded expression: " (@6) *(2)  (@4) *(2)  GenPrintInstr ()4 "
; Fused expression:    "( *(2) (@6) , *(2) (@4) , GenPrintInstr )4 "
    push    word [bp+6]
    push    word [bp+4]
    call    _GenPrintInstr
    sub     sp, -4
; RPN'ized expression: "( operand1val , operand1 GenPrintOperand ) "
; Expanded expression: " (@10) *(2)  (@8) *(2)  GenPrintOperand ()4 "
; Fused expression:    "( *(2) (@10) , *(2) (@8) , GenPrintOperand )4 "
    push    word [bp+10]
    push    word [bp+8]
    call    _GenPrintOperand
    sub     sp, -4
; RPN'ized expression: "( GenPrintOperandSeparator ) "
; Expanded expression: " GenPrintOperandSeparator ()0 "
; Fused expression:    "( GenPrintOperandSeparator )0 "
    call    _GenPrintOperandSeparator
; RPN'ized expression: "( operand2val , operand2 GenPrintOperand ) "
; Expanded expression: " (@14) *(2)  (@12) *(2)  GenPrintOperand ()4 "
; Fused expression:    "( *(2) (@14) , *(2) (@12) , GenPrintOperand )4 "
    push    word [bp+14]
    push    word [bp+12]
    call    _GenPrintOperand
    sub     sp, -4
; RPN'ized expression: "( GenPrintOperandSeparator ) "
; Expanded expression: " GenPrintOperandSeparator ()0 "
; Fused expression:    "( GenPrintOperandSeparator )0 "
    call    _GenPrintOperandSeparator
; RPN'ized expression: "( operand3val , operand3 GenPrintOperand ) "
; Expanded expression: " (@18) *(2)  (@16) *(2)  GenPrintOperand ()4 "
; Fused expression:    "( *(2) (@18) , *(2) (@16) , GenPrintOperand )4 "
    push    word [bp+18]
    push    word [bp+16]
    call    _GenPrintOperand
    sub     sp, -4
; RPN'ized expression: "( GenPrintNewLine ) "
; Expanded expression: " GenPrintNewLine ()0 "
; Fused expression:    "( GenPrintNewLine )0 "
    call    _GenPrintNewLine
L1460:
    leave
    ret
; SEGMENT _TEXT
; glb GenExtendRegAIfNeeded : (
; prm     opSz : int
;     ) void
SEGMENT _TEXT
    global  _GenExtendRegAIfNeeded
_GenExtendRegAIfNeeded:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; if
; RPN'ized expression: "opSz 1 == "
; Expanded expression: "(@4) *(2) 1 == "
; Fused expression:    "== *(@4) 1 IF! "
    mov     ax, [bp+4]
    cmp     ax, 1
    jne     L1462
; {
; if
; RPN'ized expression: "CharIsSigned "
; Expanded expression: "CharIsSigned *(2) "
; Fused expression:    "*(2) CharIsSigned "
    mov     ax, [_CharIsSigned]
; JumpIfZero
    test    ax, ax
    je      L1464
; RPN'ized expression: "( 23 GenPrintInstrNoOperand ) "
; Expanded expression: " 23  GenPrintInstrNoOperand ()2 "
; Fused expression:    "( 23 , GenPrintInstrNoOperand )2 "
    push    23
    call    _GenPrintInstrNoOperand
    sub     sp, -2
    jmp     L1465
L1464:
; else
; RPN'ized expression: "( 0 , 11 , 0 , 1 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  11  0  1  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 11 , 0 , 1 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    11
    push    0
    push    1
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1465:
; }
L1462:
L1461:
    leave
    ret
; SEGMENT _TEXT
; glb GenJumpUncond : (
; prm     label : int
;     ) void
SEGMENT _TEXT
    global  _GenJumpUncond
_GenJumpUncond:
    push    bp
    mov     bp, sp
; loc     label : (@4): int
; RPN'ized expression: "( label , 13 , 0 , 31 GenPrintInstr1Operand ) "
; Expanded expression: " (@4) *(2)  13  0  31  GenPrintInstr1Operand ()8 "
; Fused expression:    "( *(2) (@4) , 13 , 0 , 31 , GenPrintInstr1Operand )8 "
    push    word [bp+4]
    push    13
    push    0
    push    31
    call    _GenPrintInstr1Operand
    sub     sp, -8
L1466:
    leave
    ret
; SEGMENT _TEXT
; glb GenJumpIfNotEqual : (
; prm     val : int
; prm     label : int
;     ) void
SEGMENT _TEXT
    global  _GenJumpIfNotEqual
_GenJumpIfNotEqual:
    push    bp
    mov     bp, sp
; loc     val : (@4): int
; loc     label : (@6): int
; RPN'ized expression: "( val , 11 , 0 , 3 , 0 , 14 GenPrintInstr2Operands ) "
; Expanded expression: " (@4) *(2)  11  0  3  0  14  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@4) , 11 , 0 , 3 , 0 , 14 , GenPrintInstr2Operands )12 "
    push    word [bp+4]
    push    11
    push    0
    push    3
    push    0
    push    14
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( label , 13 , 9 , 26 GenPrintInstr1Operand ) "
; Expanded expression: " (@6) *(2)  13  9  26  GenPrintInstr1Operand ()8 "
; Fused expression:    "( *(2) (@6) , 13 , 9 , 26 , GenPrintInstr1Operand )8 "
    push    word [bp+6]
    push    13
    push    9
    push    26
    call    _GenPrintInstr1Operand
    sub     sp, -8
L1467:
    leave
    ret
; SEGMENT _TEXT
; glb GenJumpIfZero : (
; prm     label : int
;     ) void
SEGMENT _TEXT
    global  _GenJumpIfZero
_GenJumpIfZero:
    push    bp
    mov     bp, sp
; loc     label : (@4): int
; RPN'ized expression: "( L1469 printf ) "
; Expanded expression: " L1469  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1469:
    db  "; JumpIfZero",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1469 , printf )2 "
    push    L1469
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( 0 , 3 , 0 , 3 , 0 , 15 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  3  0  15  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 3 , 0 , 15 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    3
    push    0
    push    15
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( label , 13 , 8 , 26 GenPrintInstr1Operand ) "
; Expanded expression: " (@4) *(2)  13  8  26  GenPrintInstr1Operand ()8 "
; Fused expression:    "( *(2) (@4) , 13 , 8 , 26 , GenPrintInstr1Operand )8 "
    push    word [bp+4]
    push    13
    push    8
    push    26
    call    _GenPrintInstr1Operand
    sub     sp, -8
L1468:
    leave
    ret
; SEGMENT _TEXT
; glb GenJumpIfNotZero : (
; prm     label : int
;     ) void
SEGMENT _TEXT
    global  _GenJumpIfNotZero
_GenJumpIfNotZero:
    push    bp
    mov     bp, sp
; loc     label : (@4): int
; RPN'ized expression: "( L1472 printf ) "
; Expanded expression: " L1472  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1472:
    db  "; JumpIfNotZero",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1472 , printf )2 "
    push    L1472
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( 0 , 3 , 0 , 3 , 0 , 15 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  3  0  15  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 3 , 0 , 15 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    3
    push    0
    push    15
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( label , 13 , 9 , 26 GenPrintInstr1Operand ) "
; Expanded expression: " (@4) *(2)  13  9  26  GenPrintInstr1Operand ()8 "
; Fused expression:    "( *(2) (@4) , 13 , 9 , 26 , GenPrintInstr1Operand )8 "
    push    word [bp+4]
    push    13
    push    9
    push    26
    call    _GenPrintInstr1Operand
    sub     sp, -8
L1471:
    leave
    ret
; SEGMENT _TEXT
; glb GenFxnProlog : (void) void
SEGMENT _TEXT
    global  _GenFxnProlog
_GenFxnProlog:
    push    bp
    mov     bp, sp
; RPN'ized expression: "( 0 , 7 , 0 , 5 GenPrintInstr1Operand ) "
; Expanded expression: " 0  7  0  5  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 7 , 0 , 5 , GenPrintInstr1Operand )8 "
    push    0
    push    7
    push    0
    push    5
    call    _GenPrintInstr1Operand
    sub     sp, -8
; RPN'ized expression: "( 0 , 8 , 0 , 7 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  8  0  7  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 8 , 0 , 7 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    8
    push    0
    push    7
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1474:
    leave
    ret
; SEGMENT _TEXT
; glb GenLocalAlloc : (
; prm     size : int
;     ) void
SEGMENT _TEXT
    global  _GenLocalAlloc
_GenLocalAlloc:
    push    bp
    mov     bp, sp
; loc     size : (@4): int
; RPN'ized expression: "( size , 11 , 0 , 8 , 0 , 10 GenPrintInstr2Operands ) "
; Expanded expression: " (@4) *(2)  11  0  8  0  10  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@4) , 11 , 0 , 8 , 0 , 10 , GenPrintInstr2Operands )12 "
    push    word [bp+4]
    push    11
    push    0
    push    8
    push    0
    push    10
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1475:
    leave
    ret
; SEGMENT _TEXT
; glb GenFxnEpilog : (void) void
SEGMENT _TEXT
    global  _GenFxnEpilog
_GenFxnEpilog:
    push    bp
    mov     bp, sp
; RPN'ized expression: "( 28 GenPrintInstrNoOperand ) "
; Expanded expression: " 28  GenPrintInstrNoOperand ()2 "
; Fused expression:    "( 28 , GenPrintInstrNoOperand )2 "
    push    28
    call    _GenPrintInstrNoOperand
    sub     sp, -2
; RPN'ized expression: "( 30 GenPrintInstrNoOperand ) "
; Expanded expression: " 30  GenPrintInstrNoOperand ()2 "
; Fused expression:    "( 30 , GenPrintInstrNoOperand )2 "
    push    30
    call    _GenPrintInstrNoOperand
    sub     sp, -2
L1476:
    leave
    ret
; SEGMENT _TEXT
; glb GenReadIdent : (
; prm     opSz : int
; prm     label : int
;     ) void
SEGMENT _TEXT
    global  _GenReadIdent
_GenReadIdent:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     label : (@6): int
; RPN'ized expression: "( label , 14 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  14  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 14 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    14
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
L1477:
    leave
    ret
; SEGMENT _TEXT
; glb GenReadLocal : (
; prm     opSz : int
; prm     ofs : int
;     ) void
SEGMENT _TEXT
    global  _GenReadLocal
_GenReadLocal:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     ofs : (@6): int
; RPN'ized expression: "( ofs , 18 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  18  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 18 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    18
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
L1478:
    leave
    ret
; SEGMENT _TEXT
; glb GenReadIndirect : (
; prm     opSz : int
;     ) void
SEGMENT _TEXT
    global  _GenReadIndirect
_GenReadIndirect:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; RPN'ized expression: "( 0 , 3 , 0 , 4 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    4
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 22 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  22  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 22 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    22
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
L1479:
    leave
    ret
; SEGMENT _TEXT
; glb GenReadCRegIdent : (
; prm     opSz : int
; prm     label : int
;     ) void
SEGMENT _TEXT
    global  _GenReadCRegIdent
_GenReadCRegIdent:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     label : (@6): int
; if
; RPN'ized expression: "opSz 1 == "
; Expanded expression: "(@4) *(2) 1 == "
; Fused expression:    "== *(@4) 1 IF! "
    mov     ax, [bp+4]
    cmp     ax, 1
    jne     L1481
; {
; if
; RPN'ized expression: "CharIsSigned "
; Expanded expression: "CharIsSigned *(2) "
; Fused expression:    "*(2) CharIsSigned "
    mov     ax, [_CharIsSigned]
; JumpIfZero
    test    ax, ax
    je      L1483
; RPN'ized expression: "( label , 15 , 0 , 5 , 0 , 1 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  15  0  5  0  1  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 15 , 0 , 5 , 0 , 1 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    15
    push    0
    push    5
    push    0
    push    1
    call    _GenPrintInstr2Operands
    sub     sp, -12
    jmp     L1484
L1483:
; else
; RPN'ized expression: "( label , 15 , 0 , 5 , 0 , 2 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  15  0  5  0  2  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 15 , 0 , 5 , 0 , 2 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    15
    push    0
    push    5
    push    0
    push    2
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1484:
; }
    jmp     L1482
L1481:
; else
; RPN'ized expression: "( label , 14 , 0 , 5 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  14  0  5  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 14 , 0 , 5 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    14
    push    0
    push    5
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1482:
L1480:
    leave
    ret
; SEGMENT _TEXT
; glb GenReadCRegLocal : (
; prm     opSz : int
; prm     ofs : int
;     ) void
SEGMENT _TEXT
    global  _GenReadCRegLocal
_GenReadCRegLocal:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     ofs : (@6): int
; if
; RPN'ized expression: "opSz 1 == "
; Expanded expression: "(@4) *(2) 1 == "
; Fused expression:    "== *(@4) 1 IF! "
    mov     ax, [bp+4]
    cmp     ax, 1
    jne     L1486
; {
; if
; RPN'ized expression: "CharIsSigned "
; Expanded expression: "CharIsSigned *(2) "
; Fused expression:    "*(2) CharIsSigned "
    mov     ax, [_CharIsSigned]
; JumpIfZero
    test    ax, ax
    je      L1488
; RPN'ized expression: "( ofs , 19 , 0 , 5 , 0 , 1 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  19  0  5  0  1  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 19 , 0 , 5 , 0 , 1 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    19
    push    0
    push    5
    push    0
    push    1
    call    _GenPrintInstr2Operands
    sub     sp, -12
    jmp     L1489
L1488:
; else
; RPN'ized expression: "( ofs , 19 , 0 , 5 , 0 , 2 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  19  0  5  0  2  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 19 , 0 , 5 , 0 , 2 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    19
    push    0
    push    5
    push    0
    push    2
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1489:
; }
    jmp     L1487
L1486:
; else
; RPN'ized expression: "( ofs , 18 , 0 , 5 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  18  0  5  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 18 , 0 , 5 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    18
    push    0
    push    5
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1487:
L1485:
    leave
    ret
; SEGMENT _TEXT
; glb GenReadCRegIndirect : (
; prm     opSz : int
;     ) void
SEGMENT _TEXT
    global  _GenReadCRegIndirect
_GenReadCRegIndirect:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; RPN'ized expression: "( 0 , 3 , 0 , 4 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    4
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; if
; RPN'ized expression: "opSz 1 == "
; Expanded expression: "(@4) *(2) 1 == "
; Fused expression:    "== *(@4) 1 IF! "
    mov     ax, [bp+4]
    cmp     ax, 1
    jne     L1491
; {
; if
; RPN'ized expression: "CharIsSigned "
; Expanded expression: "CharIsSigned *(2) "
; Fused expression:    "*(2) CharIsSigned "
    mov     ax, [_CharIsSigned]
; JumpIfZero
    test    ax, ax
    je      L1493
; RPN'ized expression: "( 0 , 23 , 0 , 5 , 0 , 1 GenPrintInstr2Operands ) "
; Expanded expression: " 0  23  0  5  0  1  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 23 , 0 , 5 , 0 , 1 , GenPrintInstr2Operands )12 "
    push    0
    push    23
    push    0
    push    5
    push    0
    push    1
    call    _GenPrintInstr2Operands
    sub     sp, -12
    jmp     L1494
L1493:
; else
; RPN'ized expression: "( 0 , 23 , 0 , 5 , 0 , 2 GenPrintInstr2Operands ) "
; Expanded expression: " 0  23  0  5  0  2  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 23 , 0 , 5 , 0 , 2 , GenPrintInstr2Operands )12 "
    push    0
    push    23
    push    0
    push    5
    push    0
    push    2
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1494:
; }
    jmp     L1492
L1491:
; else
; RPN'ized expression: "( 0 , 22 , 0 , 5 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  22  0  5  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 22 , 0 , 5 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    22
    push    0
    push    5
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1492:
L1490:
    leave
    ret
; SEGMENT _TEXT
; glb GenIncDecIdent : (
; prm     opSz : int
; prm     label : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenIncDecIdent
_GenIncDecIdent:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     label : (@6): int
; loc     tok : (@8): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; Fused expression:    "=(34) *(@-2) 7 "
    mov     ax, 7
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 12 != "
; Expanded expression: "(@8) *(2) 12 != "
; Fused expression:    "!= *(@8) 12 IF! "
    mov     ax, [bp+8]
    cmp     ax, 12
    je      L1496
; RPN'ized expression: "instr 8 = "
; Expanded expression: "(@-2) 8 =(2) "
; Fused expression:    "=(34) *(@-2) 8 "
    mov     ax, 8
    mov     [bp-2], ax
L1496:
; RPN'ized expression: "( label , ( opSz , 17 GenSelectByteOrWord ) , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " (@6) *(2)   (@4) *(2)  17  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( *(2) (@6) , ( *(2) (@4) , 17 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr1Operand )8 "
    push    word [bp+6]
    push    word [bp+4]
    push    17
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; RPN'ized expression: "( label , 14 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  14  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 14 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    14
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
L1495:
    leave
    ret
; SEGMENT _TEXT
; glb GenIncDecLocal : (
; prm     opSz : int
; prm     ofs : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenIncDecLocal
_GenIncDecLocal:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     ofs : (@6): int
; loc     tok : (@8): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; Fused expression:    "=(34) *(@-2) 7 "
    mov     ax, 7
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 12 != "
; Expanded expression: "(@8) *(2) 12 != "
; Fused expression:    "!= *(@8) 12 IF! "
    mov     ax, [bp+8]
    cmp     ax, 12
    je      L1499
; RPN'ized expression: "instr 8 = "
; Expanded expression: "(@-2) 8 =(2) "
; Fused expression:    "=(34) *(@-2) 8 "
    mov     ax, 8
    mov     [bp-2], ax
L1499:
; RPN'ized expression: "( ofs , ( opSz , 21 GenSelectByteOrWord ) , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " (@6) *(2)   (@4) *(2)  21  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( *(2) (@6) , ( *(2) (@4) , 21 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr1Operand )8 "
    push    word [bp+6]
    push    word [bp+4]
    push    21
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; RPN'ized expression: "( ofs , 18 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  18  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 18 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    18
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
L1498:
    leave
    ret
; SEGMENT _TEXT
; glb GenIncDecIndirect : (
; prm     opSz : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenIncDecIndirect
_GenIncDecIndirect:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     tok : (@6): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; Fused expression:    "=(34) *(@-2) 7 "
    mov     ax, 7
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 12 != "
; Expanded expression: "(@6) *(2) 12 != "
; Fused expression:    "!= *(@6) 12 IF! "
    mov     ax, [bp+6]
    cmp     ax, 12
    je      L1502
; RPN'ized expression: "instr 8 = "
; Expanded expression: "(@-2) 8 =(2) "
; Fused expression:    "=(34) *(@-2) 8 "
    mov     ax, 8
    mov     [bp-2], ax
L1502:
; RPN'ized expression: "( 0 , 3 , 0 , 4 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    4
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , ( opSz , 25 GenSelectByteOrWord ) , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0   (@4) *(2)  25  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , ( *(2) (@4) , 25 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr1Operand )8 "
    push    0
    push    word [bp+4]
    push    25
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; RPN'ized expression: "( 0 , 22 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  22  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 22 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    22
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
L1501:
    leave
    ret
; SEGMENT _TEXT
; glb GenPostIncDecIdent : (
; prm     opSz : int
; prm     label : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenPostIncDecIdent
_GenPostIncDecIdent:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     label : (@6): int
; loc     tok : (@8): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; Fused expression:    "=(34) *(@-2) 7 "
    mov     ax, 7
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 81 != "
; Expanded expression: "(@8) *(2) 81 != "
; Fused expression:    "!= *(@8) 81 IF! "
    mov     ax, [bp+8]
    cmp     ax, 81
    je      L1505
; RPN'ized expression: "instr 8 = "
; Expanded expression: "(@-2) 8 =(2) "
; Fused expression:    "=(34) *(@-2) 8 "
    mov     ax, 8
    mov     [bp-2], ax
L1505:
; RPN'ized expression: "( label , 14 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  14  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 14 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    14
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
; RPN'ized expression: "( label , ( opSz , 17 GenSelectByteOrWord ) , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " (@6) *(2)   (@4) *(2)  17  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( *(2) (@6) , ( *(2) (@4) , 17 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr1Operand )8 "
    push    word [bp+6]
    push    word [bp+4]
    push    17
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr1Operand
    sub     sp, -8
L1504:
    leave
    ret
; SEGMENT _TEXT
; glb GenPostIncDecLocal : (
; prm     opSz : int
; prm     ofs : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenPostIncDecLocal
_GenPostIncDecLocal:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     ofs : (@6): int
; loc     tok : (@8): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; Fused expression:    "=(34) *(@-2) 7 "
    mov     ax, 7
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 81 != "
; Expanded expression: "(@8) *(2) 81 != "
; Fused expression:    "!= *(@8) 81 IF! "
    mov     ax, [bp+8]
    cmp     ax, 81
    je      L1508
; RPN'ized expression: "instr 8 = "
; Expanded expression: "(@-2) 8 =(2) "
; Fused expression:    "=(34) *(@-2) 8 "
    mov     ax, 8
    mov     [bp-2], ax
L1508:
; RPN'ized expression: "( ofs , 18 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  18  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 18 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    18
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
; RPN'ized expression: "( ofs , ( opSz , 21 GenSelectByteOrWord ) , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " (@6) *(2)   (@4) *(2)  21  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( *(2) (@6) , ( *(2) (@4) , 21 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr1Operand )8 "
    push    word [bp+6]
    push    word [bp+4]
    push    21
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr1Operand
    sub     sp, -8
L1507:
    leave
    ret
; SEGMENT _TEXT
; glb GenPostIncDecIndirect : (
; prm     opSz : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenPostIncDecIndirect
_GenPostIncDecIndirect:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     tok : (@6): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; Fused expression:    "=(34) *(@-2) 7 "
    mov     ax, 7
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 81 != "
; Expanded expression: "(@6) *(2) 81 != "
; Fused expression:    "!= *(@6) 81 IF! "
    mov     ax, [bp+6]
    cmp     ax, 81
    je      L1511
; RPN'ized expression: "instr 8 = "
; Expanded expression: "(@-2) 8 =(2) "
; Fused expression:    "=(34) *(@-2) 8 "
    mov     ax, 8
    mov     [bp-2], ax
L1511:
; RPN'ized expression: "( 0 , 3 , 0 , 4 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    4
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 22 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  22  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 22 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    22
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
; RPN'ized expression: "( 0 , ( opSz , 25 GenSelectByteOrWord ) , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0   (@4) *(2)  25  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , ( *(2) (@4) , 25 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr1Operand )8 "
    push    0
    push    word [bp+4]
    push    25
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr1Operand
    sub     sp, -8
L1510:
    leave
    ret
; SEGMENT _TEXT
; glb GenPostAddSubIdent : (
; prm     opSz : int
; prm     val : int
; prm     label : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenPostAddSubIdent
_GenPostAddSubIdent:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     val : (@6): int
; loc     label : (@8): int
; loc     tok : (@10): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; Fused expression:    "=(34) *(@-2) 9 "
    mov     ax, 9
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 83 != "
; Expanded expression: "(@10) *(2) 83 != "
; Fused expression:    "!= *(@10) 83 IF! "
    mov     ax, [bp+10]
    cmp     ax, 83
    je      L1514
; RPN'ized expression: "instr 10 = "
; Expanded expression: "(@-2) 10 =(2) "
; Fused expression:    "=(34) *(@-2) 10 "
    mov     ax, 10
    mov     [bp-2], ax
L1514:
; RPN'ized expression: "( label , 14 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@8) *(2)  14  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@8) , 14 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+8]
    push    14
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
; RPN'ized expression: "( val , 11 , label , ( opSz , 17 GenSelectByteOrWord ) , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  11  (@8) *(2)   (@4) *(2)  17  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 11 , *(2) (@8) , ( *(2) (@4) , 17 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    11
    push    word [bp+8]
    push    word [bp+4]
    push    17
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1513:
    leave
    ret
; SEGMENT _TEXT
; glb GenPostAddSubLocal : (
; prm     opSz : int
; prm     val : int
; prm     ofs : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenPostAddSubLocal
_GenPostAddSubLocal:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     val : (@6): int
; loc     ofs : (@8): int
; loc     tok : (@10): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; Fused expression:    "=(34) *(@-2) 9 "
    mov     ax, 9
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 83 != "
; Expanded expression: "(@10) *(2) 83 != "
; Fused expression:    "!= *(@10) 83 IF! "
    mov     ax, [bp+10]
    cmp     ax, 83
    je      L1517
; RPN'ized expression: "instr 10 = "
; Expanded expression: "(@-2) 10 =(2) "
; Fused expression:    "=(34) *(@-2) 10 "
    mov     ax, 10
    mov     [bp-2], ax
L1517:
; RPN'ized expression: "( ofs , 18 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@8) *(2)  18  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@8) , 18 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp+8]
    push    18
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
; RPN'ized expression: "( val , 11 , ofs , ( opSz , 21 GenSelectByteOrWord ) , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  11  (@8) *(2)   (@4) *(2)  21  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 11 , *(2) (@8) , ( *(2) (@4) , 21 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    11
    push    word [bp+8]
    push    word [bp+4]
    push    21
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1516:
    leave
    ret
; SEGMENT _TEXT
; glb GenPostAddSubIndirect : (
; prm     opSz : int
; prm     val : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _GenPostAddSubIndirect
_GenPostAddSubIndirect:
    push    bp
    mov     bp, sp
; loc     opSz : (@4): int
; loc     val : (@6): int
; loc     tok : (@8): int
; loc     instr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; Fused expression:    "=(34) *(@-2) 9 "
    mov     ax, 9
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 83 != "
; Expanded expression: "(@8) *(2) 83 != "
; Fused expression:    "!= *(@8) 83 IF! "
    mov     ax, [bp+8]
    cmp     ax, 83
    je      L1520
; RPN'ized expression: "instr 10 = "
; Expanded expression: "(@-2) 10 =(2) "
; Fused expression:    "=(34) *(@-2) 10 "
    mov     ax, 10
    mov     [bp-2], ax
L1520:
; RPN'ized expression: "( 0 , 3 , 0 , 4 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    4
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 22 , 0 , ( opSz , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  22  0   (@4) *(2)  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 22 , 0 , ( *(2) (@4) , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    22
    push    0
    push    word [bp+4]
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( opSz GenExtendRegAIfNeeded ) "
; Expanded expression: " (@4) *(2)  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( *(2) (@4) , GenExtendRegAIfNeeded )2 "
    push    word [bp+4]
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
; RPN'ized expression: "( val , 11 , 0 , ( opSz , 25 GenSelectByteOrWord ) , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " (@6) *(2)  11  0   (@4) *(2)  25  GenSelectByteOrWord ()4  0  (@-2) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@6) , 11 , 0 , ( *(2) (@4) , 25 , GenSelectByteOrWord )4 , 0 , *(2) (@-2) , GenPrintInstr2Operands )12 "
    push    word [bp+6]
    push    11
    push    0
    push    word [bp+4]
    push    25
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    word [bp-2]
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1519:
    leave
    ret
; SEGMENT _TEXT
; glb GetOperandInfo : (
; prm     idx : int
; prm     lvalSize : int
; prm     val : * int
; prm     size : * int
; prm     delDeref : * int
;     ) int
SEGMENT _TEXT
    global  _GetOperandInfo
_GetOperandInfo:
    push    bp
    mov     bp, sp
; loc     idx : (@4): int
; loc     lvalSize : (@6): int
; loc     val : (@8): * int
; loc     size : (@10): * int
; loc     delDeref : (@12): * int
; loc     idx0 : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "idx "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "=(34) *(@-2) *(@4) "
    mov     ax, [bp+4]
    mov     [bp-2], ax
; RPN'ized expression: "delDeref *u 0 = "
; Expanded expression: "(@12) *(2) 0 =(2) "
; Fused expression:    "*(2) (@12) =(34) *ax 0 "
    mov     ax, [bp+12]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; while
; RPN'ized expression: "stack idx + *u 0 + *u 256 >= stack idx + *u 0 + *u 262 <= && "
; Expanded expression: "stack (@4) *(2) 4 * + 0 + *(2) 256 >= _Bool [sh&&->1525] stack (@4) *(2) 4 * + 0 + *(2) 262 <= _Bool &&[1525] "
L1523:
; Fused expression:    "* *(@4) 4 + stack ax + ax 0 >= *ax 256 _Bool [sh&&->1525] * *(@4) 4 + stack ax + ax 0 <= *ax 262 _Bool &&[1525] "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 256
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L1525
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 262
    setle   al
    cbw
    test    ax, ax
    setne   al
    cbw
L1525:
; JumpIfZero
    test    ax, ax
    je      L1524
; RPN'ized expression: "idx --p "
; Expanded expression: "(@4) --p(2) "
; Fused expression:    "--p(2) *(@4) "
    mov     ax, [bp+4]
    dec     word [bp+4]
    jmp     L1523
L1524:
; if
; RPN'ized expression: "stack idx + *u 0 + *u 78 == "
; Expanded expression: "stack (@4) *(2) 4 * + 0 + *(2) 78 == "
; Fused expression:    "* *(@4) 4 + stack ax + ax 0 == *ax 78 IF! "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 78
    jne     L1526
; {
; if
; RPN'ized expression: "lvalSize "
; Expanded expression: "(@6) *(2) "
; Fused expression:    "*(2) (@6) "
    mov     ax, [bp+6]
; JumpIfZero
    test    ax, ax
    je      L1528
; {
; RPN'ized expression: "size *u lvalSize = "
; Expanded expression: "(@10) *(2) (@6) *(2) =(2) "
; Fused expression:    "*(2) (@10) =(34) *ax *(@6) "
    mov     ax, [bp+10]
    mov     bx, ax
    mov     ax, [bp+6]
    mov     [bx], ax
; RPN'ized expression: "val *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; return
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
; Fused expression:    "262 "
    mov     ax, 262
    jmp     L1522
; }
L1528:
; RPN'ized expression: "size *u stack idx + *u 1 + *u = "
; Expanded expression: "(@10) *(2) stack (@4) *(2) 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@10) push-ax * *(@4) 4 + stack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp+10]
    push    ax
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "delDeref *u 1 = "
; Expanded expression: "(@12) *(2) 1 =(2) "
; Fused expression:    "*(2) (@12) =(34) *ax 1 "
    mov     ax, [bp+12]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "val *u stack idx 1 + + *u 1 + *u = "
; Expanded expression: "(@8) *(2) stack (@4) *(2) 1 + 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@8) push-ax + *(@4) 1 * ax 4 + stack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp+8]
    push    ax
    mov     ax, [bp+4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; return
; RPN'ized expression: "stack idx 1 + + *u 0 + *u 260 + 257 - "
; Expanded expression: "stack (@4) *(2) 1 + 4 * + 0 + *(2) 260 + 257 - "
; Fused expression:    "+ *(@4) 1 * ax 4 + stack ax + ax 0 + *ax 260 - ax 257 "
    mov     ax, [bp+4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 260
    sub     ax, 257
    jmp     L1522
; }
L1526:
; RPN'ized expression: "idx idx0 = "
; Expanded expression: "(@4) (@-2) *(2) =(2) "
; Fused expression:    "=(34) *(@4) *(@-2) "
    mov     ax, [bp-2]
    mov     [bp+4], ax
; if
; RPN'ized expression: "lvalSize "
; Expanded expression: "(@6) *(2) "
; Fused expression:    "*(2) (@6) "
    mov     ax, [bp+6]
; JumpIfZero
    test    ax, ax
    je      L1530
; {
; RPN'ized expression: "size *u lvalSize = "
; Expanded expression: "(@10) *(2) (@6) *(2) =(2) "
; Fused expression:    "*(2) (@10) =(34) *ax *(@6) "
    mov     ax, [bp+10]
    mov     bx, ax
    mov     ax, [bp+6]
    mov     [bx], ax
; RPN'ized expression: "val *u stack idx + *u 1 + *u = "
; Expanded expression: "(@8) *(2) stack (@4) *(2) 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@8) push-ax * *(@4) 4 + stack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp+8]
    push    ax
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; switch
; RPN'ized expression: "stack idx + *u 0 + *u "
; Expanded expression: "stack (@4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@4) 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L1534
; {
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1535
L1534:
    cmp     ax, 16
    jne     L1536
L1535:
; return
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
; Fused expression:    "260 "
    mov     ax, 260
    jmp     L1522
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L1537
L1536:
    cmp     ax, 89
    jne     L1538
L1537:
; return
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
; Fused expression:    "261 "
    mov     ax, 261
    jmp     L1522
; default
L1533:
; RPN'ized expression: "val *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; return
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
; Fused expression:    "262 "
    mov     ax, 262
    jmp     L1522
; }
    jmp     L1532
L1538:
    jmp     L1533
L1532:
; }
L1530:
; RPN'ized expression: "size *u SizeOfWord = "
; Expanded expression: "(@10) *(2) SizeOfWord *(2) =(2) "
; Fused expression:    "*(2) (@10) =(34) *ax *SizeOfWord "
    mov     ax, [bp+10]
    mov     bx, ax
    mov     ax, [_SizeOfWord]
    mov     [bx], ax
; RPN'ized expression: "val *u stack idx + *u 1 + *u = "
; Expanded expression: "(@8) *(2) stack (@4) *(2) 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@8) push-ax * *(@4) 4 + stack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp+8]
    push    ax
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; switch
; RPN'ized expression: "stack idx + *u 0 + *u "
; Expanded expression: "stack (@4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@4) 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L1542
; {
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L1543
L1542:
    cmp     ax, 1
    jne     L1544
L1543:
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L1545
L1544:
    cmp     ax, 2
    jne     L1546
L1545:
; return
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
; Fused expression:    "256 "
    mov     ax, 256
    jmp     L1522
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1547
L1546:
    cmp     ax, 16
    jne     L1548
L1547:
; return
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
; Fused expression:    "257 "
    mov     ax, 257
    jmp     L1522
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L1549
L1548:
    cmp     ax, 89
    jne     L1550
L1549:
; return
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
; Fused expression:    "258 "
    mov     ax, 258
    jmp     L1522
; default
L1541:
; RPN'ized expression: "val *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; return
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
; Fused expression:    "259 "
    mov     ax, 259
    jmp     L1522
; }
    jmp     L1540
L1550:
    jmp     L1541
L1540:
L1522:
    leave
    ret
; SEGMENT _TEXT
; glb GenFuse : (
; prm     idx : * int
;     ) void
SEGMENT _TEXT
    global  _GenFuse
_GenFuse:
    push    bp
    mov     bp, sp
; loc     idx : (@4): * int
; loc     tok : (@-2): int
    sub     sp, 2
; loc     oldIdxRight : (@-4): int
    sub     sp, 2
; loc     oldSpRight : (@-6): int
    sub     sp, 2
; loc     oldIdxLeft : (@-8): int
    sub     sp, 2
; loc     oldSpLeft : (@-10): int
    sub     sp, 2
; loc     opSzRight : (@-12): int
    sub     sp, 2
; loc     opSzLeft : (@-14): int
    sub     sp, 2
; loc     opTypRight : (@-16): int
    sub     sp, 2
; loc     opTypLeft : (@-18): int
    sub     sp, 2
; loc     opValRight : (@-20): int
    sub     sp, 2
; loc     opValLeft : (@-22): int
    sub     sp, 2
; loc     delDerefRight : (@-24): int
    sub     sp, 2
; loc     delDerefLeft : (@-26): int
    sub     sp, 2
; loc     num : (@-28): int
    sub     sp, 2
; loc     lvalSize : (@-30): int
    sub     sp, 2
; if
; RPN'ized expression: "idx *u 0 < "
; Expanded expression: "(@4) *(2) *(2) 0 < "
; Fused expression:    "*(2) (@4) < *ax 0 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jge     L1553
; RPN'ized expression: "( L1555 error ) "
; Expanded expression: " L1555  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1555:
    db  "GenFuse(): idx < 0",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1555 , error )2 "
    push    L1555
    call    _error
    sub     sp, -2
L1553:
; RPN'ized expression: "tok stack idx *u + *u 0 + *u = "
; Expanded expression: "(@-2) stack (@4) *(2) *(2) 4 * + 0 + *(2) =(2) "
; Fused expression:    "*(2) (@4) * *ax 4 + stack ax + ax 0 =(34) *(@-2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-2], ax
; RPN'ized expression: "idx *u -- "
; Expanded expression: "(@4) *(2) --(2) "
; Fused expression:    "*(2) (@4) --(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    dec     word [bx]
    mov     ax, [bx]
; RPN'ized expression: "oldIdxRight idx *u = "
; Expanded expression: "(@-4) (@4) *(2) *(2) =(2) "
; Fused expression:    "*(2) (@4) =(34) *(@-4) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-4], ax
; RPN'ized expression: "oldSpRight sp = "
; Expanded expression: "(@-6) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-6) *sp "
    mov     ax, [_sp]
    mov     [bp-6], ax
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L1559
; {
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L1560
L1559:
    cmp     ax, 2
    jne     L1561
L1560:
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L1562
L1561:
    cmp     ax, 1
    jne     L1563
L1562:
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1564
L1563:
    cmp     ax, 16
    jne     L1565
L1564:
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L1566
L1565:
    cmp     ax, 89
    jne     L1567
L1566:
; break
    jmp     L1557
; case
; RPN'ized expression: "90 "
; Expanded expression: "90 "
; Expression value: 90
    jmp     L1568
L1567:
    cmp     ax, 90
    jne     L1569
L1568:
; RPN'ized expression: "( idx GenFuse ) "
; Expanded expression: " (@4) *(2)  GenFuse ()2 "
; Fused expression:    "( *(2) (@4) , GenFuse )2 "
    push    word [bp+4]
    call    _GenFuse
    sub     sp, -2
; break
    jmp     L1557
; case
; RPN'ized expression: "78 "
; Expanded expression: "78 "
; Expression value: 78
    jmp     L1570
L1569:
    cmp     ax, 78
    jne     L1571
L1570:
; RPN'ized expression: "opSzRight stack idx *u 1 + + *u 1 + *u = "
; Expanded expression: "(@-12) stack (@4) *(2) *(2) 1 + 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) + *ax 1 * ax 4 + stack ax + ax 2 =(34) *(@-12) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-12], ax
; RPN'ized expression: "( idx GenFuse ) "
; Expanded expression: " (@4) *(2)  GenFuse ()2 "
; Fused expression:    "( *(2) (@4) , GenFuse )2 "
    push    word [bp+4]
    call    _GenFuse
    sub     sp, -2
; RPN'ized expression: "oldIdxRight oldSpRight sp - -= "
; Expanded expression: "(@-4) (@-6) *(2) sp *(2) - -=(2) "
; Fused expression:    "- *(@-6) *sp -=(34) *(@-4) ax "
    mov     ax, [bp-6]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-4]
    sub     ax, cx
    mov     [bp-4], ax
; switch
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L1575
; {
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1576
L1575:
    cmp     ax, 16
    jne     L1577
L1576:
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L1578
L1577:
    cmp     ax, 89
    jne     L1579
L1578:
; if
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u 16 == "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + *(2) 16 == "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 == *ax 16 IF! "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    jne     L1581
; RPN'ized expression: "stack oldIdxRight 1 + + *u 0 + *u 257 = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + 257 =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 =(34) *ax 257 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 257
    mov     [bx], ax
    jmp     L1582
L1581:
; else
; RPN'ized expression: "stack oldIdxRight 1 + + *u 0 + *u 258 = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + 258 =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 =(34) *ax 258 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 258
    mov     [bx], ax
L1582:
; RPN'ized expression: "stack oldIdxRight 1 + + *u 1 + *u stack oldIdxRight + *u 1 + *u = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 2 + stack (@-4) *(2) 4 * + 2 + *(2) =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 2 push-ax * *(@-4) 4 + stack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    push    ax
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u tok = "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + (@-2) *(2) =(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 =(34) *ax *(@-2) "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp-2]
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight + *u 1 + *u opSzRight = "
; Expanded expression: "stack (@-4) *(2) 4 * + 2 + (@-12) *(2) =(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 2 =(34) *ax *(@-12) "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-12]
    mov     [bx], ax
; break
    jmp     L1573
; default
L1574:
; RPN'ized expression: "( 259 , oldIdxRight 2 + ins ) "
; Expanded expression: " 259  (@-4) *(2) 2 +  ins ()4 "
; Fused expression:    "( 259 , + *(@-4) 2 , ins )4 "
    push    259
    mov     ax, [bp-4]
    add     ax, 2
    push    ax
    call    _ins
    sub     sp, -4
; break
    jmp     L1573
; }
    jmp     L1573
L1579:
    jmp     L1574
L1573:
; break
    jmp     L1557
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L1572
L1571:
    cmp     ax, 12
    jne     L1583
L1572:
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L1584
L1583:
    cmp     ax, 13
    jne     L1585
L1584:
; case
; RPN'ized expression: "81 "
; Expanded expression: "81 "
; Expression value: 81
    jmp     L1586
L1585:
    cmp     ax, 81
    jne     L1587
L1586:
; case
; RPN'ized expression: "82 "
; Expanded expression: "82 "
; Expression value: 82
    jmp     L1588
L1587:
    cmp     ax, 82
    jne     L1589
L1588:
; RPN'ized expression: "opSzRight stack idx *u 1 + + *u 1 + *u = "
; Expanded expression: "(@-12) stack (@4) *(2) *(2) 1 + 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) + *ax 1 * ax 4 + stack ax + ax 2 =(34) *(@-12) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-12], ax
; RPN'ized expression: "( idx GenFuse ) "
; Expanded expression: " (@4) *(2)  GenFuse ()2 "
; Fused expression:    "( *(2) (@4) , GenFuse )2 "
    push    word [bp+4]
    call    _GenFuse
    sub     sp, -2
; RPN'ized expression: "oldIdxRight oldSpRight sp - -= "
; Expanded expression: "(@-4) (@-6) *(2) sp *(2) - -=(2) "
; Fused expression:    "- *(@-6) *sp -=(34) *(@-4) ax "
    mov     ax, [bp-6]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-4]
    sub     ax, cx
    mov     [bp-4], ax
; switch
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L1593
; {
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1594
L1593:
    cmp     ax, 16
    jne     L1595
L1594:
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L1596
L1595:
    cmp     ax, 89
    jne     L1597
L1596:
; if
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u 16 == "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + *(2) 16 == "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 == *ax 16 IF! "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    jne     L1599
; RPN'ized expression: "stack oldIdxRight 1 + + *u 0 + *u 260 = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + 260 =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 =(34) *ax 260 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 260
    mov     [bx], ax
    jmp     L1600
L1599:
; else
; RPN'ized expression: "stack oldIdxRight 1 + + *u 0 + *u 261 = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + 261 =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 =(34) *ax 261 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 261
    mov     [bx], ax
L1600:
; RPN'ized expression: "stack oldIdxRight 1 + + *u 1 + *u stack oldIdxRight + *u 1 + *u = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 2 + stack (@-4) *(2) 4 * + 2 + *(2) =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 2 push-ax * *(@-4) 4 + stack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    push    ax
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u tok = "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + (@-2) *(2) =(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 =(34) *ax *(@-2) "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp-2]
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight + *u 1 + *u opSzRight = "
; Expanded expression: "stack (@-4) *(2) 4 * + 2 + (@-12) *(2) =(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 2 =(34) *ax *(@-12) "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-12]
    mov     [bx], ax
; break
    jmp     L1591
; default
L1592:
; RPN'ized expression: "( 262 , oldIdxRight 2 + ins ) "
; Expanded expression: " 262  (@-4) *(2) 2 +  ins ()4 "
; Fused expression:    "( 262 , + *(@-4) 2 , ins )4 "
    push    262
    mov     ax, [bp-4]
    add     ax, 2
    push    ax
    call    _ins
    sub     sp, -4
; break
    jmp     L1591
; }
    jmp     L1591
L1597:
    jmp     L1592
L1591:
; break
    jmp     L1557
; case
; RPN'ized expression: "126 "
; Expanded expression: "126 "
; Expression value: 126
    jmp     L1590
L1589:
    cmp     ax, 126
    jne     L1601
L1590:
; case
; RPN'ized expression: "79 "
; Expanded expression: "79 "
; Expression value: 79
    jmp     L1602
L1601:
    cmp     ax, 79
    jne     L1603
L1602:
; case
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
    jmp     L1604
L1603:
    cmp     ax, 80
    jne     L1605
L1604:
; case
; RPN'ized expression: "120 "
; Expanded expression: "120 "
; Expression value: 120
    jmp     L1606
L1605:
    cmp     ax, 120
    jne     L1607
L1606:
; RPN'ized expression: "( idx GenFuse ) "
; Expanded expression: " (@4) *(2)  GenFuse ()2 "
; Fused expression:    "( *(2) (@4) , GenFuse )2 "
    push    word [bp+4]
    call    _GenFuse
    sub     sp, -2
; RPN'ized expression: "oldIdxRight oldSpRight sp - -= "
; Expanded expression: "(@-4) (@-6) *(2) sp *(2) - -=(2) "
; Fused expression:    "- *(@-6) *sp -=(34) *(@-4) ax "
    mov     ax, [bp-6]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-4]
    sub     ax, cx
    mov     [bp-4], ax
; if
; RPN'ized expression: "tok 79 == "
; Expanded expression: "(@-2) *(2) 79 == "
; Fused expression:    "== *(@-2) 79 IF! "
    mov     ax, [bp-2]
    cmp     ax, 79
    jne     L1609
; RPN'ized expression: "( 1 , oldIdxRight 1 + del ) "
; Expanded expression: " 1  (@-4) *(2) 1 +  del ()4 "
; Fused expression:    "( 1 , + *(@-4) 1 , del )4 "
    push    1
    mov     ax, [bp-4]
    add     ax, 1
    push    ax
    call    _del
    sub     sp, -4
L1609:
; break
    jmp     L1557
; case
; RPN'ized expression: "83 "
; Expanded expression: "83 "
; Expression value: 83
    jmp     L1608
L1607:
    cmp     ax, 83
    jne     L1611
L1608:
; case
; RPN'ized expression: "84 "
; Expanded expression: "84 "
; Expression value: 84
    jmp     L1612
L1611:
    cmp     ax, 84
    jne     L1613
L1612:
; RPN'ized expression: "opSzRight stack idx *u 1 + + *u 1 + *u = "
; Expanded expression: "(@-12) stack (@4) *(2) *(2) 1 + 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) + *ax 1 * ax 4 + stack ax + ax 2 =(34) *(@-12) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-12], ax
; RPN'ized expression: "num stack idx *u + *u 1 + *u = "
; Expanded expression: "(@-28) stack (@4) *(2) *(2) 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) * *ax 4 + stack ax + ax 2 =(34) *(@-28) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-28], ax
; RPN'ized expression: "oldIdxRight idx *u -- = "
; Expanded expression: "(@-4) (@4) *(2) --(2) =(2) "
; Fused expression:    "*(2) (@4) --(2) *ax =(34) *(@-4) ax "
    mov     ax, [bp+4]
    mov     bx, ax
    dec     word [bx]
    mov     ax, [bx]
    mov     [bp-4], ax
; RPN'ized expression: "( idx GenFuse ) "
; Expanded expression: " (@4) *(2)  GenFuse ()2 "
; Fused expression:    "( *(2) (@4) , GenFuse )2 "
    push    word [bp+4]
    call    _GenFuse
    sub     sp, -2
; RPN'ized expression: "oldIdxRight oldSpRight sp - -= "
; Expanded expression: "(@-4) (@-6) *(2) sp *(2) - -=(2) "
; Fused expression:    "- *(@-6) *sp -=(34) *(@-4) ax "
    mov     ax, [bp-6]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-4]
    sub     ax, cx
    mov     [bp-4], ax
; switch
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L1617
; {
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1618
L1617:
    cmp     ax, 16
    jne     L1619
L1618:
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L1620
L1619:
    cmp     ax, 89
    jne     L1621
L1620:
; RPN'ized expression: "stack oldIdxRight 2 + + *u 0 + *u 256 = "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 0 + 256 =(2) "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 0 =(34) *ax 256 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 256
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight 2 + + *u 1 + *u num = "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 2 + (@-28) *(2) =(2) "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 2 =(34) *ax *(@-28) "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-28]
    mov     [bx], ax
; if
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u 16 == "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + *(2) 16 == "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 == *ax 16 IF! "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    jne     L1623
; RPN'ized expression: "stack oldIdxRight 1 + + *u 0 + *u 260 = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + 260 =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 =(34) *ax 260 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 260
    mov     [bx], ax
    jmp     L1624
L1623:
; else
; RPN'ized expression: "stack oldIdxRight 1 + + *u 0 + *u 261 = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + 261 =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 =(34) *ax 261 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 261
    mov     [bx], ax
L1624:
; RPN'ized expression: "stack oldIdxRight 1 + + *u 1 + *u stack oldIdxRight + *u 1 + *u = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 2 + stack (@-4) *(2) 4 * + 2 + *(2) =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 2 push-ax * *(@-4) 4 + stack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    push    ax
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight + *u 0 + *u tok = "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + (@-2) *(2) =(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 =(34) *ax *(@-2) "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp-2]
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight + *u 1 + *u opSzRight = "
; Expanded expression: "stack (@-4) *(2) 4 * + 2 + (@-12) *(2) =(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 2 =(34) *ax *(@-12) "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-12]
    mov     [bx], ax
; break
    jmp     L1615
; default
L1616:
; RPN'ized expression: "stack oldIdxRight 1 + + *u 0 + *u tok = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + (@-2) *(2) =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 =(34) *ax *(@-2) "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp-2]
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight 1 + + *u 1 + *u opSzRight = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 2 + (@-12) *(2) =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 2 =(34) *ax *(@-12) "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-12]
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight 2 + + *u 0 + *u 262 = "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 0 + 262 =(2) "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 0 =(34) *ax 262 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 262
    mov     [bx], ax
; RPN'ized expression: "( num , 256 , oldIdxRight 3 + ins2 ) "
; Expanded expression: " (@-28) *(2)  256  (@-4) *(2) 3 +  ins2 ()6 "
; Fused expression:    "( *(2) (@-28) , 256 , + *(@-4) 3 , ins2 )6 "
    push    word [bp-28]
    push    256
    mov     ax, [bp-4]
    add     ax, 3
    push    ax
    call    _ins2
    sub     sp, -6
; break
    jmp     L1615
; }
    jmp     L1615
L1621:
    jmp     L1616
L1615:
; break
    jmp     L1557
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L1614
L1613:
    cmp     ax, 61
    jne     L1625
L1614:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L1626
L1625:
    cmp     ax, 68
    jne     L1627
L1626:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L1628
L1627:
    cmp     ax, 69
    jne     L1629
L1628:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L1630
L1629:
    cmp     ax, 65
    jne     L1631
L1630:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L1632
L1631:
    cmp     ax, 66
    jne     L1633
L1632:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L1634
L1633:
    cmp     ax, 67
    jne     L1635
L1634:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L1636
L1635:
    cmp     ax, 70
    jne     L1637
L1636:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L1638
L1637:
    cmp     ax, 71
    jne     L1639
L1638:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L1640
L1639:
    cmp     ax, 72
    jne     L1641
L1640:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L1642
L1641:
    cmp     ax, 73
    jne     L1643
L1642:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L1644
L1643:
    cmp     ax, 74
    jne     L1645
L1644:
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L1646
L1645:
    cmp     ax, 43
    jne     L1647
L1646:
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L1648
L1647:
    cmp     ax, 45
    jne     L1649
L1648:
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L1650
L1649:
    cmp     ax, 42
    jne     L1651
L1650:
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L1652
L1651:
    cmp     ax, 47
    jne     L1653
L1652:
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L1654
L1653:
    cmp     ax, 37
    jne     L1655
L1654:
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L1656
L1655:
    cmp     ax, 4
    jne     L1657
L1656:
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L1658
L1657:
    cmp     ax, 5
    jne     L1659
L1658:
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L1660
L1659:
    cmp     ax, 38
    jne     L1661
L1660:
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L1662
L1661:
    cmp     ax, 94
    jne     L1663
L1662:
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L1664
L1663:
    cmp     ax, 124
    jne     L1665
L1664:
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L1666
L1665:
    cmp     ax, 60
    jne     L1667
L1666:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L1668
L1667:
    cmp     ax, 62
    jne     L1669
L1668:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L1670
L1669:
    cmp     ax, 10
    jne     L1671
L1670:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L1672
L1671:
    cmp     ax, 11
    jne     L1673
L1672:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L1674
L1673:
    cmp     ax, 8
    jne     L1675
L1674:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L1676
L1675:
    cmp     ax, 9
    jne     L1677
L1676:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L1678
L1677:
    cmp     ax, 85
    jne     L1679
L1678:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L1680
L1679:
    cmp     ax, 86
    jne     L1681
L1680:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L1682
L1681:
    cmp     ax, 87
    jne     L1683
L1682:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L1684
L1683:
    cmp     ax, 88
    jne     L1685
L1684:
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L1686
L1685:
    cmp     ax, 6
    jne     L1687
L1686:
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L1688
L1687:
    cmp     ax, 7
    jne     L1689
L1688:
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L1693
; {
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L1694
L1693:
    cmp     ax, 61
    jne     L1695
L1694:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L1696
L1695:
    cmp     ax, 68
    jne     L1697
L1696:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L1698
L1697:
    cmp     ax, 69
    jne     L1699
L1698:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L1700
L1699:
    cmp     ax, 65
    jne     L1701
L1700:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L1702
L1701:
    cmp     ax, 66
    jne     L1703
L1702:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L1704
L1703:
    cmp     ax, 67
    jne     L1705
L1704:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L1706
L1705:
    cmp     ax, 70
    jne     L1707
L1706:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L1708
L1707:
    cmp     ax, 71
    jne     L1709
L1708:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L1710
L1709:
    cmp     ax, 72
    jne     L1711
L1710:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L1712
L1711:
    cmp     ax, 73
    jne     L1713
L1712:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L1714
L1713:
    cmp     ax, 74
    jne     L1715
L1714:
; RPN'ized expression: "lvalSize stack idx *u 1 + + *u 1 + *u = "
; Expanded expression: "(@-30) stack (@4) *(2) *(2) 1 + 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) + *ax 1 * ax 4 + stack ax + ax 2 =(34) *(@-30) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-30], ax
; break
    jmp     L1691
; default
L1692:
; RPN'ized expression: "lvalSize 0 = "
; Expanded expression: "(@-30) 0 =(2) "
; Fused expression:    "=(34) *(@-30) 0 "
    mov     ax, 0
    mov     [bp-30], ax
; break
    jmp     L1691
; }
    jmp     L1691
L1715:
    jmp     L1692
L1691:
; RPN'ized expression: "( idx GenFuse ) "
; Expanded expression: " (@4) *(2)  GenFuse ()2 "
; Fused expression:    "( *(2) (@4) , GenFuse )2 "
    push    word [bp+4]
    call    _GenFuse
    sub     sp, -2
; RPN'ized expression: "oldIdxRight oldSpRight sp - -= "
; Expanded expression: "(@-4) (@-6) *(2) sp *(2) - -=(2) "
; Fused expression:    "- *(@-6) *sp -=(34) *(@-4) ax "
    mov     ax, [bp-6]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-4]
    sub     ax, cx
    mov     [bp-4], ax
; RPN'ized expression: "opTypRight ( delDerefRight &u , opSzRight &u , opValRight &u , 0 , oldIdxRight GetOperandInfo ) = "
; Expanded expression: "(@-16)  (@-24)  (@-12)  (@-20)  0  (@-4) *(2)  GetOperandInfo ()10 =(2) "
; Fused expression:    "( (@-24) , (@-12) , (@-20) , 0 , *(2) (@-4) , GetOperandInfo )10 =(34) *(@-16) ax "
    lea     ax, [bp-24]
    push    ax
    lea     ax, [bp-12]
    push    ax
    lea     ax, [bp-20]
    push    ax
    push    0
    push    word [bp-4]
    call    _GetOperandInfo
    sub     sp, -10
    mov     [bp-16], ax
; RPN'ized expression: "oldIdxLeft idx *u = "
; Expanded expression: "(@-8) (@4) *(2) *(2) =(2) "
; Fused expression:    "*(2) (@4) =(34) *(@-8) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-8], ax
; RPN'ized expression: "oldSpLeft sp = "
; Expanded expression: "(@-10) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-10) *sp "
    mov     ax, [_sp]
    mov     [bp-10], ax
; RPN'ized expression: "( idx GenFuse ) "
; Expanded expression: " (@4) *(2)  GenFuse ()2 "
; Fused expression:    "( *(2) (@4) , GenFuse )2 "
    push    word [bp+4]
    call    _GenFuse
    sub     sp, -2
; RPN'ized expression: "oldIdxLeft oldSpLeft sp - -= "
; Expanded expression: "(@-8) (@-10) *(2) sp *(2) - -=(2) "
; Fused expression:    "- *(@-10) *sp -=(34) *(@-8) ax "
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    mov     [bp-8], ax
; RPN'ized expression: "oldIdxRight oldSpLeft sp - -= "
; Expanded expression: "(@-4) (@-10) *(2) sp *(2) - -=(2) "
; Fused expression:    "- *(@-10) *sp -=(34) *(@-4) ax "
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-4]
    sub     ax, cx
    mov     [bp-4], ax
; RPN'ized expression: "opTypLeft ( delDerefLeft &u , opSzLeft &u , opValLeft &u , lvalSize , oldIdxLeft GetOperandInfo ) = "
; Expanded expression: "(@-18)  (@-26)  (@-14)  (@-22)  (@-30) *(2)  (@-8) *(2)  GetOperandInfo ()10 =(2) "
; Fused expression:    "( (@-26) , (@-14) , (@-22) , *(2) (@-30) , *(2) (@-8) , GetOperandInfo )10 =(34) *(@-18) ax "
    lea     ax, [bp-26]
    push    ax
    lea     ax, [bp-14]
    push    ax
    lea     ax, [bp-22]
    push    ax
    push    word [bp-30]
    push    word [bp-8]
    call    _GetOperandInfo
    sub     sp, -10
    mov     [bp-18], ax
; if
; RPN'ized expression: "tok 6 == tok 7 == || "
; Expanded expression: "(@-2) *(2) 6 == _Bool [sh||->1719] (@-2) *(2) 7 == _Bool ||[1719] "
; Fused expression:    "== *(@-2) 6 _Bool [sh||->1719] == *(@-2) 7 _Bool ||[1719] "
    mov     ax, [bp-2]
    cmp     ax, 6
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L1719
    mov     ax, [bp-2]
    cmp     ax, 7
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L1719:
; JumpIfZero
    test    ax, ax
    je      L1717
; break
    jmp     L1557
L1717:
; if
; RPN'ized expression: "opTypLeft 259 != opTypLeft 262 != && "
; Expanded expression: "(@-18) *(2) 259 != _Bool [sh&&->1722] (@-18) *(2) 262 != _Bool &&[1722] "
; Fused expression:    "!= *(@-18) 259 _Bool [sh&&->1722] != *(@-18) 262 _Bool &&[1722] "
    mov     ax, [bp-18]
    cmp     ax, 259
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L1722
    mov     ax, [bp-18]
    cmp     ax, 262
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L1722:
; JumpIfZero
    test    ax, ax
    je      L1720
; {
; loc             cnt : (@-32): int
    sub     sp, 2
; =
; RPN'ized expression: "oldIdxLeft idx *u - "
; Expanded expression: "(@-8) *(2) (@4) *(2) *(2) - "
; Fused expression:    "*(2) (@4) - *(@-8) *ax =(34) *(@-32) ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, [bp-8]
    sub     ax, cx
    mov     [bp-32], ax
; RPN'ized expression: "( cnt , idx *u 1 + del ) "
; Expanded expression: " (@-32) *(2)  (@4) *(2) *(2) 1 +  del ()4 "
; Fused expression:    "( *(2) (@-32) , *(2) (@4) + *ax 1 , del )4 "
    push    word [bp-32]
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    call    _del
    sub     sp, -4
; RPN'ized expression: "oldIdxLeft cnt -= "
; Expanded expression: "(@-8) (@-32) *(2) -=(2) "
; Fused expression:    "-=(34) *(@-8) *(@-32) "
    mov     ax, [bp-8]
    sub     ax, [bp-32]
    mov     [bp-8], ax
; RPN'ized expression: "oldIdxRight cnt -= "
; Expanded expression: "(@-4) (@-32) *(2) -=(2) "
; Fused expression:    "-=(34) *(@-4) *(@-32) "
    mov     ax, [bp-4]
    sub     ax, [bp-32]
    mov     [bp-4], ax
    sub     sp, -2
; }
    jmp     L1721
L1720:
; else
; if
; RPN'ized expression: "opTypRight 259 == opTypRight 262 == || "
; Expanded expression: "(@-16) *(2) 259 == _Bool [sh||->1725] (@-16) *(2) 262 == _Bool ||[1725] "
; Fused expression:    "== *(@-16) 259 _Bool [sh||->1725] == *(@-16) 262 _Bool ||[1725] "
    mov     ax, [bp-16]
    cmp     ax, 259
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L1725
    mov     ax, [bp-16]
    cmp     ax, 262
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L1725:
; JumpIfZero
    test    ax, ax
    je      L1723
; {
; RPN'ized expression: "( 512 , oldIdxLeft ++ ins ) "
; Expanded expression: " 512  (@-8) ++(2)  ins ()4 "
; Fused expression:    "( 512 , ++(2) *(@-8) , ins )4 "
    push    512
    inc     word [bp-8]
    mov     ax, [bp-8]
    push    ax
    call    _ins
    sub     sp, -4
; RPN'ized expression: "oldIdxRight ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
; if
; RPN'ized expression: "opTypLeft 259 == "
; Expanded expression: "(@-18) *(2) 259 == "
; Fused expression:    "== *(@-18) 259 IF! "
    mov     ax, [bp-18]
    cmp     ax, 259
    jne     L1726
; RPN'ized expression: "opTypLeft 263 = "
; Expanded expression: "(@-18) 263 =(2) "
; Fused expression:    "=(34) *(@-18) 263 "
    mov     ax, 263
    mov     [bp-18], ax
    jmp     L1727
L1726:
; else
; RPN'ized expression: "opTypLeft 264 = "
; Expanded expression: "(@-18) 264 =(2) "
; Fused expression:    "=(34) *(@-18) 264 "
    mov     ax, 264
    mov     [bp-18], ax
L1727:
; if
; RPN'ized expression: "delDerefLeft "
; Expanded expression: "(@-26) *(2) "
; Fused expression:    "*(2) (@-26) "
    mov     ax, [bp-26]
; JumpIfZero
    test    ax, ax
    je      L1728
; {
; RPN'ized expression: "( 2 , oldIdxLeft 2 -= del ) "
; Expanded expression: " 2  (@-8) 2 -=(2)  del ()4 "
; Fused expression:    "( 2 , -=(34) *(@-8) 2 , del )4 "
    push    2
    mov     ax, [bp-8]
    sub     ax, 2
    mov     [bp-8], ax
    push    ax
    call    _del
    sub     sp, -4
; RPN'ized expression: "oldIdxRight 2 -= "
; Expanded expression: "(@-4) 2 -=(2) "
; Fused expression:    "-=(34) *(@-4) 2 "
    mov     ax, [bp-4]
    sub     ax, 2
    mov     [bp-4], ax
; }
L1728:
; }
    jmp     L1724
L1723:
; else
; if
; RPN'ized expression: "delDerefLeft "
; Expanded expression: "(@-26) *(2) "
; Fused expression:    "*(2) (@-26) "
    mov     ax, [bp-26]
; JumpIfZero
    test    ax, ax
    je      L1730
; {
; RPN'ized expression: "( 2 , oldIdxLeft 1 - del ) "
; Expanded expression: " 2  (@-8) *(2) 1 -  del ()4 "
; Fused expression:    "( 2 , - *(@-8) 1 , del )4 "
    push    2
    mov     ax, [bp-8]
    sub     ax, 1
    push    ax
    call    _del
    sub     sp, -4
; RPN'ized expression: "oldIdxLeft 2 -= "
; Expanded expression: "(@-8) 2 -=(2) "
; Fused expression:    "-=(34) *(@-8) 2 "
    mov     ax, [bp-8]
    sub     ax, 2
    mov     [bp-8], ax
; RPN'ized expression: "oldIdxRight 2 -= "
; Expanded expression: "(@-4) 2 -=(2) "
; Fused expression:    "-=(34) *(@-4) 2 "
    mov     ax, [bp-4]
    sub     ax, 2
    mov     [bp-4], ax
; }
L1730:
L1724:
L1721:
; if
; RPN'ized expression: "opTypRight 259 != opTypRight 262 != && "
; Expanded expression: "(@-16) *(2) 259 != _Bool [sh&&->1734] (@-16) *(2) 262 != _Bool &&[1734] "
; Fused expression:    "!= *(@-16) 259 _Bool [sh&&->1734] != *(@-16) 262 _Bool &&[1734] "
    mov     ax, [bp-16]
    cmp     ax, 259
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L1734
    mov     ax, [bp-16]
    cmp     ax, 262
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L1734:
; JumpIfZero
    test    ax, ax
    je      L1732
; {
; loc             cnt : (@-32): int
    sub     sp, 2
; =
; RPN'ized expression: "oldIdxRight oldIdxLeft - "
; Expanded expression: "(@-4) *(2) (@-8) *(2) - "
; Fused expression:    "- *(@-4) *(@-8) =(34) *(@-32) ax "
    mov     ax, [bp-4]
    sub     ax, [bp-8]
    mov     [bp-32], ax
; RPN'ized expression: "( cnt , oldIdxLeft 1 + del ) "
; Expanded expression: " (@-32) *(2)  (@-8) *(2) 1 +  del ()4 "
; Fused expression:    "( *(2) (@-32) , + *(@-8) 1 , del )4 "
    push    word [bp-32]
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    call    _del
    sub     sp, -4
; RPN'ized expression: "oldIdxRight cnt -= "
; Expanded expression: "(@-4) (@-32) *(2) -=(2) "
; Fused expression:    "-=(34) *(@-4) *(@-32) "
    mov     ax, [bp-4]
    sub     ax, [bp-32]
    mov     [bp-4], ax
    sub     sp, -2
; }
    jmp     L1733
L1732:
; else
; if
; RPN'ized expression: "delDerefRight "
; Expanded expression: "(@-24) *(2) "
; Fused expression:    "*(2) (@-24) "
    mov     ax, [bp-24]
; JumpIfZero
    test    ax, ax
    je      L1735
; {
; RPN'ized expression: "( 2 , oldIdxRight 1 - del ) "
; Expanded expression: " 2  (@-4) *(2) 1 -  del ()4 "
; Fused expression:    "( 2 , - *(@-4) 1 , del )4 "
    push    2
    mov     ax, [bp-4]
    sub     ax, 1
    push    ax
    call    _del
    sub     sp, -4
; RPN'ized expression: "oldIdxRight 2 -= "
; Expanded expression: "(@-4) 2 -=(2) "
; Fused expression:    "-=(34) *(@-4) 2 "
    mov     ax, [bp-4]
    sub     ax, 2
    mov     [bp-4], ax
; }
L1735:
L1733:
; RPN'ized expression: "stack oldIdxRight 1 + + *u 1 + *u opSzLeft 16 * opSzRight + = "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 2 + (@-14) *(2) 16 * (@-12) *(2) + =(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 2 push-ax * *(@-14) 16 + ax *(@-12) =(34) **sp ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    push    ax
    mov     ax, [bp-14]
    imul    ax, ax, 16
    add     ax, [bp-12]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "( opValRight , opTypRight , oldIdxRight 2 + ins2 ) "
; Expanded expression: " (@-20) *(2)  (@-16) *(2)  (@-4) *(2) 2 +  ins2 ()6 "
; Fused expression:    "( *(2) (@-20) , *(2) (@-16) , + *(@-4) 2 , ins2 )6 "
    push    word [bp-20]
    push    word [bp-16]
    mov     ax, [bp-4]
    add     ax, 2
    push    ax
    call    _ins2
    sub     sp, -6
; RPN'ized expression: "( opValLeft , opTypLeft , oldIdxRight 2 + ins2 ) "
; Expanded expression: " (@-22) *(2)  (@-18) *(2)  (@-4) *(2) 2 +  ins2 ()6 "
; Fused expression:    "( *(2) (@-22) , *(2) (@-18) , + *(@-4) 2 , ins2 )6 "
    push    word [bp-22]
    push    word [bp-18]
    mov     ax, [bp-4]
    add     ax, 2
    push    ax
    call    _ins2
    sub     sp, -6
; break
    jmp     L1557
; case
; RPN'ized expression: "41 "
; Expanded expression: "41 "
; Expression value: 41
    jmp     L1690
L1689:
    cmp     ax, 41
    jne     L1737
L1690:
; while
; RPN'ized expression: "stack idx *u + *u 0 + *u 40 != "
; Expanded expression: "stack (@4) *(2) *(2) 4 * + 0 + *(2) 40 != "
L1739:
; Fused expression:    "*(2) (@4) * *ax 4 + stack ax + ax 0 != *ax 40 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    je      L1740
; {
; RPN'ized expression: "( idx GenFuse ) "
; Expanded expression: " (@4) *(2)  GenFuse ()2 "
; Fused expression:    "( *(2) (@4) , GenFuse )2 "
    push    word [bp+4]
    call    _GenFuse
    sub     sp, -2
; if
; RPN'ized expression: "stack idx *u + *u 0 + *u 44 == "
; Expanded expression: "stack (@4) *(2) *(2) 4 * + 0 + *(2) 44 == "
; Fused expression:    "*(2) (@4) * *ax 4 + stack ax + ax 0 == *ax 44 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 44
    jne     L1741
; RPN'ized expression: "idx *u -- "
; Expanded expression: "(@4) *(2) --(2) "
; Fused expression:    "*(2) (@4) --(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    dec     word [bx]
    mov     ax, [bx]
L1741:
; }
    jmp     L1739
L1740:
; RPN'ized expression: "idx *u -- "
; Expanded expression: "(@4) *(2) --(2) "
; Fused expression:    "*(2) (@4) --(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    dec     word [bx]
    mov     ax, [bx]
; break
    jmp     L1557
; default
L1558:
; RPN'ized expression: "( ( tok GetTokenName ) , L1743 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L1743  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1743:
    db  "GenFuse: unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L1743 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L1743
    call    _error
    sub     sp, -4
; }
    jmp     L1557
L1737:
    jmp     L1558
L1557:
L1552:
    leave
    ret
; SEGMENT _TEXT
; glb GenGetBinaryOperatorInstr : (
; prm     tok : int
;     ) int
SEGMENT _TEXT
    global  _GenGetBinaryOperatorInstr
_GenGetBinaryOperatorInstr:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L1748
; {
; case
; RPN'ized expression: "83 "
; Expanded expression: "83 "
; Expression value: 83
    jmp     L1749
L1748:
    cmp     ax, 83
    jne     L1750
L1749:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L1751
L1750:
    cmp     ax, 68
    jne     L1752
L1751:
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L1753
L1752:
    cmp     ax, 43
    jne     L1754
L1753:
; return
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; Fused expression:    "9 "
    mov     ax, 9
    jmp     L1745
; case
; RPN'ized expression: "84 "
; Expanded expression: "84 "
; Expression value: 84
    jmp     L1755
L1754:
    cmp     ax, 84
    jne     L1756
L1755:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L1757
L1756:
    cmp     ax, 69
    jne     L1758
L1757:
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L1759
L1758:
    cmp     ax, 45
    jne     L1760
L1759:
; return
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; Fused expression:    "10 "
    mov     ax, 10
    jmp     L1745
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L1761
L1760:
    cmp     ax, 38
    jne     L1762
L1761:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L1763
L1762:
    cmp     ax, 72
    jne     L1764
L1763:
; return
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
; Fused expression:    "11 "
    mov     ax, 11
    jmp     L1745
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L1765
L1764:
    cmp     ax, 94
    jne     L1766
L1765:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L1767
L1766:
    cmp     ax, 73
    jne     L1768
L1767:
; return
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
; Fused expression:    "12 "
    mov     ax, 12
    jmp     L1745
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L1769
L1768:
    cmp     ax, 124
    jne     L1770
L1769:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L1771
L1770:
    cmp     ax, 74
    jne     L1772
L1771:
; return
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
; Fused expression:    "13 "
    mov     ax, 13
    jmp     L1745
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L1773
L1772:
    cmp     ax, 60
    jne     L1774
L1773:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L1775
L1774:
    cmp     ax, 62
    jne     L1776
L1775:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L1777
L1776:
    cmp     ax, 10
    jne     L1778
L1777:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L1779
L1778:
    cmp     ax, 11
    jne     L1780
L1779:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L1781
L1780:
    cmp     ax, 8
    jne     L1782
L1781:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L1783
L1782:
    cmp     ax, 9
    jne     L1784
L1783:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L1785
L1784:
    cmp     ax, 85
    jne     L1786
L1785:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L1787
L1786:
    cmp     ax, 86
    jne     L1788
L1787:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L1789
L1788:
    cmp     ax, 87
    jne     L1790
L1789:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L1791
L1790:
    cmp     ax, 88
    jne     L1792
L1791:
; return
; RPN'ized expression: "14 "
; Expanded expression: "14 "
; Expression value: 14
; Fused expression:    "14 "
    mov     ax, 14
    jmp     L1745
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L1793
L1792:
    cmp     ax, 42
    jne     L1794
L1793:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L1795
L1794:
    cmp     ax, 65
    jne     L1796
L1795:
; return
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
; Fused expression:    "16 "
    mov     ax, 16
    jmp     L1745
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L1797
L1796:
    cmp     ax, 47
    jne     L1798
L1797:
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L1799
L1798:
    cmp     ax, 37
    jne     L1800
L1799:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L1801
L1800:
    cmp     ax, 66
    jne     L1802
L1801:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L1803
L1802:
    cmp     ax, 67
    jne     L1804
L1803:
; return
; RPN'ized expression: "18 "
; Expanded expression: "18 "
; Expression value: 18
; Fused expression:    "18 "
    mov     ax, 18
    jmp     L1745
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L1805
L1804:
    cmp     ax, 4
    jne     L1806
L1805:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L1807
L1806:
    cmp     ax, 70
    jne     L1808
L1807:
; return
; RPN'ized expression: "19 "
; Expanded expression: "19 "
; Expression value: 19
; Fused expression:    "19 "
    mov     ax, 19
    jmp     L1745
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L1809
L1808:
    cmp     ax, 5
    jne     L1810
L1809:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L1811
L1810:
    cmp     ax, 71
    jne     L1812
L1811:
; return
; RPN'ized expression: "20 "
; Expanded expression: "20 "
; Expression value: 20
; Fused expression:    "20 "
    mov     ax, 20
    jmp     L1745
; default
L1747:
; RPN'ized expression: "( L1814 error ) "
; Expanded expression: " L1814  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1814:
    db  "Error: Invalid operator",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1814 , error )2 "
    push    L1814
    call    _error
    sub     sp, -2
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L1745
; }
    jmp     L1746
L1812:
    jmp     L1747
L1746:
L1745:
    leave
    ret
; SEGMENT _TEXT
; glb GenExpr1 : (void) void
SEGMENT _TEXT
    global  _GenExpr1
_GenExpr1:
    push    bp
    mov     bp, sp
; loc     s : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "sp 1 - "
; Expanded expression: "sp *(2) 1 - "
; Fused expression:    "- *sp 1 =(34) *(@-2) ax "
    mov     ax, [_sp]
    sub     ax, 1
    mov     [bp-2], ax
; loc     i : (@-4): int
    sub     sp, 2
; if
; RPN'ized expression: "stack s + *u 0 + *u 22 == stack s + *u 0 + *u 76 == || "
; Expanded expression: "stack (@-2) *(2) 4 * + 0 + *(2) 22 == _Bool [sh||->1819] stack (@-2) *(2) 4 * + 0 + *(2) 76 == _Bool ||[1819] "
; Fused expression:    "* *(@-2) 4 + stack ax + ax 0 == *ax 22 _Bool [sh||->1819] * *(@-2) 4 + stack ax + ax 0 == *ax 76 _Bool ||[1819] "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 22
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L1819
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 76
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L1819:
; JumpIfZero
    test    ax, ax
    je      L1817
; RPN'ized expression: "s --p "
; Expanded expression: "(@-2) --p(2) "
; Fused expression:    "--p(2) *(@-2) "
    mov     ax, [bp-2]
    dec     word [bp-2]
L1817:
; RPN'ized expression: "( s &u GenFuse ) "
; Expanded expression: " (@-2)  GenFuse ()2 "
; Fused expression:    "( (@-2) , GenFuse )2 "
    lea     ax, [bp-2]
    push    ax
    call    _GenFuse
    sub     sp, -2
; RPN'ized expression: "( L1820 printf ) "
; Expanded expression: " L1820  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1820:
    db  "; Fused expression:    ",34,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1820 , printf )2 "
    push    L1820
    call    _printf
    sub     sp, -2
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(34) *(@-4) 0 "
    mov     ax, 0
    mov     [bp-4], ax
L1822:
; RPN'ized expression: "i sp < "
; Expanded expression: "(@-4) *(2) sp *(2) < "
; Fused expression:    "< *(@-4) *sp IF! "
    mov     ax, [bp-4]
    cmp     ax, [_sp]
    jge     L1825
    jmp     L1824
L1823:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
    jmp     L1822
L1824:
; {
; loc         tok : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "stack i + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 =(34) *(@-6) *ax "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-6], ax
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L1828
; {
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L1829
L1828:
    cmp     ax, 1
    jne     L1830
L1829:
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L1831
L1830:
    cmp     ax, 2
    jne     L1832
L1831:
; case
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
    jmp     L1833
L1832:
    cmp     ax, 256
    jne     L1834
L1833:
; RPN'ized expression: "( stack i + *u 1 + *u , L1836 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2)  L1836  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1836:
    db  "%d",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax , L1836 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L1836
    call    _printf
    sub     sp, -4
; break
    jmp     L1826
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1835
L1834:
    cmp     ax, 16
    jne     L1838
L1835:
; case
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
    jmp     L1839
L1838:
    cmp     ax, 257
    jne     L1840
L1839:
; {
; loc                 p : (@-8): * char
    sub     sp, 2
; =
; RPN'ized expression: "IdentTable stack i + *u 1 + *u + "
; Expanded expression: "IdentTable stack (@-4) *(2) 4 * + 2 + *(2) + "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 2 + IdentTable *ax =(34) *(@-8) ax "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    mov     [bp-8], ax
; if
; RPN'ized expression: "( p *u isdigit ) "
; Expanded expression: " (@-8) *(2) *(1)  isdigit ()2 "
; Fused expression:    "( *(2) (@-8) *(1) ax , isdigit )2 "
    mov     ax, [bp-8]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isdigit
    sub     sp, -2
; JumpIfZero
    test    ax, ax
    je      L1842
; RPN'ized expression: "( L1844 printf ) "
; Expanded expression: " L1844  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1844:
    db  "L",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1844 , printf )2 "
    push    L1844
    call    _printf
    sub     sp, -2
L1842:
; RPN'ized expression: "( p , L1846 printf ) "
; Expanded expression: " (@-8) *(2)  L1846  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1846:
    db  "%s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-8) , L1846 , printf )4 "
    push    word [bp-8]
    push    L1846
    call    _printf
    sub     sp, -4
    sub     sp, -2
; }
; break
    jmp     L1826
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L1841
L1840:
    cmp     ax, 260
    jne     L1848
L1841:
; RPN'ized expression: "( IdentTable stack i + *u 1 + *u + , L1850 printf ) "
; Expanded expression: " IdentTable stack (@-4) *(2) 4 * + 2 + *(2) +  L1850  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1850:
    db  "*%s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 + IdentTable *ax , L1850 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    push    L1850
    call    _printf
    sub     sp, -4
; break
    jmp     L1826
; case
; RPN'ized expression: "90 "
; Expanded expression: "90 "
; Expression value: 90
    jmp     L1849
L1848:
    cmp     ax, 90
    jne     L1852
L1849:
; if
; RPN'ized expression: "stack i + *u 1 + *u 0 >= "
; Expanded expression: "stack (@-4) *(2) 4 * + 2 + *(2) 0 >= "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 2 >= *ax 0 IF! "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jl      L1854
; RPN'ized expression: "( stack i + *u 1 + *u , L1856 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2)  L1856  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1856:
    db  "[sh&&->%d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax , L1856 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L1856
    call    _printf
    sub     sp, -4
    jmp     L1855
L1854:
; else
; RPN'ized expression: "( stack i + *u 1 + *u -u , L1858 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2) -u  L1858  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1858:
    db  "[sh||->%d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax -u , L1858 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    push    ax
    push    L1858
    call    _printf
    sub     sp, -4
L1855:
; break
    jmp     L1826
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L1853
L1852:
    cmp     ax, 89
    jne     L1860
L1853:
; case
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
    jmp     L1861
L1860:
    cmp     ax, 258
    jne     L1862
L1861:
; RPN'ized expression: "( stack i + *u 1 + *u , L1864 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2)  L1864  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1864:
    db  "(@%d)",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax , L1864 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L1864
    call    _printf
    sub     sp, -4
; break
    jmp     L1826
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L1863
L1862:
    cmp     ax, 261
    jne     L1866
L1863:
; RPN'ized expression: "( stack i + *u 1 + *u , L1868 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2)  L1868  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1868:
    db  "*(@%d)",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax , L1868 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L1868
    call    _printf
    sub     sp, -4
; break
    jmp     L1826
; case
; RPN'ized expression: "78 "
; Expanded expression: "78 "
; Expression value: 78
    jmp     L1867
L1866:
    cmp     ax, 78
    jne     L1870
L1867:
; RPN'ized expression: "( stack i + *u 1 + *u , L1872 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2)  L1872  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1872:
    db  "*(%d)",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax , L1872 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L1872
    call    _printf
    sub     sp, -4
; break
    jmp     L1826
; case
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
    jmp     L1871
L1870:
    cmp     ax, 40
    jne     L1874
L1871:
; case
; RPN'ized expression: "44 "
; Expanded expression: "44 "
; Expression value: 44
    jmp     L1875
L1874:
    cmp     ax, 44
    jne     L1876
L1875:
; RPN'ized expression: "( tok , L1878 printf ) "
; Expanded expression: " (@-6) *(2)  L1878  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1878:
    db  "%c",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-6) , L1878 , printf )4 "
    push    word [bp-6]
    push    L1878
    call    _printf
    sub     sp, -4
; break
    jmp     L1826
; case
; RPN'ized expression: "41 "
; Expanded expression: "41 "
; Expression value: 41
    jmp     L1877
L1876:
    cmp     ax, 41
    jne     L1880
L1877:
; RPN'ized expression: "( stack i + *u 1 + *u , L1882 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2)  L1882  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1882:
    db  ")%d",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax , L1882 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L1882
    call    _printf
    sub     sp, -4
; break
    jmp     L1826
; case
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
    jmp     L1881
L1880:
    cmp     ax, 259
    jne     L1884
L1881:
; RPN'ized expression: "( L1886 printf ) "
; Expanded expression: " L1886  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1886:
    db  "ax",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1886 , printf )2 "
    push    L1886
    call    _printf
    sub     sp, -2
; break
    jmp     L1826
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L1885
L1884:
    cmp     ax, 262
    jne     L1888
L1885:
; RPN'ized expression: "( L1890 printf ) "
; Expanded expression: " L1890  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1890:
    db  "*ax",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1890 , printf )2 "
    push    L1890
    call    _printf
    sub     sp, -2
; break
    jmp     L1826
; case
; RPN'ized expression: "263 "
; Expanded expression: "263 "
; Expression value: 263
    jmp     L1889
L1888:
    cmp     ax, 263
    jne     L1892
L1889:
; RPN'ized expression: "( L1894 printf ) "
; Expanded expression: " L1894  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1894:
    db  "*sp",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1894 , printf )2 "
    push    L1894
    call    _printf
    sub     sp, -2
; break
    jmp     L1826
; case
; RPN'ized expression: "264 "
; Expanded expression: "264 "
; Expression value: 264
    jmp     L1893
L1892:
    cmp     ax, 264
    jne     L1896
L1893:
; RPN'ized expression: "( L1898 printf ) "
; Expanded expression: " L1898  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1898:
    db  "**sp",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1898 , printf )2 "
    push    L1898
    call    _printf
    sub     sp, -2
; break
    jmp     L1826
; case
; RPN'ized expression: "512 "
; Expanded expression: "512 "
; Expression value: 512
    jmp     L1897
L1896:
    cmp     ax, 512
    jne     L1900
L1897:
; RPN'ized expression: "( L1902 printf ) "
; Expanded expression: " L1902  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1902:
    db  "push-ax",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1902 , printf )2 "
    push    L1902
    call    _printf
    sub     sp, -2
; break
    jmp     L1826
; case
; RPN'ized expression: "22 "
; Expanded expression: "22 "
; Expression value: 22
    jmp     L1901
L1900:
    cmp     ax, 22
    jne     L1904
L1901:
; RPN'ized expression: "( L1906 printf ) "
; Expanded expression: " L1906  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1906:
    db  "IF",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1906 , printf )2 "
    push    L1906
    call    _printf
    sub     sp, -2
; break
    jmp     L1826
; case
; RPN'ized expression: "76 "
; Expanded expression: "76 "
; Expression value: 76
    jmp     L1905
L1904:
    cmp     ax, 76
    jne     L1908
L1905:
; RPN'ized expression: "( L1910 printf ) "
; Expanded expression: " L1910  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1910:
    db  "IF!",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1910 , printf )2 "
    push    L1910
    call    _printf
    sub     sp, -2
; break
    jmp     L1826
; default
L1827:
; RPN'ized expression: "( ( tok GetTokenName ) , L1912 printf ) "
; Expanded expression: "  (@-6) *(2)  GetTokenName ()2  L1912  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1912:
    db  "%s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-6) , GetTokenName )2 , L1912 , printf )4 "
    push    word [bp-6]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L1912
    call    _printf
    sub     sp, -4
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L1916
; {
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L1917
L1916:
    cmp     ax, 7
    jne     L1918
L1917:
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L1919
L1918:
    cmp     ax, 6
    jne     L1920
L1919:
; RPN'ized expression: "( stack i + *u 1 + *u , L1922 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2)  L1922  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1922:
    db  "[%d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax , L1922 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L1922
    call    _printf
    sub     sp, -4
; break
    jmp     L1914
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L1921
L1920:
    cmp     ax, 61
    jne     L1924
L1921:
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L1925
L1924:
    cmp     ax, 12
    jne     L1926
L1925:
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L1927
L1926:
    cmp     ax, 13
    jne     L1928
L1927:
; case
; RPN'ized expression: "81 "
; Expanded expression: "81 "
; Expression value: 81
    jmp     L1929
L1928:
    cmp     ax, 81
    jne     L1930
L1929:
; case
; RPN'ized expression: "82 "
; Expanded expression: "82 "
; Expression value: 82
    jmp     L1931
L1930:
    cmp     ax, 82
    jne     L1932
L1931:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L1933
L1932:
    cmp     ax, 68
    jne     L1934
L1933:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L1935
L1934:
    cmp     ax, 69
    jne     L1936
L1935:
; case
; RPN'ized expression: "83 "
; Expanded expression: "83 "
; Expression value: 83
    jmp     L1937
L1936:
    cmp     ax, 83
    jne     L1938
L1937:
; case
; RPN'ized expression: "84 "
; Expanded expression: "84 "
; Expression value: 84
    jmp     L1939
L1938:
    cmp     ax, 84
    jne     L1940
L1939:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L1941
L1940:
    cmp     ax, 65
    jne     L1942
L1941:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L1943
L1942:
    cmp     ax, 66
    jne     L1944
L1943:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L1945
L1944:
    cmp     ax, 67
    jne     L1946
L1945:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L1947
L1946:
    cmp     ax, 70
    jne     L1948
L1947:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L1949
L1948:
    cmp     ax, 71
    jne     L1950
L1949:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L1951
L1950:
    cmp     ax, 72
    jne     L1952
L1951:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L1953
L1952:
    cmp     ax, 73
    jne     L1954
L1953:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L1955
L1954:
    cmp     ax, 74
    jne     L1956
L1955:
; RPN'ized expression: "( stack i + *u 1 + *u , L1958 printf ) "
; Expanded expression: " stack (@-4) *(2) 4 * + 2 + *(2)  L1958  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L1958:
    db  "(%d)",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + stack ax + ax 2 *(2) ax , L1958 , printf )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L1958
    call    _printf
    sub     sp, -4
; break
    jmp     L1914
; }
    jmp     L1914
L1956:
L1914:
; break
    jmp     L1826
; }
    jmp     L1826
L1908:
    jmp     L1827
L1826:
; RPN'ized expression: "( L1960 printf ) "
; Expanded expression: " L1960  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1960:
    db  " ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1960 , printf )2 "
    push    L1960
    call    _printf
    sub     sp, -2
    sub     sp, -2
; }
    jmp     L1823
L1825:
; RPN'ized expression: "( L1962 printf ) "
; Expanded expression: " L1962  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L1962:
    db  34,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L1962 , printf )2 "
    push    L1962
    call    _printf
    sub     sp, -2
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(34) *(@-4) 0 "
    mov     ax, 0
    mov     [bp-4], ax
L1964:
; RPN'ized expression: "i sp < "
; Expanded expression: "(@-4) *(2) sp *(2) < "
; Fused expression:    "< *(@-4) *sp IF! "
    mov     ax, [bp-4]
    cmp     ax, [_sp]
    jge     L1967
    jmp     L1966
L1965:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
    jmp     L1964
L1966:
; {
; loc         tok : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "stack i + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 0 =(34) *(@-6) *ax "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-6], ax
; loc         v : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "stack i + *u 1 + *u "
; Expanded expression: "stack (@-4) *(2) 4 * + 2 + *(2) "
; Fused expression:    "* *(@-4) 4 + stack ax + ax 2 =(34) *(@-8) *ax "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-8], ax
; loc         instr : (@-10): int
    sub     sp, 2
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L1970
; {
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L1971
L1970:
    cmp     ax, 1
    jne     L1972
L1971:
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L1973
L1972:
    cmp     ax, 2
    jne     L1974
L1973:
; if
; RPN'ized expression: "i 1 + sp < stack i 1 + + *u 0 + *u 44 == && 0 == "
; Expanded expression: "(@-4) *(2) 1 + sp *(2) < _Bool [sh&&->1978] stack (@-4) *(2) 1 + 4 * + 0 + *(2) 44 == _Bool &&[1978] 0 == "
; Fused expression:    "+ *(@-4) 1 < ax *sp _Bool [sh&&->1978] + *(@-4) 1 * ax 4 + stack ax + ax 0 == *ax 44 _Bool &&[1978] == ax 0 IF! "
    mov     ax, [bp-4]
    add     ax, 1
    cmp     ax, [_sp]
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L1978
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 44
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L1978:
    cmp     ax, 0
    jne     L1976
; RPN'ized expression: "( v , 11 , 0 , 3 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@-8) *(2)  11  0  3  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@-8) , 11 , 0 , 3 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp-8]
    push    11
    push    0
    push    3
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1976:
; break
    jmp     L1968
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L1975
L1974:
    cmp     ax, 16
    jne     L1979
L1975:
; if
; RPN'ized expression: "i 1 + sp < stack i 1 + + *u 0 + *u 44 == stack i 1 + + *u 0 + *u 41 == || && 0 == "
; Expanded expression: "(@-4) *(2) 1 + sp *(2) < _Bool [sh&&->1983] stack (@-4) *(2) 1 + 4 * + 0 + *(2) 44 == _Bool [sh||->1984] stack (@-4) *(2) 1 + 4 * + 0 + *(2) 41 == _Bool ||[1984] _Bool &&[1983] 0 == "
; Fused expression:    "+ *(@-4) 1 < ax *sp _Bool [sh&&->1983] + *(@-4) 1 * ax 4 + stack ax + ax 0 == *ax 44 _Bool [sh||->1984] + *(@-4) 1 * ax 4 + stack ax + ax 0 == *ax 41 _Bool ||[1984] _Bool &&[1983] == ax 0 IF! "
    mov     ax, [bp-4]
    add     ax, 1
    cmp     ax, [_sp]
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L1983
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 44
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L1984
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 41
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L1984:
    test    ax, ax
    setne   al
    cbw
L1983:
    cmp     ax, 0
    jne     L1981
; RPN'ized expression: "( v , 12 , 0 , 3 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " (@-8) *(2)  12  0  3  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@-8) , 12 , 0 , 3 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    word [bp-8]
    push    12
    push    0
    push    3
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L1981:
; break
    jmp     L1968
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L1980
L1979:
    cmp     ax, 89
    jne     L1985
L1980:
; RPN'ized expression: "( v , 18 , 0 , 3 , 0 , 4 GenPrintInstr2Operands ) "
; Expanded expression: " (@-8) *(2)  18  0  3  0  4  GenPrintInstr2Operands ()12 "
; Fused expression:    "( *(2) (@-8) , 18 , 0 , 3 , 0 , 4 , GenPrintInstr2Operands )12 "
    push    word [bp-8]
    push    18
    push    0
    push    3
    push    0
    push    4
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L1968
; case
; RPN'ized expression: "126 "
; Expanded expression: "126 "
; Expression value: 126
    jmp     L1986
L1985:
    cmp     ax, 126
    jne     L1987
L1986:
; RPN'ized expression: "( 0 , 3 , 0 , 22 GenPrintInstr1Operand ) "
; Expanded expression: " 0  3  0  22  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 3 , 0 , 22 , GenPrintInstr1Operand )8 "
    push    0
    push    3
    push    0
    push    22
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L1968
; case
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
    jmp     L1988
L1987:
    cmp     ax, 80
    jne     L1989
L1988:
; RPN'ized expression: "( 0 , 3 , 0 , 21 GenPrintInstr1Operand ) "
; Expanded expression: " 0  3  0  21  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 3 , 0 , 21 , GenPrintInstr1Operand )8 "
    push    0
    push    3
    push    0
    push    21
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L1968
; case
; RPN'ized expression: "120 "
; Expanded expression: "120 "
; Expression value: 120
    jmp     L1990
L1989:
    cmp     ax, 120
    jne     L1991
L1990:
; RPN'ized expression: "( 0 , 3 , 0 , 3 , 0 , 15 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  3  0  15  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 3 , 0 , 15 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    3
    push    0
    push    15
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 0 , 9 , 25 GenPrintInstr1Operand ) "
; Expanded expression: " 0  0  9  25  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 0 , 9 , 25 , GenPrintInstr1Operand )8 "
    push    0
    push    0
    push    9
    push    25
    call    _GenPrintInstr1Operand
    sub     sp, -8
; RPN'ized expression: "( 23 GenPrintInstrNoOperand ) "
; Expanded expression: " 23  GenPrintInstrNoOperand ()2 "
; Fused expression:    "( 23 , GenPrintInstrNoOperand )2 "
    push    23
    call    _GenPrintInstrNoOperand
    sub     sp, -2
; break
    jmp     L1968
; case
; RPN'ized expression: "90 "
; Expanded expression: "90 "
; Expression value: 90
    jmp     L1992
L1991:
    cmp     ax, 90
    jne     L1993
L1992:
; if
; RPN'ized expression: "v 0 >= "
; Expanded expression: "(@-8) *(2) 0 >= "
; Fused expression:    ">= *(@-8) 0 IF! "
    mov     ax, [bp-8]
    cmp     ax, 0
    jl      L1995
; RPN'ized expression: "( v GenJumpIfZero ) "
; Expanded expression: " (@-8) *(2)  GenJumpIfZero ()2 "
; Fused expression:    "( *(2) (@-8) , GenJumpIfZero )2 "
    push    word [bp-8]
    call    _GenJumpIfZero
    sub     sp, -2
    jmp     L1996
L1995:
; else
; RPN'ized expression: "( v -u GenJumpIfNotZero ) "
; Expanded expression: " (@-8) *(2) -u  GenJumpIfNotZero ()2 "
; Fused expression:    "( *(2) (@-8) -u , GenJumpIfNotZero )2 "
    mov     ax, [bp-8]
    neg     ax
    push    ax
    call    _GenJumpIfNotZero
    sub     sp, -2
L1996:
; break
    jmp     L1968
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L1994
L1993:
    cmp     ax, 6
    jne     L1997
L1994:
; RPN'ized expression: "( v GenNumLabel ) "
; Expanded expression: " (@-8) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-8) , GenNumLabel )2 "
    push    word [bp-8]
    call    _GenNumLabel
    sub     sp, -2
; break
    jmp     L1968
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L1998
L1997:
    cmp     ax, 7
    jne     L1999
L1998:
; RPN'ized expression: "( v GenNumLabel ) "
; Expanded expression: " (@-8) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-8) , GenNumLabel )2 "
    push    word [bp-8]
    call    _GenNumLabel
    sub     sp, -2
; break
    jmp     L1968
; case
; RPN'ized expression: "512 "
; Expanded expression: "512 "
; Expression value: 512
    jmp     L2000
L1999:
    cmp     ax, 512
    jne     L2001
L2000:
; RPN'ized expression: "( 0 , 3 , 0 , 5 GenPrintInstr1Operand ) "
; Expanded expression: " 0  3  0  5  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 3 , 0 , 5 , GenPrintInstr1Operand )8 "
    push    0
    push    3
    push    0
    push    5
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L1968
; case
; RPN'ized expression: "44 "
; Expanded expression: "44 "
; Expression value: 44
    jmp     L2002
L2001:
    cmp     ax, 44
    jne     L2003
L2002:
; if
; RPN'ized expression: "stack i 2 - + *u 0 + *u 78 == stack i 2 - + *u 1 + *u 1 != && "
; Expanded expression: "stack (@-4) *(2) 2 - 4 * + 0 + *(2) 78 == _Bool [sh&&->2007] stack (@-4) *(2) 2 - 4 * + 2 + *(2) 1 != _Bool &&[2007] "
; Fused expression:    "- *(@-4) 2 * ax 4 + stack ax + ax 0 == *ax 78 _Bool [sh&&->2007] - *(@-4) 2 * ax 4 + stack ax + ax 2 != *ax 1 _Bool &&[2007] "
    mov     ax, [bp-4]
    sub     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 78
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2007
    mov     ax, [bp-4]
    sub     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 1
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L2007:
; JumpIfZero
    test    ax, ax
    je      L2005
; {
; switch
; RPN'ized expression: "stack i 1 - + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 1 - 4 * + 0 + *(2) "
; Fused expression:    "- *(@-4) 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2010
; {
; case
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
    jmp     L2011
L2010:
    cmp     ax, 257
    jne     L2012
L2011:
; RPN'ized expression: "( stack i 1 - + *u 1 + *u , 16 , 0 , 5 GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 1 - 4 * + 2 + *(2)  16  0  5  GenPrintInstr1Operand ()8 "
; Fused expression:    "( - *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 16 , 0 , 5 , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    16
    push    0
    push    5
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2008
; case
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
    jmp     L2013
L2012:
    cmp     ax, 258
    jne     L2014
L2013:
; RPN'ized expression: "( stack i 1 - + *u 1 + *u , 20 , 0 , 5 GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 1 - 4 * + 2 + *(2)  20  0  5  GenPrintInstr1Operand ()8 "
; Fused expression:    "( - *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 20 , 0 , 5 , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    20
    push    0
    push    5
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2008
; case
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
    jmp     L2015
L2014:
    cmp     ax, 259
    jne     L2016
L2015:
; RPN'ized expression: "( 0 , 3 , 0 , 4 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    4
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 24 , 0 , 5 GenPrintInstr1Operand ) "
; Expanded expression: " 0  24  0  5  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 24 , 0 , 5 , GenPrintInstr1Operand )8 "
    push    0
    push    24
    push    0
    push    5
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2008
; }
    jmp     L2008
L2016:
L2008:
; }
    jmp     L2006
L2005:
; else
; {
; switch
; RPN'ized expression: "stack i 1 - + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 1 - 4 * + 0 + *(2) "
; Fused expression:    "- *(@-4) 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2020
; {
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L2021
L2020:
    cmp     ax, 1
    jne     L2022
L2021:
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L2023
L2022:
    cmp     ax, 2
    jne     L2024
L2023:
; RPN'ized expression: "( stack i 1 - + *u 1 + *u , 11 , 0 , 5 GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 1 - 4 * + 2 + *(2)  11  0  5  GenPrintInstr1Operand ()8 "
; Fused expression:    "( - *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 11 , 0 , 5 , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    11
    push    0
    push    5
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2018
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L2025
L2024:
    cmp     ax, 16
    jne     L2026
L2025:
; RPN'ized expression: "( stack i 1 - + *u 1 + *u , 12 , 0 , 5 GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 1 - 4 * + 2 + *(2)  12  0  5  GenPrintInstr1Operand ()8 "
; Fused expression:    "( - *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 12 , 0 , 5 , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    12
    push    0
    push    5
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2018
; default
L2019:
; RPN'ized expression: "( 0 , 3 , 0 , 5 GenPrintInstr1Operand ) "
; Expanded expression: " 0  3  0  5  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 3 , 0 , 5 , GenPrintInstr1Operand )8 "
    push    0
    push    3
    push    0
    push    5
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2018
; }
    jmp     L2018
L2026:
    jmp     L2019
L2018:
; }
L2006:
; break
    jmp     L1968
; case
; RPN'ized expression: "78 "
; Expanded expression: "78 "
; Expression value: 78
    jmp     L2004
L2003:
    cmp     ax, 78
    jne     L2028
L2004:
; if
; RPN'ized expression: "v 1 != i 2 + sp < && stack i 2 + + *u 0 + *u 44 == && 0 == "
; Expanded expression: "(@-8) *(2) 1 != _Bool [sh&&->2033] (@-4) *(2) 2 + sp *(2) < _Bool &&[2033] _Bool [sh&&->2032] stack (@-4) *(2) 2 + 4 * + 0 + *(2) 44 == _Bool &&[2032] 0 == "
; Fused expression:    "!= *(@-8) 1 _Bool [sh&&->2033] + *(@-4) 2 < ax *sp _Bool &&[2033] _Bool [sh&&->2032] + *(@-4) 2 * ax 4 + stack ax + ax 0 == *ax 44 _Bool &&[2032] == ax 0 IF! "
    mov     ax, [bp-8]
    cmp     ax, 1
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2033
    mov     ax, [bp-4]
    add     ax, 2
    cmp     ax, [_sp]
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2033:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2032
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 44
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2032:
    cmp     ax, 0
    jne     L2030
; {
; switch
; RPN'ized expression: "stack i 1 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2036
; {
; case
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
    jmp     L2037
L2036:
    cmp     ax, 257
    jne     L2038
L2037:
; RPN'ized expression: "( stack i 1 + + *u 1 + *u , v GenReadIdent ) "
; Expanded expression: " stack (@-4) *(2) 1 + 4 * + 2 + *(2)  (@-8) *(2)  GenReadIdent ()4 "
; Fused expression:    "( + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenReadIdent )4 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenReadIdent
    sub     sp, -4
; break
    jmp     L2034
; case
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
    jmp     L2039
L2038:
    cmp     ax, 258
    jne     L2040
L2039:
; RPN'ized expression: "( stack i 1 + + *u 1 + *u , v GenReadLocal ) "
; Expanded expression: " stack (@-4) *(2) 1 + 4 * + 2 + *(2)  (@-8) *(2)  GenReadLocal ()4 "
; Fused expression:    "( + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenReadLocal )4 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenReadLocal
    sub     sp, -4
; break
    jmp     L2034
; case
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
    jmp     L2041
L2040:
    cmp     ax, 259
    jne     L2042
L2041:
; RPN'ized expression: "( v GenReadIndirect ) "
; Expanded expression: " (@-8) *(2)  GenReadIndirect ()2 "
; Fused expression:    "( *(2) (@-8) , GenReadIndirect )2 "
    push    word [bp-8]
    call    _GenReadIndirect
    sub     sp, -2
; break
    jmp     L2034
; }
    jmp     L2034
L2042:
L2034:
; }
L2030:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
; break
    jmp     L1968
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L2029
L2028:
    cmp     ax, 12
    jne     L2044
L2029:
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L2045
L2044:
    cmp     ax, 13
    jne     L2046
L2045:
; switch
; RPN'ized expression: "stack i 1 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2050
; {
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2051
L2050:
    cmp     ax, 260
    jne     L2052
L2051:
; RPN'ized expression: "( tok , stack i 1 + + *u 1 + *u , v GenIncDecIdent ) "
; Expanded expression: " (@-6) *(2)  stack (@-4) *(2) 1 + 4 * + 2 + *(2)  (@-8) *(2)  GenIncDecIdent ()6 "
; Fused expression:    "( *(2) (@-6) , + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenIncDecIdent )6 "
    push    word [bp-6]
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenIncDecIdent
    sub     sp, -6
; break
    jmp     L2048
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2053
L2052:
    cmp     ax, 261
    jne     L2054
L2053:
; RPN'ized expression: "( tok , stack i 1 + + *u 1 + *u , v GenIncDecLocal ) "
; Expanded expression: " (@-6) *(2)  stack (@-4) *(2) 1 + 4 * + 2 + *(2)  (@-8) *(2)  GenIncDecLocal ()6 "
; Fused expression:    "( *(2) (@-6) , + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenIncDecLocal )6 "
    push    word [bp-6]
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenIncDecLocal
    sub     sp, -6
; break
    jmp     L2048
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2055
L2054:
    cmp     ax, 262
    jne     L2056
L2055:
; RPN'ized expression: "( tok , v GenIncDecIndirect ) "
; Expanded expression: " (@-6) *(2)  (@-8) *(2)  GenIncDecIndirect ()4 "
; Fused expression:    "( *(2) (@-6) , *(2) (@-8) , GenIncDecIndirect )4 "
    push    word [bp-6]
    push    word [bp-8]
    call    _GenIncDecIndirect
    sub     sp, -4
; break
    jmp     L2048
; }
    jmp     L2048
L2056:
L2048:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
; break
    jmp     L1968
; case
; RPN'ized expression: "81 "
; Expanded expression: "81 "
; Expression value: 81
    jmp     L2047
L2046:
    cmp     ax, 81
    jne     L2058
L2047:
; case
; RPN'ized expression: "82 "
; Expanded expression: "82 "
; Expression value: 82
    jmp     L2059
L2058:
    cmp     ax, 82
    jne     L2060
L2059:
; switch
; RPN'ized expression: "stack i 1 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2064
; {
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2065
L2064:
    cmp     ax, 260
    jne     L2066
L2065:
; RPN'ized expression: "( tok , stack i 1 + + *u 1 + *u , v GenPostIncDecIdent ) "
; Expanded expression: " (@-6) *(2)  stack (@-4) *(2) 1 + 4 * + 2 + *(2)  (@-8) *(2)  GenPostIncDecIdent ()6 "
; Fused expression:    "( *(2) (@-6) , + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenPostIncDecIdent )6 "
    push    word [bp-6]
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenPostIncDecIdent
    sub     sp, -6
; break
    jmp     L2062
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2067
L2066:
    cmp     ax, 261
    jne     L2068
L2067:
; RPN'ized expression: "( tok , stack i 1 + + *u 1 + *u , v GenPostIncDecLocal ) "
; Expanded expression: " (@-6) *(2)  stack (@-4) *(2) 1 + 4 * + 2 + *(2)  (@-8) *(2)  GenPostIncDecLocal ()6 "
; Fused expression:    "( *(2) (@-6) , + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenPostIncDecLocal )6 "
    push    word [bp-6]
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenPostIncDecLocal
    sub     sp, -6
; break
    jmp     L2062
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2069
L2068:
    cmp     ax, 262
    jne     L2070
L2069:
; RPN'ized expression: "( tok , v GenPostIncDecIndirect ) "
; Expanded expression: " (@-6) *(2)  (@-8) *(2)  GenPostIncDecIndirect ()4 "
; Fused expression:    "( *(2) (@-6) , *(2) (@-8) , GenPostIncDecIndirect )4 "
    push    word [bp-6]
    push    word [bp-8]
    call    _GenPostIncDecIndirect
    sub     sp, -4
; break
    jmp     L2062
; }
    jmp     L2062
L2070:
L2062:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
; break
    jmp     L1968
; case
; RPN'ized expression: "83 "
; Expanded expression: "83 "
; Expression value: 83
    jmp     L2061
L2060:
    cmp     ax, 83
    jne     L2072
L2061:
; case
; RPN'ized expression: "84 "
; Expanded expression: "84 "
; Expression value: 84
    jmp     L2073
L2072:
    cmp     ax, 84
    jne     L2074
L2073:
; switch
; RPN'ized expression: "stack i 1 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2078
; {
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2079
L2078:
    cmp     ax, 260
    jne     L2080
L2079:
; RPN'ized expression: "( tok , stack i 1 + + *u 1 + *u , stack i 2 + + *u 1 + *u , v GenPostAddSubIdent ) "
; Expanded expression: " (@-6) *(2)  stack (@-4) *(2) 1 + 4 * + 2 + *(2)  stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2)  GenPostAddSubIdent ()8 "
; Fused expression:    "( *(2) (@-6) , + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenPostAddSubIdent )8 "
    push    word [bp-6]
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenPostAddSubIdent
    sub     sp, -8
; break
    jmp     L2076
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2081
L2080:
    cmp     ax, 261
    jne     L2082
L2081:
; RPN'ized expression: "( tok , stack i 1 + + *u 1 + *u , stack i 2 + + *u 1 + *u , v GenPostAddSubLocal ) "
; Expanded expression: " (@-6) *(2)  stack (@-4) *(2) 1 + 4 * + 2 + *(2)  stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2)  GenPostAddSubLocal ()8 "
; Fused expression:    "( *(2) (@-6) , + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenPostAddSubLocal )8 "
    push    word [bp-6]
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenPostAddSubLocal
    sub     sp, -8
; break
    jmp     L2076
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2083
L2082:
    cmp     ax, 262
    jne     L2084
L2083:
; RPN'ized expression: "( tok , stack i 2 + + *u 1 + *u , v GenPostAddSubIndirect ) "
; Expanded expression: " (@-6) *(2)  stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2)  GenPostAddSubIndirect ()6 "
; Fused expression:    "( *(2) (@-6) , + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , *(2) (@-8) , GenPostAddSubIndirect )6 "
    push    word [bp-6]
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp-8]
    call    _GenPostAddSubIndirect
    sub     sp, -6
; break
    jmp     L2076
; }
    jmp     L2076
L2084:
L2076:
; RPN'ized expression: "i 2 += "
; Expanded expression: "(@-4) 2 +=(2) "
; Fused expression:    "+=(34) *(@-4) 2 "
    mov     ax, [bp-4]
    add     ax, 2
    mov     [bp-4], ax
; break
    jmp     L1968
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L2075
L2074:
    cmp     ax, 61
    jne     L2086
L2075:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L2087
L2086:
    cmp     ax, 68
    jne     L2088
L2087:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L2089
L2088:
    cmp     ax, 69
    jne     L2090
L2089:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L2091
L2090:
    cmp     ax, 65
    jne     L2092
L2091:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L2093
L2092:
    cmp     ax, 66
    jne     L2094
L2093:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L2095
L2094:
    cmp     ax, 67
    jne     L2096
L2095:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L2097
L2096:
    cmp     ax, 70
    jne     L2098
L2097:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L2099
L2098:
    cmp     ax, 71
    jne     L2100
L2099:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L2101
L2100:
    cmp     ax, 72
    jne     L2102
L2101:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L2103
L2102:
    cmp     ax, 73
    jne     L2104
L2103:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L2105
L2104:
    cmp     ax, 74
    jne     L2106
L2105:
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L2107
L2106:
    cmp     ax, 43
    jne     L2108
L2107:
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L2109
L2108:
    cmp     ax, 45
    jne     L2110
L2109:
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L2111
L2110:
    cmp     ax, 42
    jne     L2112
L2111:
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L2113
L2112:
    cmp     ax, 47
    jne     L2114
L2113:
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L2115
L2114:
    cmp     ax, 37
    jne     L2116
L2115:
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L2117
L2116:
    cmp     ax, 4
    jne     L2118
L2117:
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L2119
L2118:
    cmp     ax, 5
    jne     L2120
L2119:
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L2121
L2120:
    cmp     ax, 38
    jne     L2122
L2121:
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L2123
L2122:
    cmp     ax, 94
    jne     L2124
L2123:
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L2125
L2124:
    cmp     ax, 124
    jne     L2126
L2125:
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L2127
L2126:
    cmp     ax, 60
    jne     L2128
L2127:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L2129
L2128:
    cmp     ax, 62
    jne     L2130
L2129:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L2131
L2130:
    cmp     ax, 10
    jne     L2132
L2131:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L2133
L2132:
    cmp     ax, 11
    jne     L2134
L2133:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L2135
L2134:
    cmp     ax, 8
    jne     L2136
L2135:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L2137
L2136:
    cmp     ax, 9
    jne     L2138
L2137:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L2139
L2138:
    cmp     ax, 85
    jne     L2140
L2139:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L2141
L2140:
    cmp     ax, 86
    jne     L2142
L2141:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L2143
L2142:
    cmp     ax, 87
    jne     L2144
L2143:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L2145
L2144:
    cmp     ax, 88
    jne     L2146
L2145:
; if
; RPN'ized expression: "tok 61 != "
; Expanded expression: "(@-6) *(2) 61 != "
; Fused expression:    "!= *(@-6) 61 IF! "
    mov     ax, [bp-6]
    cmp     ax, 61
    je      L2148
; {
; if
; RPN'ized expression: "stack i 2 + + *u 0 + *u 259 == "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 0 + *(2) 259 == "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 0 == *ax 259 IF! "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 259
    jne     L2150
; {
; RPN'ized expression: "( 0 , 3 , 0 , 5 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  5  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 5 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    5
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; }
    jmp     L2151
L2150:
; else
; if
; RPN'ized expression: "stack i 2 + + *u 0 + *u 262 == "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 0 + *(2) 262 == "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 0 == *ax 262 IF! "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 262
    jne     L2152
; {
; RPN'ized expression: "( v 16 % GenReadCRegIndirect ) "
; Expanded expression: " (@-8) *(2) 16 %  GenReadCRegIndirect ()2 "
; Fused expression:    "( % *(@-8) 16 , GenReadCRegIndirect )2 "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    push    ax
    call    _GenReadCRegIndirect
    sub     sp, -2
; }
L2152:
L2151:
; }
L2148:
; if
; RPN'ized expression: "tok 61 == "
; Expanded expression: "(@-6) *(2) 61 == "
; Fused expression:    "== *(@-6) 61 IF! "
    mov     ax, [bp-6]
    cmp     ax, 61
    jne     L2154
; {
; if
; RPN'ized expression: "stack i 1 + + *u 0 + *u 262 == "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + *(2) 262 == "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 == *ax 262 IF! "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 262
    jne     L2156
; RPN'ized expression: "( 0 , 3 , 0 , 4 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  3  0  4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 3 , 0 , 4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    3
    push    0
    push    4
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L2156:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
; RPN'ized expression: "v v 16 / v 16 % 16 * + = "
; Expanded expression: "(@-8) (@-8) *(2) 16 / (@-8) *(2) 16 % 16 * + =(2) "
; Fused expression:    "/ *(@-8) 16 push-ax % *(@-8) 16 * ax 16 + *sp ax =(34) *(@-8) ax "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    imul    ax, ax, 16
    mov     cx, ax
    pop     ax
    add     ax, cx
    mov     [bp-8], ax
; }
L2154:
; switch
; RPN'ized expression: "stack i 1 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2160
; {
; case
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
    jmp     L2161
L2160:
    cmp     ax, 256
    jne     L2162
L2161:
; RPN'ized expression: "( stack i 1 + + *u 1 + *u , 11 , 0 , 3 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 1 + 4 * + 2 + *(2)  11  0  3  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 11 , 0 , 3 , 0 , 0 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    11
    push    0
    push    3
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2158
; case
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
    jmp     L2163
L2162:
    cmp     ax, 257
    jne     L2164
L2163:
; RPN'ized expression: "( stack i 1 + + *u 1 + *u , 12 , 0 , 3 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 1 + 4 * + 2 + *(2)  12  0  3  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 12 , 0 , 3 , 0 , 0 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    12
    push    0
    push    3
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2158
; case
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
    jmp     L2165
L2164:
    cmp     ax, 258
    jne     L2166
L2165:
; RPN'ized expression: "( stack i 1 + + *u 1 + *u , 18 , 0 , 3 , 0 , 4 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 1 + 4 * + 2 + *(2)  18  0  3  0  4  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 18 , 0 , 3 , 0 , 4 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    18
    push    0
    push    3
    push    0
    push    4
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2158
; case
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
    jmp     L2167
L2166:
    cmp     ax, 259
    jne     L2168
L2167:
; break
    jmp     L2158
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2169
L2168:
    cmp     ax, 260
    jne     L2170
L2169:
; RPN'ized expression: "( stack i 1 + + *u 1 + *u , v 16 / GenReadIdent ) "
; Expanded expression: " stack (@-4) *(2) 1 + 4 * + 2 + *(2)  (@-8) *(2) 16 /  GenReadIdent ()4 "
; Fused expression:    "( + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , / *(@-8) 16 , GenReadIdent )4 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    call    _GenReadIdent
    sub     sp, -4
; break
    jmp     L2158
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2171
L2170:
    cmp     ax, 261
    jne     L2172
L2171:
; RPN'ized expression: "( stack i 1 + + *u 1 + *u , v 16 / GenReadLocal ) "
; Expanded expression: " stack (@-4) *(2) 1 + 4 * + 2 + *(2)  (@-8) *(2) 16 /  GenReadLocal ()4 "
; Fused expression:    "( + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , / *(@-8) 16 , GenReadLocal )4 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    call    _GenReadLocal
    sub     sp, -4
; break
    jmp     L2158
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2173
L2172:
    cmp     ax, 262
    jne     L2174
L2173:
; RPN'ized expression: "( v 16 / GenReadIndirect ) "
; Expanded expression: " (@-8) *(2) 16 /  GenReadIndirect ()2 "
; Fused expression:    "( / *(@-8) 16 , GenReadIndirect )2 "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    call    _GenReadIndirect
    sub     sp, -2
; break
    jmp     L2158
; case
; RPN'ized expression: "263 "
; Expanded expression: "263 "
; Expression value: 263
    jmp     L2175
L2174:
    cmp     ax, 263
    jne     L2176
L2175:
; RPN'ized expression: "( 0 , 3 , 0 , 6 GenPrintInstr1Operand ) "
; Expanded expression: " 0  3  0  6  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 3 , 0 , 6 , GenPrintInstr1Operand )8 "
    push    0
    push    3
    push    0
    push    6
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2158
; case
; RPN'ized expression: "264 "
; Expanded expression: "264 "
; Expression value: 264
    jmp     L2177
L2176:
    cmp     ax, 264
    jne     L2178
L2177:
; RPN'ized expression: "( 0 , 4 , 0 , 6 GenPrintInstr1Operand ) "
; Expanded expression: " 0  4  0  6  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 4 , 0 , 6 , GenPrintInstr1Operand )8 "
    push    0
    push    4
    push    0
    push    6
    call    _GenPrintInstr1Operand
    sub     sp, -8
; RPN'ized expression: "( 0 , 22 , 0 , ( v 16 / , 9 GenSelectByteOrWord ) , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  22  0   (@-8) *(2) 16 /  9  GenSelectByteOrWord ()4  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 22 , 0 , ( / *(@-8) 16 , 9 , GenSelectByteOrWord )4 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    22
    push    0
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( v 16 / GenExtendRegAIfNeeded ) "
; Expanded expression: " (@-8) *(2) 16 /  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( / *(@-8) 16 , GenExtendRegAIfNeeded )2 "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
; break
    jmp     L2158
; }
    jmp     L2158
L2178:
L2158:
; if
; RPN'ized expression: "tok 61 == "
; Expanded expression: "(@-6) *(2) 61 == "
; Fused expression:    "== *(@-6) 61 IF! "
    mov     ax, [bp-6]
    cmp     ax, 61
    jne     L2180
; {
; RPN'ized expression: "i --p "
; Expanded expression: "(@-4) --p(2) "
; Fused expression:    "--p(2) *(@-4) "
    mov     ax, [bp-4]
    dec     word [bp-4]
; RPN'ized expression: "v v 16 / v 16 % 16 * + = "
; Expanded expression: "(@-8) (@-8) *(2) 16 / (@-8) *(2) 16 % 16 * + =(2) "
; Fused expression:    "/ *(@-8) 16 push-ax % *(@-8) 16 * ax 16 + *sp ax =(34) *(@-8) ax "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    imul    ax, ax, 16
    mov     cx, ax
    pop     ax
    add     ax, cx
    mov     [bp-8], ax
; if
; RPN'ized expression: "stack i 1 + + *u 0 + *u 264 == "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + *(2) 264 == "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 == *ax 264 IF! "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 264
    jne     L2182
; RPN'ized expression: "( 0 , 4 , 0 , 6 GenPrintInstr1Operand ) "
; Expanded expression: " 0  4  0  6  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 4 , 0 , 6 , GenPrintInstr1Operand )8 "
    push    0
    push    4
    push    0
    push    6
    call    _GenPrintInstr1Operand
    sub     sp, -8
L2182:
; }
L2180:
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L2186
; {
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L2187
L2186:
    cmp     ax, 68
    jne     L2188
L2187:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L2189
L2188:
    cmp     ax, 69
    jne     L2190
L2189:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L2191
L2190:
    cmp     ax, 72
    jne     L2192
L2191:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L2193
L2192:
    cmp     ax, 73
    jne     L2194
L2193:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L2195
L2194:
    cmp     ax, 74
    jne     L2196
L2195:
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L2197
L2196:
    cmp     ax, 43
    jne     L2198
L2197:
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L2199
L2198:
    cmp     ax, 45
    jne     L2200
L2199:
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L2201
L2200:
    cmp     ax, 38
    jne     L2202
L2201:
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L2203
L2202:
    cmp     ax, 94
    jne     L2204
L2203:
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L2205
L2204:
    cmp     ax, 124
    jne     L2206
L2205:
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L2207
L2206:
    cmp     ax, 60
    jne     L2208
L2207:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L2209
L2208:
    cmp     ax, 62
    jne     L2210
L2209:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L2211
L2210:
    cmp     ax, 10
    jne     L2212
L2211:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L2213
L2212:
    cmp     ax, 11
    jne     L2214
L2213:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L2215
L2214:
    cmp     ax, 8
    jne     L2216
L2215:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L2217
L2216:
    cmp     ax, 9
    jne     L2218
L2217:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L2219
L2218:
    cmp     ax, 85
    jne     L2220
L2219:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L2221
L2220:
    cmp     ax, 86
    jne     L2222
L2221:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L2223
L2222:
    cmp     ax, 87
    jne     L2224
L2223:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L2225
L2224:
    cmp     ax, 88
    jne     L2226
L2225:
; RPN'ized expression: "instr ( tok GenGetBinaryOperatorInstr ) = "
; Expanded expression: "(@-10)  (@-6) *(2)  GenGetBinaryOperatorInstr ()2 =(2) "
; Fused expression:    "( *(2) (@-6) , GenGetBinaryOperatorInstr )2 =(34) *(@-10) ax "
    push    word [bp-6]
    call    _GenGetBinaryOperatorInstr
    sub     sp, -2
    mov     [bp-10], ax
; switch
; RPN'ized expression: "stack i 2 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2230
; {
; case
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
    jmp     L2231
L2230:
    cmp     ax, 256
    jne     L2232
L2231:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 11 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  11  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 11 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    11
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2228
; case
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
    jmp     L2233
L2232:
    cmp     ax, 257
    jne     L2234
L2233:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 12 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  12  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 12 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    12
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2228
; case
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
    jmp     L2235
L2234:
    cmp     ax, 258
    jne     L2236
L2235:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 18 , 0 , 5 , 0 , 4 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  18  0  5  0  4  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 18 , 0 , 5 , 0 , 4 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    18
    push    0
    push    5
    push    0
    push    4
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 5 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " 0  5  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 5 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    push    0
    push    5
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2228
; case
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
    jmp     L2237
L2236:
    cmp     ax, 259
    jne     L2238
L2237:
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2239
L2238:
    cmp     ax, 262
    jne     L2240
L2239:
; RPN'ized expression: "( 0 , 5 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " 0  5  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 5 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    push    0
    push    5
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2228
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2241
L2240:
    cmp     ax, 260
    jne     L2242
L2241:
; if
; RPN'ized expression: "v 16 % 1 == "
; Expanded expression: "(@-8) *(2) 16 % 1 == "
; Fused expression:    "% *(@-8) 16 == ax 1 IF! "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    cmp     ax, 1
    jne     L2244
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , v 16 % GenReadCRegIdent ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2) 16 %  GenReadCRegIdent ()4 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , % *(@-8) 16 , GenReadCRegIdent )4 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    push    ax
    call    _GenReadCRegIdent
    sub     sp, -4
; RPN'ized expression: "( 0 , 5 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " 0  5  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 5 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    push    0
    push    5
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; }
    jmp     L2245
L2244:
; else
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 14 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  14  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 14 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    14
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; }
L2245:
; break
    jmp     L2228
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2243
L2242:
    cmp     ax, 261
    jne     L2246
L2243:
; if
; RPN'ized expression: "v 16 % 1 == "
; Expanded expression: "(@-8) *(2) 16 % 1 == "
; Fused expression:    "% *(@-8) 16 == ax 1 IF! "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    cmp     ax, 1
    jne     L2248
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , v 16 % GenReadCRegLocal ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2) 16 %  GenReadCRegLocal ()4 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , % *(@-8) 16 , GenReadCRegLocal )4 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    push    ax
    call    _GenReadCRegLocal
    sub     sp, -4
; RPN'ized expression: "( 0 , 5 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " 0  5  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 5 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    push    0
    push    5
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; }
    jmp     L2249
L2248:
; else
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 18 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  18  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 18 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    18
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; }
L2249:
; break
    jmp     L2228
; }
    jmp     L2228
L2246:
L2228:
; if
; RPN'ized expression: "i 3 + sp < stack i 3 + + *u 0 + *u 22 == stack i 3 + + *u 0 + *u 76 == || && "
; Expanded expression: "(@-4) *(2) 3 + sp *(2) < _Bool [sh&&->2252] stack (@-4) *(2) 3 + 4 * + 0 + *(2) 22 == _Bool [sh||->2253] stack (@-4) *(2) 3 + 4 * + 0 + *(2) 76 == _Bool ||[2253] _Bool &&[2252] "
; Fused expression:    "+ *(@-4) 3 < ax *sp _Bool [sh&&->2252] + *(@-4) 3 * ax 4 + stack ax + ax 0 == *ax 22 _Bool [sh||->2253] + *(@-4) 3 * ax 4 + stack ax + ax 0 == *ax 76 _Bool ||[2253] _Bool &&[2252] "
    mov     ax, [bp-4]
    add     ax, 3
    cmp     ax, [_sp]
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2252
    mov     ax, [bp-4]
    add     ax, 3
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 22
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2253
    mov     ax, [bp-4]
    add     ax, 3
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 76
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2253:
    test    ax, ax
    setne   al
    cbw
L2252:
; JumpIfZero
    test    ax, ax
    je      L2250
; {
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L2256
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L2257
L2256:
    cmp     ax, 60
    jne     L2258
L2257:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L2259
L2258:
    cmp     ax, 85
    jne     L2260
L2259:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L2261
L2260:
    cmp     ax, 62
    jne     L2262
L2261:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L2263
L2262:
    cmp     ax, 86
    jne     L2264
L2263:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L2265
L2264:
    cmp     ax, 10
    jne     L2266
L2265:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L2267
L2266:
    cmp     ax, 87
    jne     L2268
L2267:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L2269
L2268:
    cmp     ax, 11
    jne     L2270
L2269:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L2271
L2270:
    cmp     ax, 88
    jne     L2272
L2271:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L2273
L2272:
    cmp     ax, 8
    jne     L2274
L2273:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L2275
L2274:
    cmp     ax, 9
    jne     L2276
L2275:
; if
; RPN'ized expression: "stack i 3 + + *u 0 + *u 22 == "
; Expanded expression: "stack (@-4) *(2) 3 + 4 * + 0 + *(2) 22 == "
; Fused expression:    "+ *(@-4) 3 * ax 4 + stack ax + ax 0 == *ax 22 IF! "
    mov     ax, [bp-4]
    add     ax, 3
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 22
    jne     L2278
; RPN'ized expression: "( stack i 3 + + *u 1 + *u , 13 , tok , 26 GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 3 + 4 * + 2 + *(2)  13  (@-6) *(2)  26  GenPrintInstr1Operand ()8 "
; Fused expression:    "( + *(@-4) 3 * ax 4 + stack ax + ax 2 *(2) ax , 13 , *(2) (@-6) , 26 , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    add     ax, 3
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    13
    push    word [bp-6]
    push    26
    call    _GenPrintInstr1Operand
    sub     sp, -8
    jmp     L2279
L2278:
; else
; RPN'ized expression: "( stack i 3 + + *u 1 + *u , 13 , tok , 27 GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 3 + 4 * + 2 + *(2)  13  (@-6) *(2)  27  GenPrintInstr1Operand ()8 "
; Fused expression:    "( + *(@-4) 3 * ax 4 + stack ax + ax 2 *(2) ax , 13 , *(2) (@-6) , 27 , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    add     ax, 3
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    13
    push    word [bp-6]
    push    27
    call    _GenPrintInstr1Operand
    sub     sp, -8
L2279:
; break
    jmp     L2254
; }
    jmp     L2254
L2276:
L2254:
; }
    jmp     L2251
L2250:
; else
; {
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L2282
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L2283
L2282:
    cmp     ax, 60
    jne     L2284
L2283:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L2285
L2284:
    cmp     ax, 85
    jne     L2286
L2285:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L2287
L2286:
    cmp     ax, 62
    jne     L2288
L2287:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L2289
L2288:
    cmp     ax, 86
    jne     L2290
L2289:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L2291
L2290:
    cmp     ax, 10
    jne     L2292
L2291:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L2293
L2292:
    cmp     ax, 87
    jne     L2294
L2293:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L2295
L2294:
    cmp     ax, 11
    jne     L2296
L2295:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L2297
L2296:
    cmp     ax, 88
    jne     L2298
L2297:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L2299
L2298:
    cmp     ax, 8
    jne     L2300
L2299:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L2301
L2300:
    cmp     ax, 9
    jne     L2302
L2301:
; RPN'ized expression: "( 0 , 0 , tok , 25 GenPrintInstr1Operand ) "
; Expanded expression: " 0  0  (@-6) *(2)  25  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 0 , *(2) (@-6) , 25 , GenPrintInstr1Operand )8 "
    push    0
    push    0
    push    word [bp-6]
    push    25
    call    _GenPrintInstr1Operand
    sub     sp, -8
; RPN'ized expression: "( 23 GenPrintInstrNoOperand ) "
; Expanded expression: " 23  GenPrintInstrNoOperand ()2 "
; Fused expression:    "( 23 , GenPrintInstrNoOperand )2 "
    push    23
    call    _GenPrintInstrNoOperand
    sub     sp, -2
; break
    jmp     L2280
; }
    jmp     L2280
L2302:
L2280:
; }
L2251:
; break
    jmp     L2184
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L2227
L2226:
    cmp     ax, 42
    jne     L2304
L2227:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L2305
L2304:
    cmp     ax, 65
    jne     L2306
L2305:
; RPN'ized expression: "instr ( tok GenGetBinaryOperatorInstr ) = "
; Expanded expression: "(@-10)  (@-6) *(2)  GenGetBinaryOperatorInstr ()2 =(2) "
; Fused expression:    "( *(2) (@-6) , GenGetBinaryOperatorInstr )2 =(34) *(@-10) ax "
    push    word [bp-6]
    call    _GenGetBinaryOperatorInstr
    sub     sp, -2
    mov     [bp-10], ax
; switch
; RPN'ized expression: "stack i 2 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2310
; {
; case
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
    jmp     L2311
L2310:
    cmp     ax, 256
    jne     L2312
L2311:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 11 , 0 , 3 , 0 , 3 , 0 , 17 GenPrintInstr3Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  11  0  3  0  3  0  17  GenPrintInstr3Operands ()16 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 11 , 0 , 3 , 0 , 3 , 0 , 17 , GenPrintInstr3Operands )16 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    11
    push    0
    push    3
    push    0
    push    3
    push    0
    push    17
    call    _GenPrintInstr3Operands
    sub     sp, -16
; break
    jmp     L2308
; case
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
    jmp     L2313
L2312:
    cmp     ax, 257
    jne     L2314
L2313:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 12 , 0 , 3 , 0 , 3 , 0 , 17 GenPrintInstr3Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  12  0  3  0  3  0  17  GenPrintInstr3Operands ()16 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 12 , 0 , 3 , 0 , 3 , 0 , 17 , GenPrintInstr3Operands )16 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    12
    push    0
    push    3
    push    0
    push    3
    push    0
    push    17
    call    _GenPrintInstr3Operands
    sub     sp, -16
; break
    jmp     L2308
; case
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
    jmp     L2315
L2314:
    cmp     ax, 258
    jne     L2316
L2315:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 18 , 0 , 5 , 0 , 4 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  18  0  5  0  4  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 18 , 0 , 5 , 0 , 4 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    18
    push    0
    push    5
    push    0
    push    4
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2308
; case
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
    jmp     L2317
L2316:
    cmp     ax, 259
    jne     L2318
L2317:
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2319
L2318:
    cmp     ax, 262
    jne     L2320
L2319:
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2308
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2321
L2320:
    cmp     ax, 260
    jne     L2322
L2321:
; if
; RPN'ized expression: "v 16 % 1 == "
; Expanded expression: "(@-8) *(2) 16 % 1 == "
; Fused expression:    "% *(@-8) 16 == ax 1 IF! "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    cmp     ax, 1
    jne     L2324
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , v 16 % GenReadCRegIdent ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2) 16 %  GenReadCRegIdent ()4 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , % *(@-8) 16 , GenReadCRegIdent )4 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    push    ax
    call    _GenReadCRegIdent
    sub     sp, -4
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
    jmp     L2325
L2324:
; else
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 16 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  16  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 16 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    16
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
L2325:
; break
    jmp     L2308
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2323
L2322:
    cmp     ax, 261
    jne     L2326
L2323:
; if
; RPN'ized expression: "v 16 % 1 == "
; Expanded expression: "(@-8) *(2) 16 % 1 == "
; Fused expression:    "% *(@-8) 16 == ax 1 IF! "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    cmp     ax, 1
    jne     L2328
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , v 16 % GenReadCRegLocal ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2) 16 %  GenReadCRegLocal ()4 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , % *(@-8) 16 , GenReadCRegLocal )4 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    push    ax
    call    _GenReadCRegLocal
    sub     sp, -4
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
    jmp     L2329
L2328:
; else
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 20 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  20  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 20 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    20
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
L2329:
; break
    jmp     L2308
; }
    jmp     L2308
L2326:
L2308:
; break
    jmp     L2184
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L2307
L2306:
    cmp     ax, 47
    jne     L2330
L2307:
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L2331
L2330:
    cmp     ax, 37
    jne     L2332
L2331:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L2333
L2332:
    cmp     ax, 66
    jne     L2334
L2333:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L2335
L2334:
    cmp     ax, 67
    jne     L2336
L2335:
; RPN'ized expression: "instr ( tok GenGetBinaryOperatorInstr ) = "
; Expanded expression: "(@-10)  (@-6) *(2)  GenGetBinaryOperatorInstr ()2 =(2) "
; Fused expression:    "( *(2) (@-6) , GenGetBinaryOperatorInstr )2 =(34) *(@-10) ax "
    push    word [bp-6]
    call    _GenGetBinaryOperatorInstr
    sub     sp, -2
    mov     [bp-10], ax
; RPN'ized expression: "( 24 GenPrintInstrNoOperand ) "
; Expanded expression: " 24  GenPrintInstrNoOperand ()2 "
; Fused expression:    "( 24 , GenPrintInstrNoOperand )2 "
    push    24
    call    _GenPrintInstrNoOperand
    sub     sp, -2
; switch
; RPN'ized expression: "stack i 2 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2340
; {
; case
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
    jmp     L2341
L2340:
    cmp     ax, 256
    jne     L2342
L2341:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 11 , 0 , 5 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  11  0  5  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 11 , 0 , 5 , 0 , 0 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    11
    push    0
    push    5
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2338
; case
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
    jmp     L2343
L2342:
    cmp     ax, 257
    jne     L2344
L2343:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 12 , 0 , 5 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  12  0  5  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 12 , 0 , 5 , 0 , 0 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    12
    push    0
    push    5
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2338
; case
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
    jmp     L2345
L2344:
    cmp     ax, 258
    jne     L2346
L2345:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 18 , 0 , 5 , 0 , 4 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  18  0  5  0  4  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 18 , 0 , 5 , 0 , 4 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    18
    push    0
    push    5
    push    0
    push    4
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2338
; case
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
    jmp     L2347
L2346:
    cmp     ax, 259
    jne     L2348
L2347:
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2349
L2348:
    cmp     ax, 262
    jne     L2350
L2349:
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; break
    jmp     L2338
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2351
L2350:
    cmp     ax, 260
    jne     L2352
L2351:
; if
; RPN'ized expression: "v 16 % 1 == "
; Expanded expression: "(@-8) *(2) 16 % 1 == "
; Fused expression:    "% *(@-8) 16 == ax 1 IF! "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    cmp     ax, 1
    jne     L2354
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , v 16 % GenReadCRegIdent ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2) 16 %  GenReadCRegIdent ()4 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , % *(@-8) 16 , GenReadCRegIdent )4 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    push    ax
    call    _GenReadCRegIdent
    sub     sp, -4
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
    jmp     L2355
L2354:
; else
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 16 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  16  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 16 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    16
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
L2355:
; break
    jmp     L2338
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2353
L2352:
    cmp     ax, 261
    jne     L2356
L2353:
; if
; RPN'ized expression: "v 16 % 1 == "
; Expanded expression: "(@-8) *(2) 16 % 1 == "
; Fused expression:    "% *(@-8) 16 == ax 1 IF! "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    cmp     ax, 1
    jne     L2358
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , v 16 % GenReadCRegLocal ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  (@-8) *(2) 16 %  GenReadCRegLocal ()4 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , % *(@-8) 16 , GenReadCRegLocal )4 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    mov     ax, dx
    push    ax
    call    _GenReadCRegLocal
    sub     sp, -4
; RPN'ized expression: "( 0 , 5 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " 0  5  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 5 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    push    0
    push    5
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
    jmp     L2359
L2358:
; else
; {
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 20 , 0 , instr GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  20  0  (@-10) *(2)  GenPrintInstr1Operand ()8 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 20 , 0 , *(2) (@-10) , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    20
    push    0
    push    word [bp-10]
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
L2359:
; }
    jmp     L2338
L2356:
L2338:
; if
; RPN'ized expression: "tok 37 == tok 67 == || "
; Expanded expression: "(@-6) *(2) 37 == _Bool [sh||->2362] (@-6) *(2) 67 == _Bool ||[2362] "
; Fused expression:    "== *(@-6) 37 _Bool [sh||->2362] == *(@-6) 67 _Bool ||[2362] "
    mov     ax, [bp-6]
    cmp     ax, 37
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2362
    mov     ax, [bp-6]
    cmp     ax, 67
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2362:
; JumpIfZero
    test    ax, ax
    je      L2360
; RPN'ized expression: "( 0 , 6 , 0 , 3 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0  6  0  3  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 6 , 0 , 3 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    push    6
    push    0
    push    3
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
L2360:
; break
    jmp     L2184
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L2337
L2336:
    cmp     ax, 4
    jne     L2363
L2337:
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L2364
L2363:
    cmp     ax, 5
    jne     L2365
L2364:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L2366
L2365:
    cmp     ax, 70
    jne     L2367
L2366:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L2368
L2367:
    cmp     ax, 71
    jne     L2369
L2368:
; RPN'ized expression: "instr ( tok GenGetBinaryOperatorInstr ) = "
; Expanded expression: "(@-10)  (@-6) *(2)  GenGetBinaryOperatorInstr ()2 =(2) "
; Fused expression:    "( *(2) (@-6) , GenGetBinaryOperatorInstr )2 =(34) *(@-10) ax "
    push    word [bp-6]
    call    _GenGetBinaryOperatorInstr
    sub     sp, -2
    mov     [bp-10], ax
; switch
; RPN'ized expression: "stack i 2 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 2 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 2 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2373
; {
; case
; RPN'ized expression: "256 "
; Expanded expression: "256 "
; Expression value: 256
    jmp     L2374
L2373:
    cmp     ax, 256
    jne     L2375
L2374:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 11 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  11  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 11 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    11
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2371
; case
; RPN'ized expression: "257 "
; Expanded expression: "257 "
; Expression value: 257
    jmp     L2376
L2375:
    cmp     ax, 257
    jne     L2377
L2376:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 12 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  12  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 12 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    12
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2371
; case
; RPN'ized expression: "258 "
; Expanded expression: "258 "
; Expression value: 258
    jmp     L2378
L2377:
    cmp     ax, 258
    jne     L2379
L2378:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 18 , 0 , 5 , 0 , 4 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  18  0  5  0  4  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 18 , 0 , 5 , 0 , 4 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    18
    push    0
    push    5
    push    0
    push    4
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 2 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " 0  2  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 2 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    push    0
    push    2
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2371
; case
; RPN'ized expression: "259 "
; Expanded expression: "259 "
; Expression value: 259
    jmp     L2380
L2379:
    cmp     ax, 259
    jne     L2381
L2380:
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2382
L2381:
    cmp     ax, 262
    jne     L2383
L2382:
; RPN'ized expression: "( 0 , 2 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " 0  2  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 2 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    push    0
    push    2
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2371
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2384
L2383:
    cmp     ax, 260
    jne     L2385
L2384:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 14 , 0 , 2 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  14  0  2  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 14 , 0 , 2 , 0 , 0 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    14
    push    0
    push    2
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 2 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " 0  2  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 2 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    push    0
    push    2
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2371
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2386
L2385:
    cmp     ax, 261
    jne     L2387
L2386:
; RPN'ized expression: "( stack i 2 + + *u 1 + *u , 18 , 0 , 2 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " stack (@-4) *(2) 2 + 4 * + 2 + *(2)  18  0  2  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( + *(@-4) 2 * ax 4 + stack ax + ax 2 *(2) ax , 18 , 0 , 2 , 0 , 0 , GenPrintInstr2Operands )12 "
    mov     ax, [bp-4]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    18
    push    0
    push    2
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; RPN'ized expression: "( 0 , 2 , 0 , 3 , 0 , instr GenPrintInstr2Operands ) "
; Expanded expression: " 0  2  0  3  0  (@-10) *(2)  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , 2 , 0 , 3 , 0 , *(2) (@-10) , GenPrintInstr2Operands )12 "
    push    0
    push    2
    push    0
    push    3
    push    0
    push    word [bp-10]
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2371
; }
    jmp     L2371
L2387:
L2371:
; break
    jmp     L2184
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L2370
L2369:
    cmp     ax, 61
    jne     L2389
L2370:
; break
    jmp     L2184
; default
L2185:
; RPN'ized expression: "( ( tok GetTokenName ) , L2391 error ) "
; Expanded expression: "  (@-6) *(2)  GetTokenName ()2  L2391  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2391:
    db  "WTF?! unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-6) , GetTokenName )2 , L2391 , error )4 "
    push    word [bp-6]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2391
    call    _error
    sub     sp, -4
; break
    jmp     L2184
; }
    jmp     L2184
L2389:
    jmp     L2185
L2184:
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L2395
; {
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L2396
L2395:
    cmp     ax, 61
    jne     L2397
L2396:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L2398
L2397:
    cmp     ax, 68
    jne     L2399
L2398:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L2400
L2399:
    cmp     ax, 69
    jne     L2401
L2400:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L2402
L2401:
    cmp     ax, 65
    jne     L2403
L2402:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L2404
L2403:
    cmp     ax, 66
    jne     L2405
L2404:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L2406
L2405:
    cmp     ax, 67
    jne     L2407
L2406:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L2408
L2407:
    cmp     ax, 70
    jne     L2409
L2408:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L2410
L2409:
    cmp     ax, 71
    jne     L2411
L2410:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L2412
L2411:
    cmp     ax, 72
    jne     L2413
L2412:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L2414
L2413:
    cmp     ax, 73
    jne     L2415
L2414:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L2416
L2415:
    cmp     ax, 74
    jne     L2417
L2416:
; switch
; RPN'ized expression: "stack i 1 + + *u 0 + *u "
; Expanded expression: "stack (@-4) *(2) 1 + 4 * + 0 + *(2) "
; Fused expression:    "+ *(@-4) 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2421
; {
; case
; RPN'ized expression: "260 "
; Expanded expression: "260 "
; Expression value: 260
    jmp     L2422
L2421:
    cmp     ax, 260
    jne     L2423
L2422:
; RPN'ized expression: "( 0 , ( v 16 / , 9 GenSelectByteOrWord ) , stack i 1 + + *u 1 + *u , 14 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0   (@-8) *(2) 16 /  9  GenSelectByteOrWord ()4  stack (@-4) *(2) 1 + 4 * + 2 + *(2)  14  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , ( / *(@-8) 16 , 9 , GenSelectByteOrWord )4 , + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 14 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    14
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2419
; case
; RPN'ized expression: "261 "
; Expanded expression: "261 "
; Expression value: 261
    jmp     L2424
L2423:
    cmp     ax, 261
    jne     L2425
L2424:
; RPN'ized expression: "( 0 , ( v 16 / , 9 GenSelectByteOrWord ) , stack i 1 + + *u 1 + *u , 18 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0   (@-8) *(2) 16 /  9  GenSelectByteOrWord ()4  stack (@-4) *(2) 1 + 4 * + 2 + *(2)  18  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , ( / *(@-8) 16 , 9 , GenSelectByteOrWord )4 , + *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 18 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    18
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2419
; case
; RPN'ized expression: "262 "
; Expanded expression: "262 "
; Expression value: 262
    jmp     L2426
L2425:
    cmp     ax, 262
    jne     L2427
L2426:
; case
; RPN'ized expression: "264 "
; Expanded expression: "264 "
; Expression value: 264
    jmp     L2428
L2427:
    cmp     ax, 264
    jne     L2429
L2428:
; RPN'ized expression: "( 0 , ( v 16 / , 9 GenSelectByteOrWord ) , 0 , 22 , 0 , 0 GenPrintInstr2Operands ) "
; Expanded expression: " 0   (@-8) *(2) 16 /  9  GenSelectByteOrWord ()4  0  22  0  0  GenPrintInstr2Operands ()12 "
; Fused expression:    "( 0 , ( / *(@-8) 16 , 9 , GenSelectByteOrWord )4 , 0 , 22 , 0 , 0 , GenPrintInstr2Operands )12 "
    push    0
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    push    9
    call    _GenSelectByteOrWord
    sub     sp, -4
    push    ax
    push    0
    push    22
    push    0
    push    0
    call    _GenPrintInstr2Operands
    sub     sp, -12
; break
    jmp     L2419
; }
    jmp     L2419
L2429:
L2419:
; RPN'ized expression: "( v 16 / GenExtendRegAIfNeeded ) "
; Expanded expression: " (@-8) *(2) 16 /  GenExtendRegAIfNeeded ()2 "
; Fused expression:    "( / *(@-8) 16 , GenExtendRegAIfNeeded )2 "
    mov     ax, [bp-8]
    cwd
    mov     cx, 16
    idiv    cx
    push    ax
    call    _GenExtendRegAIfNeeded
    sub     sp, -2
; }
    jmp     L2393
L2417:
L2393:
; RPN'ized expression: "i 2 += "
; Expanded expression: "(@-4) 2 +=(2) "
; Fused expression:    "+=(34) *(@-4) 2 "
    mov     ax, [bp-4]
    add     ax, 2
    mov     [bp-4], ax
; break
    jmp     L1968
; case
; RPN'ized expression: "41 "
; Expanded expression: "41 "
; Expression value: 41
    jmp     L2147
L2146:
    cmp     ax, 41
    jne     L2431
L2147:
; if
; RPN'ized expression: "stack i 1 - + *u 0 + *u 16 == "
; Expanded expression: "stack (@-4) *(2) 1 - 4 * + 0 + *(2) 16 == "
; Fused expression:    "- *(@-4) 1 * ax 4 + stack ax + ax 0 == *ax 16 IF! "
    mov     ax, [bp-4]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    jne     L2433
; {
; RPN'ized expression: "( stack i 1 - + *u 1 + *u , 12 , 0 , 29 GenPrintInstr1Operand ) "
; Expanded expression: " stack (@-4) *(2) 1 - 4 * + 2 + *(2)  12  0  29  GenPrintInstr1Operand ()8 "
; Fused expression:    "( - *(@-4) 1 * ax 4 + stack ax + ax 2 *(2) ax , 12 , 0 , 29 , GenPrintInstr1Operand )8 "
    mov     ax, [bp-4]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    12
    push    0
    push    29
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
    jmp     L2434
L2433:
; else
; {
; RPN'ized expression: "( 0 , 3 , 0 , 29 GenPrintInstr1Operand ) "
; Expanded expression: " 0  3  0  29  GenPrintInstr1Operand ()8 "
; Fused expression:    "( 0 , 3 , 0 , 29 , GenPrintInstr1Operand )8 "
    push    0
    push    3
    push    0
    push    29
    call    _GenPrintInstr1Operand
    sub     sp, -8
; }
L2434:
; if
; RPN'ized expression: "v "
; Expanded expression: "(@-8) *(2) "
; Fused expression:    "*(2) (@-8) "
    mov     ax, [bp-8]
; JumpIfZero
    test    ax, ax
    je      L2435
; RPN'ized expression: "( v -u GenLocalAlloc ) "
; Expanded expression: " (@-8) *(2) -u  GenLocalAlloc ()2 "
; Fused expression:    "( *(2) (@-8) -u , GenLocalAlloc )2 "
    mov     ax, [bp-8]
    neg     ax
    push    ax
    call    _GenLocalAlloc
    sub     sp, -2
L2435:
; break
    jmp     L1968
; case
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
    jmp     L2432
L2431:
    cmp     ax, 40
    jne     L2437
L2432:
; case
; RPN'ized expression: "22 "
; Expanded expression: "22 "
; Expression value: 22
    jmp     L2438
L2437:
    cmp     ax, 22
    jne     L2439
L2438:
; case
; RPN'ized expression: "76 "
; Expanded expression: "76 "
; Expression value: 76
    jmp     L2440
L2439:
    cmp     ax, 76
    jne     L2441
L2440:
; break
    jmp     L1968
; default
L1969:
; RPN'ized expression: "( ( tok GetTokenName ) , L2443 error ) "
; Expanded expression: "  (@-6) *(2)  GetTokenName ()2  L2443  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2443:
    db  "WTF?! unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-6) , GetTokenName )2 , L2443 , error )4 "
    push    word [bp-6]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2443
    call    _error
    sub     sp, -4
; break
    jmp     L1968
; }
    jmp     L1968
L2441:
    jmp     L1969
L1968:
    sub     sp, -6
; }
    jmp     L1965
L1967:
L1816:
    leave
    ret
; SEGMENT _TEXT
; glb GenStrData : (
; prm     insertJump : int
;     ) void
SEGMENT _TEXT
    global  _GenStrData
_GenStrData:
    push    bp
    mov     bp, sp
; loc     insertJump : (@4): int
; loc     i : (@-2): int
    sub     sp, 2
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-2) 0 =(2) "
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
L2446:
; RPN'ized expression: "i sp < "
; Expanded expression: "(@-2) *(2) sp *(2) < "
; Fused expression:    "< *(@-2) *sp IF! "
    mov     ax, [bp-2]
    cmp     ax, [_sp]
    jge     L2449
    jmp     L2448
L2447:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
    jmp     L2446
L2448:
; {
; loc         tok : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "stack i + *u 0 + *u "
; Expanded expression: "stack (@-2) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-2) 4 + stack ax + ax 0 =(34) *(@-4) *ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-4], ax
; loc         p : (@-6): * char
    sub     sp, 2
; =
; RPN'ized expression: "IdentTable stack i + *u 1 + *u + "
; Expanded expression: "IdentTable stack (@-2) *(2) 4 * + 2 + *(2) + "
; Fused expression:    "* *(@-2) 4 + stack ax + ax 2 + IdentTable *ax =(34) *(@-6) ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    mov     [bp-6], ax
; if
; RPN'ized expression: "tok 16 == ( p *u isdigit ) && "
; Expanded expression: "(@-4) *(2) 16 == _Bool [sh&&->2452]  (@-6) *(2) *(1)  isdigit ()2 _Bool &&[2452] "
; Fused expression:    "== *(@-4) 16 _Bool [sh&&->2452] ( *(2) (@-6) *(1) ax , isdigit )2 _Bool &&[2452] "
    mov     ax, [bp-4]
    cmp     ax, 16
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2452
    mov     ax, [bp-6]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isdigit
    sub     sp, -2
    test    ax, ax
    setne   al
    cbw
L2452:
; JumpIfZero
    test    ax, ax
    je      L2450
; {
; loc             label : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "( p atoi ) "
; Expanded expression: " (@-6) *(2)  atoi ()2 "
; Fused expression:    "( *(2) (@-6) , atoi )2 =(34) *(@-8) ax "
    push    word [bp-6]
    call    _atoi
    sub     sp, -2
    mov     [bp-8], ax
; loc             quot : (@-10): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-10) 0 "
    mov     ax, 0
    mov     [bp-10], ax
; loc             len : (@-12): int
    sub     sp, 2
; RPN'ized expression: "p ( label FindString ) = "
; Expanded expression: "(@-6)  (@-8) *(2)  FindString ()2 =(2) "
; Fused expression:    "( *(2) (@-8) , FindString )2 =(34) *(@-6) ax "
    push    word [bp-8]
    call    _FindString
    sub     sp, -2
    mov     [bp-6], ax
; RPN'ized expression: "len p ++p *u = "
; Expanded expression: "(@-12) (@-6) ++p(2) *(1) =(2) "
; Fused expression:    "++p(2) *(@-6) =(33) *(@-12) *ax "
    mov     ax, [bp-6]
    inc     word [bp-6]
    mov     bx, ax
    mov     al, [bx]
    cbw
    mov     [bp-12], ax
; if
; RPN'ized expression: "OutputFormat 0 == "
; Expanded expression: "OutputFormat *(2) 0 == "
; Fused expression:    "== *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    jne     L2453
; {
; if
; RPN'ized expression: "insertJump "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
; JumpIfZero
    test    ax, ax
    je      L2455
; RPN'ized expression: "( label 1 + GenJumpUncond ) "
; Expanded expression: " (@-8) *(2) 1 +  GenJumpUncond ()2 "
; Fused expression:    "( + *(@-8) 1 , GenJumpUncond )2 "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    call    _GenJumpUncond
    sub     sp, -2
L2455:
; }
    jmp     L2454
L2453:
; else
; {
; if
; RPN'ized expression: "insertJump "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
; JumpIfZero
    test    ax, ax
    je      L2457
; RPN'ized expression: "( CodeFooter printf ) "
; Expanded expression: " CodeFooter *(2)  printf ()2 "
; Fused expression:    "( *(2) CodeFooter , printf )2 "
    push    word [_CodeFooter]
    call    _printf
    sub     sp, -2
L2457:
; RPN'ized expression: "( DataHeader printf ) "
; Expanded expression: " DataHeader *(2)  printf ()2 "
; Fused expression:    "( *(2) DataHeader , printf )2 "
    push    word [_DataHeader]
    call    _printf
    sub     sp, -2
; }
L2454:
; RPN'ized expression: "( label GenNumLabel ) "
; Expanded expression: " (@-8) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-8) , GenNumLabel )2 "
    push    word [bp-8]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "( L2459 printf ) "
; Expanded expression: " L2459  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2459:
    db  "    db  ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2459 , printf )2 "
    push    L2459
    call    _printf
    sub     sp, -2
; while
; RPN'ized expression: "len --p "
; Expanded expression: "(@-12) --p(2) "
L2461:
; Fused expression:    "--p(2) *(@-12) "
    mov     ax, [bp-12]
    dec     word [bp-12]
; JumpIfZero
    test    ax, ax
    je      L2462
; {
; if
; RPN'ized expression: "p *u 32 >= p *u 126 <= && p *u 34 != && "
; Expanded expression: "(@-6) *(2) *(1) 32 >= _Bool [sh&&->2466] (@-6) *(2) *(1) 126 <= _Bool &&[2466] _Bool [sh&&->2465] (@-6) *(2) *(1) 34 != _Bool &&[2465] "
; Fused expression:    "*(2) (@-6) >= *ax 32 _Bool [sh&&->2466] *(2) (@-6) <= *ax 126 _Bool &&[2466] _Bool [sh&&->2465] *(2) (@-6) != *ax 34 _Bool &&[2465] "
    mov     ax, [bp-6]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 32
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2466
    mov     ax, [bp-6]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 126
    setle   al
    cbw
    test    ax, ax
    setne   al
    cbw
L2466:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2465
    mov     ax, [bp-6]
    mov     bx, ax
    mov     al, [bx]
    cbw
    cmp     ax, 34
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L2465:
; JumpIfZero
    test    ax, ax
    je      L2463
; {
; if
; RPN'ized expression: "quot 0 == "
; Expanded expression: "(@-10) *(2) 0 == "
; Fused expression:    "== *(@-10) 0 IF! "
    mov     ax, [bp-10]
    cmp     ax, 0
    jne     L2467
; {
; RPN'ized expression: "quot 1 = "
; Expanded expression: "(@-10) 1 =(2) "
; Fused expression:    "=(34) *(@-10) 1 "
    mov     ax, 1
    mov     [bp-10], ax
; RPN'ized expression: "( L2469 printf ) "
; Expanded expression: " L2469  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2469:
    db  34,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2469 , printf )2 "
    push    L2469
    call    _printf
    sub     sp, -2
; }
L2467:
; RPN'ized expression: "( p *u , L2471 printf ) "
; Expanded expression: " (@-6) *(2) *(1)  L2471  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2471:
    db  "%c",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-6) *(1) ax , L2471 , printf )4 "
    mov     ax, [bp-6]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L2471
    call    _printf
    sub     sp, -4
; }
    jmp     L2464
L2463:
; else
; {
; if
; RPN'ized expression: "quot "
; Expanded expression: "(@-10) *(2) "
; Fused expression:    "*(2) (@-10) "
    mov     ax, [bp-10]
; JumpIfZero
    test    ax, ax
    je      L2473
; {
; RPN'ized expression: "quot 0 = "
; Expanded expression: "(@-10) 0 =(2) "
; Fused expression:    "=(34) *(@-10) 0 "
    mov     ax, 0
    mov     [bp-10], ax
; RPN'ized expression: "( L2475 printf ) "
; Expanded expression: " L2475  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2475:
    db  34,",",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2475 , printf )2 "
    push    L2475
    call    _printf
    sub     sp, -2
; }
L2473:
; RPN'ized expression: "( p *u , L2477 printf ) "
; Expanded expression: " (@-6) *(2) *(1)  L2477  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2477:
    db  "%d",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-6) *(1) ax , L2477 , printf )4 "
    mov     ax, [bp-6]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    push    L2477
    call    _printf
    sub     sp, -4
; if
; RPN'ized expression: "len "
; Expanded expression: "(@-12) *(2) "
; Fused expression:    "*(2) (@-12) "
    mov     ax, [bp-12]
; JumpIfZero
    test    ax, ax
    je      L2479
; RPN'ized expression: "( L2481 printf ) "
; Expanded expression: " L2481  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2481:
    db  ",",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2481 , printf )2 "
    push    L2481
    call    _printf
    sub     sp, -2
L2479:
; }
L2464:
; RPN'ized expression: "p ++p "
; Expanded expression: "(@-6) ++p(2) "
; Fused expression:    "++p(2) *(@-6) "
    mov     ax, [bp-6]
    inc     word [bp-6]
; }
    jmp     L2461
L2462:
; if
; RPN'ized expression: "quot "
; Expanded expression: "(@-10) *(2) "
; Fused expression:    "*(2) (@-10) "
    mov     ax, [bp-10]
; JumpIfZero
    test    ax, ax
    je      L2483
; RPN'ized expression: "( L2485 printf ) "
; Expanded expression: " L2485  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2485:
    db  34,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2485 , printf )2 "
    push    L2485
    call    _printf
    sub     sp, -2
L2483:
; RPN'ized expression: "( L2487 printf ) "
; Expanded expression: " L2487  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2487:
    db  10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2487 , printf )2 "
    push    L2487
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "OutputFormat 0 == "
; Expanded expression: "OutputFormat *(2) 0 == "
; Fused expression:    "== *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    jne     L2489
; {
; if
; RPN'ized expression: "insertJump "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
; JumpIfZero
    test    ax, ax
    je      L2491
; RPN'ized expression: "( label 1 + GenNumLabel ) "
; Expanded expression: " (@-8) *(2) 1 +  GenNumLabel ()2 "
; Fused expression:    "( + *(@-8) 1 , GenNumLabel )2 "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    call    _GenNumLabel
    sub     sp, -2
L2491:
; }
    jmp     L2490
L2489:
; else
; {
; RPN'ized expression: "( DataFooter printf ) "
; Expanded expression: " DataFooter *(2)  printf ()2 "
; Fused expression:    "( *(2) DataFooter , printf )2 "
    push    word [_DataFooter]
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "insertJump "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
; JumpIfZero
    test    ax, ax
    je      L2493
; RPN'ized expression: "( CodeHeader printf ) "
; Expanded expression: " CodeHeader *(2)  printf ()2 "
; Fused expression:    "( *(2) CodeHeader , printf )2 "
    push    word [_CodeHeader]
    call    _printf
    sub     sp, -2
L2493:
; }
L2490:
    sub     sp, -6
; }
L2450:
    sub     sp, -4
; }
    jmp     L2447
L2449:
L2445:
    leave
    ret
; SEGMENT _TEXT
; glb GenExpr : (void) void
SEGMENT _TEXT
    global  _GenExpr
_GenExpr:
    push    bp
    mov     bp, sp
; RPN'ized expression: "( 1 GenStrData ) "
; Expanded expression: " 1  GenStrData ()2 "
; Fused expression:    "( 1 , GenStrData )2 "
    push    1
    call    _GenStrData
    sub     sp, -2
; RPN'ized expression: "( GenExpr1 ) "
; Expanded expression: " GenExpr1 ()0 "
; Fused expression:    "( GenExpr1 )0 "
    call    _GenExpr1
L2495:
    leave
    ret
; SEGMENT _TEXT
; glb push2 : (
; prm     v : int
; prm     v2 : int
;     ) void
SEGMENT _TEXT
    global  _push2
_push2:
    push    bp
    mov     bp, sp
; loc     v : (@4): int
; loc     v2 : (@6): int
; if
; RPN'ized expression: "sp 100 >= "
; Expanded expression: "sp *(2) 100 >= "
; Fused expression:    ">= *sp 100 IF! "
    mov     ax, [_sp]
    cmp     ax, 100
    jl      L2497
; RPN'ized expression: "( L2499 error ) "
; Expanded expression: " L2499  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2499:
    db  "stack overflow!",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2499 , error )2 "
    push    L2499
    call    _error
    sub     sp, -2
L2497:
; RPN'ized expression: "stack sp + *u 0 + *u v = "
; Expanded expression: "stack sp *(2) 4 * + 0 + (@4) *(2) =(2) "
; Fused expression:    "* *sp 4 + stack ax + ax 0 =(34) *ax *(@4) "
    mov     ax, [_sp]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp+4]
    mov     [bx], ax
; RPN'ized expression: "stack sp ++p + *u 1 + *u v2 = "
; Expanded expression: "stack sp ++p(2) 4 * + 2 + (@6) *(2) =(2) "
; Fused expression:    "++p(2) *sp * ax 4 + stack ax + ax 2 =(34) *ax *(@6) "
    mov     ax, [_sp]
    inc     word [_sp]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp+6]
    mov     [bx], ax
L2496:
    leave
    ret
; SEGMENT _TEXT
; glb push : (
; prm     v : int
;     ) void
SEGMENT _TEXT
    global  _push
_push:
    push    bp
    mov     bp, sp
; loc     v : (@4): int
; RPN'ized expression: "( 0 , v push2 ) "
; Expanded expression: " 0  (@4) *(2)  push2 ()4 "
; Fused expression:    "( 0 , *(2) (@4) , push2 )4 "
    push    0
    push    word [bp+4]
    call    _push2
    sub     sp, -4
L2501:
    leave
    ret
; SEGMENT _TEXT
; glb stacktop : () int
SEGMENT _TEXT
    global  _stacktop
_stacktop:
    push    bp
    mov     bp, sp
; if
; RPN'ized expression: "sp 0 == "
; Expanded expression: "sp *(2) 0 == "
; Fused expression:    "== *sp 0 IF! "
    mov     ax, [_sp]
    cmp     ax, 0
    jne     L2503
; RPN'ized expression: "( L2505 error ) "
; Expanded expression: " L2505  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2505:
    db  "stack underflow!",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2505 , error )2 "
    push    L2505
    call    _error
    sub     sp, -2
L2503:
; return
; RPN'ized expression: "stack sp 1 - + *u 0 + *u "
; Expanded expression: "stack sp *(2) 1 - 4 * + 0 + *(2) "
; Fused expression:    "- *sp 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [_sp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2502
L2502:
    leave
    ret
; SEGMENT _TEXT
; glb pop2 : (
; prm     v2 : * int
;     ) int
SEGMENT _TEXT
    global  _pop2
_pop2:
    push    bp
    mov     bp, sp
; loc     v2 : (@4): * int
; loc     v : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "( stacktop ) "
; Expanded expression: " stacktop ()0 "
; Fused expression:    "( stacktop )0 =(34) *(@-2) ax "
    call    _stacktop
    mov     [bp-2], ax
; RPN'ized expression: "v2 *u stack sp 1 - + *u 1 + *u = "
; Expanded expression: "(@4) *(2) stack sp *(2) 1 - 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) push-ax - *sp 1 * ax 4 + stack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp+4]
    push    ax
    mov     ax, [_sp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "sp --p "
; Expanded expression: "sp --p(2) "
; Fused expression:    "--p(2) *sp "
    mov     ax, [_sp]
    dec     word [_sp]
; return
; RPN'ized expression: "v "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L2507
L2507:
    leave
    ret
; SEGMENT _TEXT
; glb pop : () int
SEGMENT _TEXT
    global  _pop
_pop:
    push    bp
    mov     bp, sp
; loc     v2 : (@-2): int
    sub     sp, 2
; return
; RPN'ized expression: "( v2 &u pop2 ) "
; Expanded expression: " (@-2)  pop2 ()2 "
; Fused expression:    "( (@-2) , pop2 )2 "
    lea     ax, [bp-2]
    push    ax
    call    _pop2
    sub     sp, -2
    jmp     L2508
L2508:
    leave
    ret
; SEGMENT _TEXT
; glb ins2 : (
; prm     pos : int
; prm     v : int
; prm     v2 : int
;     ) void
SEGMENT _TEXT
    global  _ins2
_ins2:
    push    bp
    mov     bp, sp
; loc     pos : (@4): int
; loc     v : (@6): int
; loc     v2 : (@8): int
; if
; RPN'ized expression: "sp 100 >= "
; Expanded expression: "sp *(2) 100 >= "
; Fused expression:    ">= *sp 100 IF! "
    mov     ax, [_sp]
    cmp     ax, 100
    jl      L2510
; RPN'ized expression: "( L2512 error ) "
; Expanded expression: " L2512  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2512:
    db  "stack overflow!",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2512 , error )2 "
    push    L2512
    call    _error
    sub     sp, -2
L2510:
; RPN'ized expression: "( stack 0 + *u sizeof sp pos - * , stack pos + *u &u , stack pos 1 + + *u &u memmove ) "
; Expanded expression: " 4 sp *(2) (@4) *(2) - *  stack (@4) *(2) 4 * +  stack (@4) *(2) 1 + 4 * +  memmove ()6 "
; Fused expression:    "( - *sp *(@4) * 4 ax , * *(@4) 4 + stack ax , + *(@4) 1 * ax 4 + stack ax , memmove )6 "
    mov     ax, [_sp]
    sub     ax, [bp+4]
    mov     cx, ax
    mov     ax, 4
    mul     cx
    push    ax
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    push    ax
    mov     ax, [bp+4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    push    ax
    call    _memmove
    sub     sp, -6
; RPN'ized expression: "stack pos + *u 0 + *u v = "
; Expanded expression: "stack (@4) *(2) 4 * + 0 + (@6) *(2) =(2) "
; Fused expression:    "* *(@4) 4 + stack ax + ax 0 =(34) *ax *(@6) "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp+6]
    mov     [bx], ax
; RPN'ized expression: "stack pos + *u 1 + *u v2 = "
; Expanded expression: "stack (@4) *(2) 4 * + 2 + (@8) *(2) =(2) "
; Fused expression:    "* *(@4) 4 + stack ax + ax 2 =(34) *ax *(@8) "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp+8]
    mov     [bx], ax
; RPN'ized expression: "sp ++p "
; Expanded expression: "sp ++p(2) "
; Fused expression:    "++p(2) *sp "
    mov     ax, [_sp]
    inc     word [_sp]
L2509:
    leave
    ret
; SEGMENT _TEXT
; glb ins : (
; prm     pos : int
; prm     v : int
;     ) void
SEGMENT _TEXT
    global  _ins
_ins:
    push    bp
    mov     bp, sp
; loc     pos : (@4): int
; loc     v : (@6): int
; RPN'ized expression: "( 0 , v , pos ins2 ) "
; Expanded expression: " 0  (@6) *(2)  (@4) *(2)  ins2 ()6 "
; Fused expression:    "( 0 , *(2) (@6) , *(2) (@4) , ins2 )6 "
    push    0
    push    word [bp+6]
    push    word [bp+4]
    call    _ins2
    sub     sp, -6
L2514:
    leave
    ret
; SEGMENT _TEXT
; glb del : (
; prm     pos : int
; prm     cnt : int
;     ) void
SEGMENT _TEXT
    global  _del
_del:
    push    bp
    mov     bp, sp
; loc     pos : (@4): int
; loc     cnt : (@6): int
; RPN'ized expression: "( stack 0 + *u sizeof sp pos cnt + - * , stack pos cnt + + *u , stack pos + *u memmove ) "
; Expanded expression: " 4 sp *(2) (@4) *(2) (@6) *(2) + - *  stack (@4) *(2) (@6) *(2) + 4 * +  stack (@4) *(2) 4 * +  memmove ()6 "
; Fused expression:    "( + *(@4) *(@6) - *sp ax * 4 ax , + *(@4) *(@6) * ax 4 + stack ax , * *(@4) 4 + stack ax , memmove )6 "
    mov     ax, [bp+4]
    add     ax, [bp+6]
    mov     cx, ax
    mov     ax, [_sp]
    sub     ax, cx
    mov     cx, ax
    mov     ax, 4
    mul     cx
    push    ax
    mov     ax, [bp+4]
    add     ax, [bp+6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    push    ax
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    push    ax
    call    _memmove
    sub     sp, -6
; RPN'ized expression: "sp cnt -= "
; Expanded expression: "sp (@6) *(2) -=(2) "
; Fused expression:    "-=(34) *sp *(@6) "
    mov     ax, [_sp]
    sub     ax, [bp+6]
    mov     [_sp], ax
L2515:
    leave
    ret
; SEGMENT _TEXT
; glb pushop2 : (
; prm     v : int
; prm     v2 : int
;     ) void
SEGMENT _TEXT
    global  _pushop2
_pushop2:
    push    bp
    mov     bp, sp
; loc     v : (@4): int
; loc     v2 : (@6): int
; if
; RPN'ized expression: "opsp 100 >= "
; Expanded expression: "opsp *(2) 100 >= "
; Fused expression:    ">= *opsp 100 IF! "
    mov     ax, [_opsp]
    cmp     ax, 100
    jl      L2517
; RPN'ized expression: "( L2519 error ) "
; Expanded expression: " L2519  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2519:
    db  "operator stack overflow!",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2519 , error )2 "
    push    L2519
    call    _error
    sub     sp, -2
L2517:
; RPN'ized expression: "opstack opsp + *u 0 + *u v = "
; Expanded expression: "opstack opsp *(2) 4 * + 0 + (@4) *(2) =(2) "
; Fused expression:    "* *opsp 4 + opstack ax + ax 0 =(34) *ax *(@4) "
    mov     ax, [_opsp]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _opstack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp+4]
    mov     [bx], ax
; RPN'ized expression: "opstack opsp ++p + *u 1 + *u v2 = "
; Expanded expression: "opstack opsp ++p(2) 4 * + 2 + (@6) *(2) =(2) "
; Fused expression:    "++p(2) *opsp * ax 4 + opstack ax + ax 2 =(34) *ax *(@6) "
    mov     ax, [_opsp]
    inc     word [_opsp]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _opstack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp+6]
    mov     [bx], ax
L2516:
    leave
    ret
; SEGMENT _TEXT
; glb pushop : (
; prm     v : int
;     ) void
SEGMENT _TEXT
    global  _pushop
_pushop:
    push    bp
    mov     bp, sp
; loc     v : (@4): int
; RPN'ized expression: "( 0 , v pushop2 ) "
; Expanded expression: " 0  (@4) *(2)  pushop2 ()4 "
; Fused expression:    "( 0 , *(2) (@4) , pushop2 )4 "
    push    0
    push    word [bp+4]
    call    _pushop2
    sub     sp, -4
L2521:
    leave
    ret
; SEGMENT _TEXT
; glb opstacktop : () int
SEGMENT _TEXT
    global  _opstacktop
_opstacktop:
    push    bp
    mov     bp, sp
; if
; RPN'ized expression: "opsp 0 == "
; Expanded expression: "opsp *(2) 0 == "
; Fused expression:    "== *opsp 0 IF! "
    mov     ax, [_opsp]
    cmp     ax, 0
    jne     L2523
; RPN'ized expression: "( L2525 error ) "
; Expanded expression: " L2525  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2525:
    db  "operator stack underflow!",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2525 , error )2 "
    push    L2525
    call    _error
    sub     sp, -2
L2523:
; return
; RPN'ized expression: "opstack opsp 1 - + *u 0 + *u "
; Expanded expression: "opstack opsp *(2) 1 - 4 * + 0 + *(2) "
; Fused expression:    "- *opsp 1 * ax 4 + opstack ax + ax 0 *(2) ax "
    mov     ax, [_opsp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _opstack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L2522
L2522:
    leave
    ret
; SEGMENT _TEXT
; glb popop2 : (
; prm     v2 : * int
;     ) int
SEGMENT _TEXT
    global  _popop2
_popop2:
    push    bp
    mov     bp, sp
; loc     v2 : (@4): * int
; loc     v : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "( opstacktop ) "
; Expanded expression: " opstacktop ()0 "
; Fused expression:    "( opstacktop )0 =(34) *(@-2) ax "
    call    _opstacktop
    mov     [bp-2], ax
; RPN'ized expression: "v2 *u opstack opsp 1 - + *u 1 + *u = "
; Expanded expression: "(@4) *(2) opstack opsp *(2) 1 - 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) push-ax - *opsp 1 * ax 4 + opstack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp+4]
    push    ax
    mov     ax, [_opsp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _opstack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "opsp --p "
; Expanded expression: "opsp --p(2) "
; Fused expression:    "--p(2) *opsp "
    mov     ax, [_opsp]
    dec     word [_opsp]
; return
; RPN'ized expression: "v "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L2527
L2527:
    leave
    ret
; SEGMENT _TEXT
; glb popop : () int
SEGMENT _TEXT
    global  _popop
_popop:
    push    bp
    mov     bp, sp
; loc     v2 : (@-2): int
    sub     sp, 2
; return
; RPN'ized expression: "( v2 &u popop2 ) "
; Expanded expression: " (@-2)  popop2 ()2 "
; Fused expression:    "( (@-2) , popop2 )2 "
    lea     ax, [bp-2]
    push    ax
    call    _popop2
    sub     sp, -2
    jmp     L2528
L2528:
    leave
    ret
; SEGMENT _TEXT
; glb isop : (
; prm     tok : int
;     ) int
SEGMENT _TEXT
    global  _isop
_isop:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L2532
; {
; case
; RPN'ized expression: "33 "
; Expanded expression: "33 "
; Expression value: 33
    jmp     L2533
L2532:
    cmp     ax, 33
    jne     L2534
L2533:
; case
; RPN'ized expression: "126 "
; Expanded expression: "126 "
; Expression value: 126
    jmp     L2535
L2534:
    cmp     ax, 126
    jne     L2536
L2535:
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L2537
L2536:
    cmp     ax, 38
    jne     L2538
L2537:
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L2539
L2538:
    cmp     ax, 42
    jne     L2540
L2539:
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L2541
L2540:
    cmp     ax, 47
    jne     L2542
L2541:
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L2543
L2542:
    cmp     ax, 37
    jne     L2544
L2543:
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L2545
L2544:
    cmp     ax, 43
    jne     L2546
L2545:
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L2547
L2546:
    cmp     ax, 45
    jne     L2548
L2547:
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L2549
L2548:
    cmp     ax, 124
    jne     L2550
L2549:
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L2551
L2550:
    cmp     ax, 94
    jne     L2552
L2551:
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L2553
L2552:
    cmp     ax, 60
    jne     L2554
L2553:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L2555
L2554:
    cmp     ax, 62
    jne     L2556
L2555:
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L2557
L2556:
    cmp     ax, 61
    jne     L2558
L2557:
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L2559
L2558:
    cmp     ax, 7
    jne     L2560
L2559:
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L2561
L2560:
    cmp     ax, 6
    jne     L2562
L2561:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L2563
L2562:
    cmp     ax, 8
    jne     L2564
L2563:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L2565
L2564:
    cmp     ax, 9
    jne     L2566
L2565:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L2567
L2566:
    cmp     ax, 10
    jne     L2568
L2567:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L2569
L2568:
    cmp     ax, 11
    jne     L2570
L2569:
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L2571
L2570:
    cmp     ax, 4
    jne     L2572
L2571:
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L2573
L2572:
    cmp     ax, 5
    jne     L2574
L2573:
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L2575
L2574:
    cmp     ax, 12
    jne     L2576
L2575:
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L2577
L2576:
    cmp     ax, 13
    jne     L2578
L2577:
; case
; RPN'ized expression: "27 "
; Expanded expression: "27 "
; Expression value: 27
    jmp     L2579
L2578:
    cmp     ax, 27
    jne     L2580
L2579:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L2581
L2580:
    cmp     ax, 65
    jne     L2582
L2581:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L2583
L2582:
    cmp     ax, 66
    jne     L2584
L2583:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L2585
L2584:
    cmp     ax, 67
    jne     L2586
L2585:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L2587
L2586:
    cmp     ax, 68
    jne     L2588
L2587:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L2589
L2588:
    cmp     ax, 69
    jne     L2590
L2589:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L2591
L2590:
    cmp     ax, 70
    jne     L2592
L2591:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L2593
L2592:
    cmp     ax, 71
    jne     L2594
L2593:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L2595
L2594:
    cmp     ax, 72
    jne     L2596
L2595:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L2597
L2596:
    cmp     ax, 73
    jne     L2598
L2597:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L2599
L2598:
    cmp     ax, 74
    jne     L2600
L2599:
; return
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1 "
    mov     ax, 1
    jmp     L2529
; default
L2531:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L2529
; }
    jmp     L2530
L2600:
    jmp     L2531
L2530:
L2529:
    leave
    ret
; SEGMENT _TEXT
; glb isunary : (
; prm     tok : int
;     ) int
SEGMENT _TEXT
    global  _isunary
_isunary:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; return
; RPN'ized expression: "tok 33 == tok 126 == || tok 12 == || tok 13 == || tok 27 == || "
; Expanded expression: "(@4) *(2) 33 == _Bool [sh||->2606] (@4) *(2) 126 == _Bool ||[2606] _Bool [sh||->2605] (@4) *(2) 12 == _Bool ||[2605] _Bool [sh||->2604] (@4) *(2) 13 == _Bool ||[2604] _Bool [sh||->2603] (@4) *(2) 27 == _Bool ||[2603] "
; Fused expression:    "== *(@4) 33 _Bool [sh||->2606] == *(@4) 126 _Bool ||[2606] _Bool [sh||->2605] == *(@4) 12 _Bool ||[2605] _Bool [sh||->2604] == *(@4) 13 _Bool ||[2604] _Bool [sh||->2603] == *(@4) 27 _Bool ||[2603] "
    mov     ax, [bp+4]
    cmp     ax, 33
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2606
    mov     ax, [bp+4]
    cmp     ax, 126
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2606:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2605
    mov     ax, [bp+4]
    cmp     ax, 12
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2605:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2604
    mov     ax, [bp+4]
    cmp     ax, 13
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2604:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2603
    mov     ax, [bp+4]
    cmp     ax, 27
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2603:
    jmp     L2602
L2602:
    leave
    ret
; SEGMENT _TEXT
; glb preced : (
; prm     tok : int
;     ) int
SEGMENT _TEXT
    global  _preced
_preced:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L2610
; {
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L2611
L2610:
    cmp     ax, 42
    jne     L2612
L2611:
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L2613
L2612:
    cmp     ax, 47
    jne     L2614
L2613:
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L2615
L2614:
    cmp     ax, 37
    jne     L2616
L2615:
; return
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
; Fused expression:    "11 "
    mov     ax, 11
    jmp     L2607
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L2617
L2616:
    cmp     ax, 43
    jne     L2618
L2617:
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L2619
L2618:
    cmp     ax, 45
    jne     L2620
L2619:
; return
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
; Fused expression:    "10 "
    mov     ax, 10
    jmp     L2607
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L2621
L2620:
    cmp     ax, 4
    jne     L2622
L2621:
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L2623
L2622:
    cmp     ax, 5
    jne     L2624
L2623:
; return
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
; Fused expression:    "9 "
    mov     ax, 9
    jmp     L2607
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L2625
L2624:
    cmp     ax, 60
    jne     L2626
L2625:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L2627
L2626:
    cmp     ax, 62
    jne     L2628
L2627:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L2629
L2628:
    cmp     ax, 10
    jne     L2630
L2629:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L2631
L2630:
    cmp     ax, 11
    jne     L2632
L2631:
; return
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
; Fused expression:    "8 "
    mov     ax, 8
    jmp     L2607
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L2633
L2632:
    cmp     ax, 8
    jne     L2634
L2633:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L2635
L2634:
    cmp     ax, 9
    jne     L2636
L2635:
; return
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
; Fused expression:    "7 "
    mov     ax, 7
    jmp     L2607
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L2637
L2636:
    cmp     ax, 38
    jne     L2638
L2637:
; return
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
; Fused expression:    "6 "
    mov     ax, 6
    jmp     L2607
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L2639
L2638:
    cmp     ax, 94
    jne     L2640
L2639:
; return
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
; Fused expression:    "5 "
    mov     ax, 5
    jmp     L2607
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L2641
L2640:
    cmp     ax, 124
    jne     L2642
L2641:
; return
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; Fused expression:    "4 "
    mov     ax, 4
    jmp     L2607
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L2643
L2642:
    cmp     ax, 6
    jne     L2644
L2643:
; return
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; Fused expression:    "3 "
    mov     ax, 3
    jmp     L2607
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L2645
L2644:
    cmp     ax, 7
    jne     L2646
L2645:
; return
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; Fused expression:    "2 "
    mov     ax, 2
    jmp     L2607
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L2647
L2646:
    cmp     ax, 61
    jne     L2648
L2647:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L2649
L2648:
    cmp     ax, 65
    jne     L2650
L2649:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L2651
L2650:
    cmp     ax, 66
    jne     L2652
L2651:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L2653
L2652:
    cmp     ax, 67
    jne     L2654
L2653:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L2655
L2654:
    cmp     ax, 68
    jne     L2656
L2655:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L2657
L2656:
    cmp     ax, 69
    jne     L2658
L2657:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L2659
L2658:
    cmp     ax, 70
    jne     L2660
L2659:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L2661
L2660:
    cmp     ax, 71
    jne     L2662
L2661:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L2663
L2662:
    cmp     ax, 72
    jne     L2664
L2663:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L2665
L2664:
    cmp     ax, 73
    jne     L2666
L2665:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L2667
L2666:
    cmp     ax, 74
    jne     L2668
L2667:
; return
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1 "
    mov     ax, 1
    jmp     L2607
; }
    jmp     L2608
L2668:
L2608:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L2607
L2607:
    leave
    ret
; SEGMENT _TEXT
; glb precedGEQ : (
; prm     lfttok : int
; prm     rhttok : int
;     ) int
SEGMENT _TEXT
    global  _precedGEQ
_precedGEQ:
    push    bp
    mov     bp, sp
; loc     lfttok : (@4): int
; loc     rhttok : (@6): int
; switch
; RPN'ized expression: "lfttok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L2673
; {
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L2674
L2673:
    cmp     ax, 61
    jne     L2675
L2674:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L2676
L2675:
    cmp     ax, 65
    jne     L2677
L2676:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L2678
L2677:
    cmp     ax, 66
    jne     L2679
L2678:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L2680
L2679:
    cmp     ax, 67
    jne     L2681
L2680:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L2682
L2681:
    cmp     ax, 68
    jne     L2683
L2682:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L2684
L2683:
    cmp     ax, 69
    jne     L2685
L2684:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L2686
L2685:
    cmp     ax, 70
    jne     L2687
L2686:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L2688
L2687:
    cmp     ax, 71
    jne     L2689
L2688:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L2690
L2689:
    cmp     ax, 72
    jne     L2691
L2690:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L2692
L2691:
    cmp     ax, 73
    jne     L2693
L2692:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L2694
L2693:
    cmp     ax, 74
    jne     L2695
L2694:
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L2670
; }
    jmp     L2671
L2695:
L2671:
; return
; RPN'ized expression: "( lfttok preced ) ( rhttok preced ) >= "
; Expanded expression: " (@4) *(2)  preced ()2  (@6) *(2)  preced ()2 >= "
; Fused expression:    "( *(2) (@4) , preced )2 push-ax ( *(2) (@6) , preced )2 >= *sp ax "
    push    word [bp+4]
    call    _preced
    sub     sp, -2
    push    ax
    push    word [bp+6]
    call    _preced
    sub     sp, -2
    mov     cx, ax
    pop     ax
    cmp     ax, cx
    setge   al
    cbw
    jmp     L2670
L2670:
    leave
    ret
; SEGMENT _TEXT
; glb expr : (
; prm     tok : int
; prm     gotUnary : * int
;     ) int
; glb exprUnary : (
; prm     tok : int
; prm     gotUnary : * int
;     ) int
SEGMENT _TEXT
    global  _exprUnary
_exprUnary:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; loc     gotUnary : (@6): * int
; loc     decl : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
; RPN'ized expression: "gotUnary *u 0 = "
; Expanded expression: "(@6) *(2) 0 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 0 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; if
; RPN'ized expression: "( tok isop ) ( tok isunary ) ( tok , L2700 strchr ) 0 != || && "
; Expanded expression: " (@4) *(2)  isop ()2 _Bool [sh&&->2702]  (@4) *(2)  isunary ()2 _Bool [sh||->2703]  (@4) *(2)  L2700  strchr ()4 0 != _Bool ||[2703] _Bool &&[2702] "
; SEGMENT _TEXT
SEGMENT _DATA
L2700:
    db  "&*+-",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , isop )2 _Bool [sh&&->2702] ( *(2) (@4) , isunary )2 _Bool [sh||->2703] ( *(2) (@4) , L2700 , strchr )4 != ax 0 _Bool ||[2703] _Bool &&[2702] "
    push    word [bp+4]
    call    _isop
    sub     sp, -2
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2702
    push    word [bp+4]
    call    _isunary
    sub     sp, -2
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2703
    push    word [bp+4]
    push    L2700
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L2703:
    test    ax, ax
    setne   al
    cbw
L2702:
; JumpIfZero
    test    ax, ax
    je      L2698
; {
; loc         lastTok : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "=(34) *(@-4) *(@4) "
    mov     ax, [bp+4]
    mov     [bp-4], ax
; RPN'ized expression: "tok ( gotUnary , ( GetToken ) exprUnary ) = "
; Expanded expression: "(@4)  (@6) *(2)   GetToken ()0  exprUnary ()4 =(2) "
; Fused expression:    "( *(2) (@6) , ( GetToken )0 , exprUnary )4 =(34) *(@4) ax "
    push    word [bp+6]
    call    _GetToken
    push    ax
    call    _exprUnary
    sub     sp, -4
    mov     [bp+4], ax
; if
; RPN'ized expression: "gotUnary *u 0 == "
; Expanded expression: "(@6) *(2) *(2) 0 == "
; Fused expression:    "*(2) (@6) == *ax 0 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jne     L2704
; RPN'ized expression: "( ( lastTok GetTokenName ) , L2706 error ) "
; Expanded expression: "  (@-4) *(2)  GetTokenName ()2  L2706  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2706:
    db  "exprUnary(): primary expression expected after token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-4) , GetTokenName )2 , L2706 , error )4 "
    push    word [bp-4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2706
    call    _error
    sub     sp, -4
L2704:
; switch
; RPN'ized expression: "lastTok "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L2710
; {
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L2711
L2710:
    cmp     ax, 38
    jne     L2712
L2711:
; RPN'ized expression: "( 77 push ) "
; Expanded expression: " 77  push ()2 "
; Fused expression:    "( 77 , push )2 "
    push    77
    call    _push
    sub     sp, -2
; break
    jmp     L2708
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L2713
L2712:
    cmp     ax, 42
    jne     L2714
L2713:
; RPN'ized expression: "( 78 push ) "
; Expanded expression: " 78  push ()2 "
; Fused expression:    "( 78 , push )2 "
    push    78
    call    _push
    sub     sp, -2
; break
    jmp     L2708
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L2715
L2714:
    cmp     ax, 43
    jne     L2716
L2715:
; RPN'ized expression: "( 79 push ) "
; Expanded expression: " 79  push ()2 "
; Fused expression:    "( 79 , push )2 "
    push    79
    call    _push
    sub     sp, -2
; break
    jmp     L2708
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L2717
L2716:
    cmp     ax, 45
    jne     L2718
L2717:
; RPN'ized expression: "( 80 push ) "
; Expanded expression: " 80  push ()2 "
; Fused expression:    "( 80 , push )2 "
    push    80
    call    _push
    sub     sp, -2
; break
    jmp     L2708
; case
; RPN'ized expression: "33 "
; Expanded expression: "33 "
; Expression value: 33
    jmp     L2719
L2718:
    cmp     ax, 33
    jne     L2720
L2719:
; RPN'ized expression: "( 0 , 1 push2 ) "
; Expanded expression: " 0  1  push2 ()4 "
; Fused expression:    "( 0 , 1 , push2 )4 "
    push    0
    push    1
    call    _push2
    sub     sp, -4
; RPN'ized expression: "( 8 push ) "
; Expanded expression: " 8  push ()2 "
; Fused expression:    "( 8 , push )2 "
    push    8
    call    _push
    sub     sp, -2
; break
    jmp     L2708
; default
L2709:
; RPN'ized expression: "( lastTok push ) "
; Expanded expression: " (@-4) *(2)  push ()2 "
; Fused expression:    "( *(2) (@-4) , push )2 "
    push    word [bp-4]
    call    _push
    sub     sp, -2
; break
    jmp     L2708
; }
    jmp     L2708
L2720:
    jmp     L2709
L2708:
    sub     sp, -2
; }
    jmp     L2699
L2698:
; else
; {
; loc         inspos : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "sp "
; Expanded expression: "sp *(2) "
; Fused expression:    "=(34) *(@-4) *sp "
    mov     ax, [_sp]
    mov     [bp-4], ax
; if
; RPN'ized expression: "tok 1 == tok 2 == || "
; Expanded expression: "(@4) *(2) 1 == _Bool [sh||->2724] (@4) *(2) 2 == _Bool ||[2724] "
; Fused expression:    "== *(@4) 1 _Bool [sh||->2724] == *(@4) 2 _Bool ||[2724] "
    mov     ax, [bp+4]
    cmp     ax, 1
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2724
    mov     ax, [bp+4]
    cmp     ax, 2
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2724:
; JumpIfZero
    test    ax, ax
    je      L2722
; {
; RPN'ized expression: "( ( GetTokenValueInt ) , tok push2 ) "
; Expanded expression: "  GetTokenValueInt ()0  (@4) *(2)  push2 ()4 "
; Fused expression:    "( ( GetTokenValueInt )0 , *(2) (@4) , push2 )4 "
    call    _GetTokenValueInt
    push    ax
    push    word [bp+4]
    call    _push2
    sub     sp, -4
; RPN'ized expression: "gotUnary *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; }
    jmp     L2723
L2722:
; else
; if
; RPN'ized expression: "tok 3 == "
; Expanded expression: "(@4) *(2) 3 == "
; Fused expression:    "== *(@4) 3 IF! "
    mov     ax, [bp+4]
    cmp     ax, 3
    jne     L2725
; {
; loc             lbl : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt 2 += 2 - "
; Expanded expression: "LabelCnt 2 +=(2) 2 - "
; Fused expression:    "+=(34) *LabelCnt 2 - ax 2 =(34) *(@-6) ax "
    mov     ax, [_LabelCnt]
    add     ax, 2
    mov     [_LabelCnt], ax
    sub     ax, 2
    mov     [bp-6], ax
; loc             len : (@-8): int
    sub     sp, 2
; loc             i : (@-10): int
    sub     sp, 2
; loc             id : (@-12): int
    sub     sp, 2
; RPN'ized expression: "1 2 8 lbl sizeof * + 3 / + "
; Expanded expression: "7 "
; Expression value: 7
; loc             s : (@-20): [7] char
    sub     sp, 8
; loc             p : (@-22): * char
    sub     sp, 2
; =
; RPN'ized expression: "s s sizeof + "
; Expanded expression: "(@-20) 7 + "
; Fused expression:    "+ (@-20) 7 =(34) *(@-22) ax "
    lea     ax, [bp-20]
    add     ax, 7
    mov     [bp-22], ax
; RPN'ized expression: "( len 1 ( GetTokenValueStringLength ) + = , ( GetTokenValueString ) , lbl AddString ) "
; Expanded expression: " (@-8) 1  GetTokenValueStringLength ()0 + =(2)   GetTokenValueString ()0  (@-6) *(2)  AddString ()6 "
; Fused expression:    "( ( GetTokenValueStringLength )0 + 1 ax =(34) *(@-8) ax , ( GetTokenValueString )0 , *(2) (@-6) , AddString )6 "
    call    _GetTokenValueStringLength
    mov     cx, ax
    mov     ax, 1
    add     ax, cx
    mov     [bp-8], ax
    push    ax
    call    _GetTokenValueString
    push    ax
    push    word [bp-6]
    call    _AddString
    sub     sp, -6
; RPN'ized expression: "p -- *u 0 = "
; Expanded expression: "(@-22) --(2) 0 =(1) "
; Fused expression:    "--(2) *(@-22) =(18) *ax 0 "
    dec     word [bp-22]
    mov     ax, [bp-22]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], al
    cbw
; RPN'ized expression: "i lbl = "
; Expanded expression: "(@-10) (@-6) *(2) =(2) "
; Fused expression:    "=(34) *(@-10) *(@-6) "
    mov     ax, [bp-6]
    mov     [bp-10], ax
; do
L2727:
; {
; RPN'ized expression: "p -- *u 48 i 10 % + = "
; Expanded expression: "(@-22) --(2) 48 (@-10) *(2) 10 % + =(1) "
; Fused expression:    "--(2) *(@-22) push-ax % *(@-10) 10 + 48 ax =(18) **sp ax "
    dec     word [bp-22]
    mov     ax, [bp-22]
    push    ax
    mov     ax, [bp-10]
    cwd
    mov     cx, 10
    idiv    cx
    mov     ax, dx
    mov     cx, ax
    mov     ax, 48
    add     ax, cx
    pop     bx
    mov     [bx], al
    cbw
; RPN'ized expression: "i 10 /= "
; Expanded expression: "(@-10) 10 /=(2) "
; Fused expression:    "/=(34) *(@-10) 10 "
    mov     ax, [bp-10]
    cwd
    mov     cx, 10
    idiv    cx
    mov     [bp-10], ax
; }
; while
; RPN'ized expression: "i "
; Expanded expression: "(@-10) *(2) "
L2728:
; Fused expression:    "*(2) (@-10) "
    mov     ax, [bp-10]
; JumpIfNotZero
    test    ax, ax
    jne     L2727
L2729:
; RPN'ized expression: "( id ( p AddIdent ) = , 16 PushSyntax2 ) "
; Expanded expression: " (@-12)  (@-22) *(2)  AddIdent ()2 =(2)  16  PushSyntax2 ()4 "
; Fused expression:    "( ( *(2) (@-22) , AddIdent )2 =(34) *(@-12) ax , 16 , PushSyntax2 )4 "
    push    word [bp-22]
    call    _AddIdent
    sub     sp, -2
    mov     [bp-12], ax
    push    ax
    push    16
    call    _PushSyntax2
    sub     sp, -4
; RPN'ized expression: "( 91 PushSyntax ) "
; Expanded expression: " 91  PushSyntax ()2 "
; Fused expression:    "( 91 , PushSyntax )2 "
    push    91
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "( len , 1 PushSyntax2 ) "
; Expanded expression: " (@-8) *(2)  1  PushSyntax2 ()4 "
; Fused expression:    "( *(2) (@-8) , 1 , PushSyntax2 )4 "
    push    word [bp-8]
    push    1
    call    _PushSyntax2
    sub     sp, -4
; RPN'ized expression: "( 93 PushSyntax ) "
; Expanded expression: " 93  PushSyntax ()2 "
; Fused expression:    "( 93 , PushSyntax )2 "
    push    93
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "( 18 PushSyntax ) "
; Expanded expression: " 18  PushSyntax ()2 "
; Fused expression:    "( 18 , PushSyntax )2 "
    push    18
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "( id , 16 push2 ) "
; Expanded expression: " (@-12) *(2)  16  push2 ()4 "
; Fused expression:    "( *(2) (@-12) , 16 , push2 )4 "
    push    word [bp-12]
    push    16
    call    _push2
    sub     sp, -4
; RPN'ized expression: "gotUnary *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
    sub     sp, -18
; }
    jmp     L2726
L2725:
; else
; if
; RPN'ized expression: "( 0 , tok TokenStartsDeclaration ) "
; Expanded expression: " 0  (@4) *(2)  TokenStartsDeclaration ()4 "
; Fused expression:    "( 0 , *(2) (@4) , TokenStartsDeclaration )4 "
    push    0
    push    word [bp+4]
    call    _TokenStartsDeclaration
    sub     sp, -4
; JumpIfZero
    test    ax, ax
    je      L2730
; {
; loc             synPtr : (@-6): int
    sub     sp, 2
; RPN'ized expression: "tok ( tok ParseDecl ) = "
; Expanded expression: "(@4)  (@4) *(2)  ParseDecl ()2 =(2) "
; Fused expression:    "( *(2) (@4) , ParseDecl )2 =(34) *(@4) ax "
    push    word [bp+4]
    call    _ParseDecl
    sub     sp, -2
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 41 != "
; Expanded expression: "(@4) *(2) 41 != "
; Fused expression:    "!= *(@4) 41 IF! "
    mov     ax, [bp+4]
    cmp     ax, 41
    je      L2732
; RPN'ized expression: "( ( tok GetTokenName ) , L2734 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L2734  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2734:
    db  "exprUnary(): ')' expected, unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L2734 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2734
    call    _error
    sub     sp, -4
L2732:
; RPN'ized expression: "synPtr ( L2736 FindSymbol ) = "
; Expanded expression: "(@-6)  L2736  FindSymbol ()2 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L2736:
    db  "<something>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2736 , FindSymbol )2 =(34) *(@-6) ax "
    push    L2736
    call    _FindSymbol
    sub     sp, -2
    mov     [bp-6], ax
; RPN'ized expression: "( SyntaxStack synPtr + *u 1 + *u , 16 push2 ) "
; Expanded expression: " SyntaxStack (@-6) *(2) 4 * + 2 + *(2)  16  push2 ()4 "
; Fused expression:    "( * *(@-6) 4 + SyntaxStack ax + ax 2 *(2) ax , 16 , push2 )4 "
    mov     ax, [bp-6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    16
    call    _push2
    sub     sp, -4
; RPN'ized expression: "decl gotUnary *u 1 = = "
; Expanded expression: "(@-2) (@6) *(2) 1 =(2) =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 =(34) *(@-2) ax "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
    mov     [bp-2], ax
    sub     sp, -2
; }
    jmp     L2731
L2730:
; else
; if
; RPN'ized expression: "tok 16 == "
; Expanded expression: "(@4) *(2) 16 == "
; Fused expression:    "== *(@4) 16 IF! "
    mov     ax, [bp+4]
    cmp     ax, 16
    jne     L2738
; {
; loc             synPtr : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "( ( GetTokenIdentName ) FindSymbol ) "
; Expanded expression: "  GetTokenIdentName ()0  FindSymbol ()2 "
; Fused expression:    "( ( GetTokenIdentName )0 , FindSymbol )2 =(34) *(@-6) ax "
    call    _GetTokenIdentName
    push    ax
    call    _FindSymbol
    sub     sp, -2
    mov     [bp-6], ax
; if
; RPN'ized expression: "synPtr 0 < "
; Expanded expression: "(@-6) *(2) 0 < "
; Fused expression:    "< *(@-6) 0 IF! "
    mov     ax, [bp-6]
    cmp     ax, 0
    jge     L2740
; RPN'ized expression: "( ( GetTokenIdentName ) , L2742 error ) "
; Expanded expression: "  GetTokenIdentName ()0  L2742  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2742:
    db  "exprUnary(): undefined identifier '%s'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( GetTokenIdentName )0 , L2742 , error )4 "
    call    _GetTokenIdentName
    push    ax
    push    L2742
    call    _error
    sub     sp, -4
L2740:
; RPN'ized expression: "( SyntaxStack synPtr + *u 1 + *u , tok push2 ) "
; Expanded expression: " SyntaxStack (@-6) *(2) 4 * + 2 + *(2)  (@4) *(2)  push2 ()4 "
; Fused expression:    "( * *(@-6) 4 + SyntaxStack ax + ax 2 *(2) ax , *(2) (@4) , push2 )4 "
    mov     ax, [bp-6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    word [bp+4]
    call    _push2
    sub     sp, -4
; RPN'ized expression: "gotUnary *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
    sub     sp, -2
; }
    jmp     L2739
L2738:
; else
; if
; RPN'ized expression: "tok 40 == "
; Expanded expression: "(@4) *(2) 40 == "
; Fused expression:    "== *(@4) 40 IF! "
    mov     ax, [bp+4]
    cmp     ax, 40
    jne     L2744
; {
; RPN'ized expression: "tok ( gotUnary , ( GetToken ) expr ) = "
; Expanded expression: "(@4)  (@6) *(2)   GetToken ()0  expr ()4 =(2) "
; Fused expression:    "( *(2) (@6) , ( GetToken )0 , expr )4 =(34) *(@4) ax "
    push    word [bp+6]
    call    _GetToken
    push    ax
    call    _expr
    sub     sp, -4
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 41 != "
; Expanded expression: "(@4) *(2) 41 != "
; Fused expression:    "!= *(@4) 41 IF! "
    mov     ax, [bp+4]
    cmp     ax, 41
    je      L2746
; RPN'ized expression: "( ( tok GetTokenName ) , L2748 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L2748  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2748:
    db  "exprUnary(): ')' expected, unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L2748 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2748
    call    _error
    sub     sp, -4
L2746:
; if
; RPN'ized expression: "gotUnary *u 0 == "
; Expanded expression: "(@6) *(2) *(2) 0 == "
; Fused expression:    "*(2) (@6) == *ax 0 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jne     L2750
; RPN'ized expression: "( L2752 error ) "
; Expanded expression: " L2752  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2752:
    db  "exprUnary(): primary expression expected in '()'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2752 , error )2 "
    push    L2752
    call    _error
    sub     sp, -2
L2750:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; }
L2744:
L2739:
L2731:
L2726:
L2723:
; while
; RPN'ized expression: "gotUnary *u decl 0 == && "
; Expanded expression: "(@6) *(2) *(2) _Bool [sh&&->2756] (@-2) *(2) 0 == _Bool &&[2756] "
L2754:
; Fused expression:    "*(2) (@6) *(2) ax _Bool [sh&&->2756] == *(@-2) 0 _Bool &&[2756] "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2756
    mov     ax, [bp-2]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2756:
; JumpIfZero
    test    ax, ax
    je      L2755
; {
; while
; RPN'ized expression: "tok 40 == tok 91 == || "
; Expanded expression: "(@4) *(2) 40 == _Bool [sh||->2759] (@4) *(2) 91 == _Bool ||[2759] "
L2757:
; Fused expression:    "== *(@4) 40 _Bool [sh||->2759] == *(@4) 91 _Bool ||[2759] "
    mov     ax, [bp+4]
    cmp     ax, 40
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2759
    mov     ax, [bp+4]
    cmp     ax, 91
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2759:
; JumpIfZero
    test    ax, ax
    je      L2758
; {
; loc                 brak : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "=(34) *(@-6) *(@4) "
    mov     ax, [bp+4]
    mov     [bp-6], ax
; if
; RPN'ized expression: "brak 40 == "
; Expanded expression: "(@-6) *(2) 40 == "
; Fused expression:    "== *(@-6) 40 IF! "
    mov     ax, [bp-6]
    cmp     ax, 40
    jne     L2760
; {
; loc                     acnt : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-8) 0 "
    mov     ax, 0
    mov     [bp-8], ax
; RPN'ized expression: "( 40 , inspos ins ) "
; Expanded expression: " 40  (@-4) *(2)  ins ()4 "
; Fused expression:    "( 40 , *(2) (@-4) , ins )4 "
    push    40
    push    word [bp-4]
    call    _ins
    sub     sp, -4
; for
L2762:
    jmp     L2764
L2763:
    jmp     L2762
L2764:
; {
; loc                         pos2 : (@-10): int
    sub     sp, 2
; =
; RPN'ized expression: "sp "
; Expanded expression: "sp *(2) "
; Fused expression:    "=(34) *(@-10) *sp "
    mov     ax, [_sp]
    mov     [bp-10], ax
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "tok ( gotUnary , tok expr ) = "
; Expanded expression: "(@4)  (@6) *(2)  (@4) *(2)  expr ()4 =(2) "
; Fused expression:    "( *(2) (@6) , *(2) (@4) , expr )4 =(34) *(@4) ax "
    push    word [bp+6]
    push    word [bp+4]
    call    _expr
    sub     sp, -4
    mov     [bp+4], ax
; while
; RPN'ized expression: "pos2 sp < "
; Expanded expression: "(@-10) *(2) sp *(2) < "
L2766:
; Fused expression:    "< *(@-10) *sp IF! "
    mov     ax, [bp-10]
    cmp     ax, [_sp]
    jge     L2767
; {
; loc                             v : (@-12): int
    sub     sp, 2
; loc                             v2 : (@-14): int
    sub     sp, 2
; RPN'ized expression: "v ( v2 &u pop2 ) = "
; Expanded expression: "(@-12)  (@-14)  pop2 ()2 =(2) "
; Fused expression:    "( (@-14) , pop2 )2 =(34) *(@-12) ax "
    lea     ax, [bp-14]
    push    ax
    call    _pop2
    sub     sp, -2
    mov     [bp-12], ax
; RPN'ized expression: "( v2 , v , inspos 1 + ins2 ) "
; Expanded expression: " (@-14) *(2)  (@-12) *(2)  (@-4) *(2) 1 +  ins2 ()6 "
; Fused expression:    "( *(2) (@-14) , *(2) (@-12) , + *(@-4) 1 , ins2 )6 "
    push    word [bp-14]
    push    word [bp-12]
    mov     ax, [bp-4]
    add     ax, 1
    push    ax
    call    _ins2
    sub     sp, -6
; RPN'ized expression: "pos2 ++p "
; Expanded expression: "(@-10) ++p(2) "
; Fused expression:    "++p(2) *(@-10) "
    mov     ax, [bp-10]
    inc     word [bp-10]
    sub     sp, -4
; }
    jmp     L2766
L2767:
; if
; RPN'ized expression: "tok 44 == "
; Expanded expression: "(@4) *(2) 44 == "
; Fused expression:    "== *(@4) 44 IF! "
    mov     ax, [bp+4]
    cmp     ax, 44
    jne     L2768
; {
; if
; RPN'ized expression: "gotUnary *u 0 == "
; Expanded expression: "(@6) *(2) *(2) 0 == "
; Fused expression:    "*(2) (@6) == *ax 0 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jne     L2770
; RPN'ized expression: "( L2772 error ) "
; Expanded expression: " L2772  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2772:
    db  "exprUnary(): primary expression (fxn argument) expected before ','",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2772 , error )2 "
    push    L2772
    call    _error
    sub     sp, -2
L2770:
; RPN'ized expression: "acnt ++p "
; Expanded expression: "(@-8) ++p(2) "
; Fused expression:    "++p(2) *(@-8) "
    mov     ax, [bp-8]
    inc     word [bp-8]
; RPN'ized expression: "( 44 , inspos 1 + ins ) "
; Expanded expression: " 44  (@-4) *(2) 1 +  ins ()4 "
; Fused expression:    "( 44 , + *(@-4) 1 , ins )4 "
    push    44
    mov     ax, [bp-4]
    add     ax, 1
    push    ax
    call    _ins
    sub     sp, -4
; continue
    sub     sp, -2
    jmp     L2763
; }
L2768:
; if
; RPN'ized expression: "tok 41 == "
; Expanded expression: "(@4) *(2) 41 == "
; Fused expression:    "== *(@4) 41 IF! "
    mov     ax, [bp+4]
    cmp     ax, 41
    jne     L2774
; {
; if
; RPN'ized expression: "acnt gotUnary *u 0 == && "
; Expanded expression: "(@-8) *(2) _Bool [sh&&->2778] (@6) *(2) *(2) 0 == _Bool &&[2778] "
; Fused expression:    "*(2) (@-8) _Bool [sh&&->2778] *(2) (@6) == *ax 0 _Bool &&[2778] "
    mov     ax, [bp-8]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2778
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2778:
; JumpIfZero
    test    ax, ax
    je      L2776
; RPN'ized expression: "( L2779 error ) "
; Expanded expression: " L2779  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2779:
    db  "exprUnary(): primary expression (fxn argument) expected between ',' and ')'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2779 , error )2 "
    push    L2779
    call    _error
    sub     sp, -2
L2776:
; RPN'ized expression: "gotUnary *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; break
    sub     sp, -2
    jmp     L2765
; }
L2774:
; RPN'ized expression: "( ( tok GetTokenName ) , L2781 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L2781  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2781:
    db  "exprUnary(): ',' or ')' expected, unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L2781 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2781
    call    _error
    sub     sp, -4
    sub     sp, -2
; }
    jmp     L2763
L2765:
    sub     sp, -2
; }
    jmp     L2761
L2760:
; else
; {
; for
L2783:
    jmp     L2785
L2784:
    jmp     L2783
L2785:
; {
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "tok ( gotUnary , tok expr ) = "
; Expanded expression: "(@4)  (@6) *(2)  (@4) *(2)  expr ()4 =(2) "
; Fused expression:    "( *(2) (@6) , *(2) (@4) , expr )4 =(34) *(@4) ax "
    push    word [bp+6]
    push    word [bp+4]
    call    _expr
    sub     sp, -4
    mov     [bp+4], ax
; if
; RPN'ized expression: "gotUnary *u 0 == "
; Expanded expression: "(@6) *(2) *(2) 0 == "
; Fused expression:    "*(2) (@6) == *ax 0 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jne     L2787
; RPN'ized expression: "( L2789 error ) "
; Expanded expression: " L2789  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2789:
    db  "exprUnary(): primary expression expected in '[]'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2789 , error )2 "
    push    L2789
    call    _error
    sub     sp, -2
L2787:
; if
; RPN'ized expression: "tok 93 == "
; Expanded expression: "(@4) *(2) 93 == "
; Fused expression:    "== *(@4) 93 IF! "
    mov     ax, [bp+4]
    cmp     ax, 93
    jne     L2791
; break
    jmp     L2786
L2791:
; RPN'ized expression: "( ( tok GetTokenName ) , L2793 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L2793  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2793:
    db  "exprUnary(): ']' expected, unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L2793 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2793
    call    _error
    sub     sp, -4
; }
    jmp     L2784
L2786:
; }
L2761:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "brak 40 == "
; Expanded expression: "(@-6) *(2) 40 == "
; Fused expression:    "== *(@-6) 40 IF! "
    mov     ax, [bp-6]
    cmp     ax, 40
    jne     L2795
; RPN'ized expression: "( 41 push ) "
; Expanded expression: " 41  push ()2 "
; Fused expression:    "( 41 , push )2 "
    push    41
    call    _push
    sub     sp, -2
    jmp     L2796
L2795:
; else
; {
; RPN'ized expression: "( 43 push ) "
; Expanded expression: " 43  push ()2 "
; Fused expression:    "( 43 , push )2 "
    push    43
    call    _push
    sub     sp, -2
; RPN'ized expression: "( 78 push ) "
; Expanded expression: " 78  push ()2 "
; Fused expression:    "( 78 , push )2 "
    push    78
    call    _push
    sub     sp, -2
; }
L2796:
    sub     sp, -2
; }
    jmp     L2757
L2758:
; if
; RPN'ized expression: "tok 12 == tok 13 == || "
; Expanded expression: "(@4) *(2) 12 == _Bool [sh||->2799] (@4) *(2) 13 == _Bool ||[2799] "
; Fused expression:    "== *(@4) 12 _Bool [sh||->2799] == *(@4) 13 _Bool ||[2799] "
    mov     ax, [bp+4]
    cmp     ax, 12
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2799
    mov     ax, [bp+4]
    cmp     ax, 13
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2799:
; JumpIfZero
    test    ax, ax
    je      L2797
; {
; if
; RPN'ized expression: "tok 12 == "
; Expanded expression: "(@4) *(2) 12 == "
; Fused expression:    "== *(@4) 12 IF! "
    mov     ax, [bp+4]
    cmp     ax, 12
    jne     L2800
; RPN'ized expression: "( 81 push ) "
; Expanded expression: " 81  push ()2 "
; Fused expression:    "( 81 , push )2 "
    push    81
    call    _push
    sub     sp, -2
    jmp     L2801
L2800:
; else
; RPN'ized expression: "( 82 push ) "
; Expanded expression: " 82  push ()2 "
; Fused expression:    "( 82 , push )2 "
    push    82
    call    _push
    sub     sp, -2
L2801:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; }
    jmp     L2798
L2797:
; else
; {
; break
    jmp     L2755
; }
L2798:
; }
    jmp     L2754
L2755:
    sub     sp, -2
; }
L2699:
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L2697
L2697:
    leave
    ret
; SEGMENT _TEXT
; glb expr : (
; prm     tok : int
; prm     gotUnary : * int
;     ) int
SEGMENT _TEXT
    global  _expr
_expr:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; loc     gotUnary : (@6): * int
; RPN'ized expression: "gotUnary *u 0 = "
; Expanded expression: "(@6) *(2) 0 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 0 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; RPN'ized expression: "( 0 pushop ) "
; Expanded expression: " 0  pushop ()2 "
; Fused expression:    "( 0 , pushop )2 "
    push    0
    call    _pushop
    sub     sp, -2
; RPN'ized expression: "tok ( gotUnary , tok exprUnary ) = "
; Expanded expression: "(@4)  (@6) *(2)  (@4) *(2)  exprUnary ()4 =(2) "
; Fused expression:    "( *(2) (@6) , *(2) (@4) , exprUnary )4 =(34) *(@4) ax "
    push    word [bp+6]
    push    word [bp+4]
    call    _exprUnary
    sub     sp, -4
    mov     [bp+4], ax
; while
; RPN'ized expression: "tok 0 != ( tok , L2805 strchr ) 0 == && gotUnary *u && "
; Expanded expression: "(@4) *(2) 0 != _Bool [sh&&->2808]  (@4) *(2)  L2805  strchr ()4 0 == _Bool &&[2808] _Bool [sh&&->2807] (@6) *(2) *(2) _Bool &&[2807] "
L2803:
; SEGMENT _TEXT
SEGMENT _DATA
L2805:
    db  ",;:)]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "!= *(@4) 0 _Bool [sh&&->2808] ( *(2) (@4) , L2805 , strchr )4 == ax 0 _Bool &&[2808] _Bool [sh&&->2807] *(2) (@6) *(2) ax _Bool &&[2807] "
    mov     ax, [bp+4]
    cmp     ax, 0
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2808
    push    word [bp+4]
    push    L2805
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2808:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2807
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
L2807:
; JumpIfZero
    test    ax, ax
    je      L2804
; {
; if
; RPN'ized expression: "( tok isop ) ( tok isunary ) 0 == && "
; Expanded expression: " (@4) *(2)  isop ()2 _Bool [sh&&->2811]  (@4) *(2)  isunary ()2 0 == _Bool &&[2811] "
; Fused expression:    "( *(2) (@4) , isop )2 _Bool [sh&&->2811] ( *(2) (@4) , isunary )2 == ax 0 _Bool &&[2811] "
    push    word [bp+4]
    call    _isop
    sub     sp, -2
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2811
    push    word [bp+4]
    call    _isunary
    sub     sp, -2
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2811:
; JumpIfZero
    test    ax, ax
    je      L2809
; {
; loc             lastTok : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "=(34) *(@-2) *(@4) "
    mov     ax, [bp+4]
    mov     [bp-2], ax
; while
; RPN'ized expression: "( tok , ( opstacktop ) precedGEQ ) "
; Expanded expression: " (@4) *(2)   opstacktop ()0  precedGEQ ()4 "
L2812:
; Fused expression:    "( *(2) (@4) , ( opstacktop )0 , precedGEQ )4 "
    push    word [bp+4]
    call    _opstacktop
    push    ax
    call    _precedGEQ
    sub     sp, -4
; JumpIfZero
    test    ax, ax
    je      L2813
; {
; loc                 v : (@-4): int
    sub     sp, 2
; loc                 v2 : (@-6): int
    sub     sp, 2
; RPN'ized expression: "v ( v2 &u popop2 ) = "
; Expanded expression: "(@-4)  (@-6)  popop2 ()2 =(2) "
; Fused expression:    "( (@-6) , popop2 )2 =(34) *(@-4) ax "
    lea     ax, [bp-6]
    push    ax
    call    _popop2
    sub     sp, -2
    mov     [bp-4], ax
; RPN'ized expression: "( v2 , v push2 ) "
; Expanded expression: " (@-6) *(2)  (@-4) *(2)  push2 ()4 "
; Fused expression:    "( *(2) (@-6) , *(2) (@-4) , push2 )4 "
    push    word [bp-6]
    push    word [bp-4]
    call    _push2
    sub     sp, -4
    sub     sp, -4
; }
    jmp     L2812
L2813:
; RPN'ized expression: "( tok pushop ) "
; Expanded expression: " (@4) *(2)  pushop ()2 "
; Fused expression:    "( *(2) (@4) , pushop )2 "
    push    word [bp+4]
    call    _pushop
    sub     sp, -2
; RPN'ized expression: "tok ( gotUnary , ( GetToken ) exprUnary ) = "
; Expanded expression: "(@4)  (@6) *(2)   GetToken ()0  exprUnary ()4 =(2) "
; Fused expression:    "( *(2) (@6) , ( GetToken )0 , exprUnary )4 =(34) *(@4) ax "
    push    word [bp+6]
    call    _GetToken
    push    ax
    call    _exprUnary
    sub     sp, -4
    mov     [bp+4], ax
; if
; RPN'ized expression: "gotUnary *u 0 == "
; Expanded expression: "(@6) *(2) *(2) 0 == "
; Fused expression:    "*(2) (@6) == *ax 0 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jne     L2814
; RPN'ized expression: "( ( lastTok GetTokenName ) , L2816 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L2816  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2816:
    db  "expr(): primary expression expected after token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L2816 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2816
    call    _error
    sub     sp, -4
L2814:
; continue
    sub     sp, -2
    jmp     L2803
    sub     sp, -2
; }
L2809:
; RPN'ized expression: "( ( tok GetTokenName ) , L2818 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L2818  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2818:
    db  "expr(): Unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L2818 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2818
    call    _error
    sub     sp, -4
; }
    jmp     L2803
L2804:
; while
; RPN'ized expression: "( opstacktop ) 0 != "
; Expanded expression: " opstacktop ()0 0 != "
L2820:
; Fused expression:    "( opstacktop )0 != ax 0 IF! "
    call    _opstacktop
    cmp     ax, 0
    je      L2821
; {
; loc         v : (@-2): int
    sub     sp, 2
; loc         v2 : (@-4): int
    sub     sp, 2
; RPN'ized expression: "v ( v2 &u popop2 ) = "
; Expanded expression: "(@-2)  (@-4)  popop2 ()2 =(2) "
; Fused expression:    "( (@-4) , popop2 )2 =(34) *(@-2) ax "
    lea     ax, [bp-4]
    push    ax
    call    _popop2
    sub     sp, -2
    mov     [bp-2], ax
; RPN'ized expression: "( v2 , v push2 ) "
; Expanded expression: " (@-4) *(2)  (@-2) *(2)  push2 ()4 "
; Fused expression:    "( *(2) (@-4) , *(2) (@-2) , push2 )4 "
    push    word [bp-4]
    push    word [bp-2]
    call    _push2
    sub     sp, -4
    sub     sp, -4
; }
    jmp     L2820
L2821:
; RPN'ized expression: "( popop ) "
; Expanded expression: " popop ()0 "
; Fused expression:    "( popop )0 "
    call    _popop
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L2802
L2802:
    leave
    ret
; SEGMENT _TEXT
; glb decayArray : (
; prm     ExprTypeSynPtr : * int
; prm     arithmetic : int
;     ) void
SEGMENT _TEXT
    global  _decayArray
_decayArray:
    push    bp
    mov     bp, sp
; loc     ExprTypeSynPtr : (@4): * int
; loc     arithmetic : (@6): int
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 >= SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 91 == && "
; Expanded expression: "(@4) *(2) *(2) 0 >= _Bool [sh&&->2825] SyntaxStack (@4) *(2) *(2) 4 * + 0 + *(2) 91 == _Bool &&[2825] "
; Fused expression:    "*(2) (@4) >= *ax 0 _Bool [sh&&->2825] *(2) (@4) * *ax 4 + SyntaxStack ax + ax 0 == *ax 91 _Bool &&[2825] "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2825
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 91
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2825:
; JumpIfZero
    test    ax, ax
    je      L2823
; {
; while
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 93 != "
; Expanded expression: "SyntaxStack (@4) *(2) *(2) 4 * + 0 + *(2) 93 != "
L2826:
; Fused expression:    "*(2) (@4) * *ax 4 + SyntaxStack ax + ax 0 != *ax 93 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 93
    je      L2827
; RPN'ized expression: "ExprTypeSynPtr *u ++ "
; Expanded expression: "(@4) *(2) ++(2) "
; Fused expression:    "*(2) (@4) ++(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
    jmp     L2826
L2827:
; RPN'ized expression: "ExprTypeSynPtr *u ++ "
; Expanded expression: "(@4) *(2) ++(2) "
; Fused expression:    "*(2) (@4) ++(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
; RPN'ized expression: "ExprTypeSynPtr *u ExprTypeSynPtr *u -u = "
; Expanded expression: "(@4) *(2) (@4) *(2) *(2) -u =(2) "
; Fused expression:    "*(2) (@4) push-ax *(2) (@4) *(2) ax -u =(34) **sp ax "
    mov     ax, [bp+4]
    push    ax
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    pop     bx
    mov     [bx], ax
; }
    jmp     L2824
L2823:
; else
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 >= SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 42 == && "
; Expanded expression: "(@4) *(2) *(2) 0 >= _Bool [sh&&->2830] SyntaxStack (@4) *(2) *(2) 4 * + 0 + *(2) 42 == _Bool &&[2830] "
; Fused expression:    "*(2) (@4) >= *ax 0 _Bool [sh&&->2830] *(2) (@4) * *ax 4 + SyntaxStack ax + ax 0 == *ax 42 _Bool &&[2830] "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2830
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 42
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2830:
; JumpIfZero
    test    ax, ax
    je      L2828
; {
; RPN'ized expression: "ExprTypeSynPtr *u ++ "
; Expanded expression: "(@4) *(2) ++(2) "
; Fused expression:    "*(2) (@4) ++(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
; RPN'ized expression: "ExprTypeSynPtr *u ExprTypeSynPtr *u -u = "
; Expanded expression: "(@4) *(2) (@4) *(2) *(2) -u =(2) "
; Fused expression:    "*(2) (@4) push-ax *(2) (@4) *(2) ax -u =(34) **sp ax "
    mov     ax, [bp+4]
    push    ax
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    pop     bx
    mov     [bx], ax
; }
L2828:
L2824:
; if
; RPN'ized expression: "arithmetic "
; Expanded expression: "(@6) *(2) "
; Fused expression:    "*(2) (@6) "
    mov     ax, [bp+6]
; JumpIfZero
    test    ax, ax
    je      L2831
; {
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 < "
; Expanded expression: "(@4) *(2) *(2) 0 < "
; Fused expression:    "*(2) (@4) < *ax 0 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jge     L2833
; {
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u -u + *u 0 + *u 17 == "
; Expanded expression: "SyntaxStack (@4) *(2) *(2) -u 4 * + 0 + *(2) 17 == "
; Fused expression:    "*(2) (@4) *(2) ax -u * ax 4 + SyntaxStack ax + ax 0 == *ax 17 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    jne     L2835
; RPN'ized expression: "( L2837 error ) "
; Expanded expression: " L2837  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2837:
    db  "Error: decayArray(): cannot do pointer arithmetic on a pointer to 'void'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2837 , error )2 "
    push    L2837
    call    _error
    sub     sp, -2
L2835:
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u -u + *u 0 + *u 40 == "
; Expanded expression: "SyntaxStack (@4) *(2) *(2) -u 4 * + 0 + *(2) 40 == "
; Fused expression:    "*(2) (@4) *(2) ax -u * ax 4 + SyntaxStack ax + ax 0 == *ax 40 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    jne     L2839
; RPN'ized expression: "( L2841 error ) "
; Expanded expression: " L2841  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2841:
    db  "Error: decayArray(): cannot do pointer arithmetic on a pointer to a function",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2841 , error )2 "
    push    L2841
    call    _error
    sub     sp, -2
L2839:
; }
    jmp     L2834
L2833:
; else
; {
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 40 == "
; Expanded expression: "SyntaxStack (@4) *(2) *(2) 4 * + 0 + *(2) 40 == "
; Fused expression:    "*(2) (@4) * *ax 4 + SyntaxStack ax + ax 0 == *ax 40 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    jne     L2843
; RPN'ized expression: "( L2845 error ) "
; Expanded expression: " L2845  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2845:
    db  "Error: decayArray(): cannot do arithmetic on a function",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2845 , error )2 "
    push    L2845
    call    _error
    sub     sp, -2
L2843:
; }
L2834:
; }
L2831:
L2822:
    leave
    ret
; SEGMENT _TEXT
; glb nonVoidTypeCheck : (
; prm     ExprTypeSynPtr : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _nonVoidTypeCheck
_nonVoidTypeCheck:
    push    bp
    mov     bp, sp
; loc     ExprTypeSynPtr : (@4): int
; loc     tok : (@6): int
; if
; RPN'ized expression: "ExprTypeSynPtr 0 >= SyntaxStack ExprTypeSynPtr + *u 0 + *u 17 == && "
; Expanded expression: "(@4) *(2) 0 >= _Bool [sh&&->2850] SyntaxStack (@4) *(2) 4 * + 0 + *(2) 17 == _Bool &&[2850] "
; Fused expression:    ">= *(@4) 0 _Bool [sh&&->2850] * *(@4) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[2850] "
    mov     ax, [bp+4]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2850
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2850:
; JumpIfZero
    test    ax, ax
    je      L2848
; RPN'ized expression: "( ( tok GetTokenName ) , L2851 error ) "
; Expanded expression: "  (@6) *(2)  GetTokenName ()2  L2851  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2851:
    db  "Error: nonVoidTypeCheck(): unexpected operand type 'void' for operator '%s'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@6) , GetTokenName )2 , L2851 , error )4 "
    push    word [bp+6]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2851
    call    _error
    sub     sp, -4
L2848:
L2847:
    leave
    ret
; SEGMENT _TEXT
; glb numericTypeCheck : (
; prm     ExprTypeSynPtr : int
; prm     tok : int
;     ) void
SEGMENT _TEXT
    global  _numericTypeCheck
_numericTypeCheck:
    push    bp
    mov     bp, sp
; loc     ExprTypeSynPtr : (@4): int
; loc     tok : (@6): int
; if
; RPN'ized expression: "ExprTypeSynPtr 0 >= SyntaxStack ExprTypeSynPtr + *u 0 + *u 18 == SyntaxStack ExprTypeSynPtr + *u 0 + *u 19 == || && "
; Expanded expression: "(@4) *(2) 0 >= _Bool [sh&&->2856] SyntaxStack (@4) *(2) 4 * + 0 + *(2) 18 == _Bool [sh||->2857] SyntaxStack (@4) *(2) 4 * + 0 + *(2) 19 == _Bool ||[2857] _Bool &&[2856] "
; Fused expression:    ">= *(@4) 0 _Bool [sh&&->2856] * *(@4) 4 + SyntaxStack ax + ax 0 == *ax 18 _Bool [sh||->2857] * *(@4) 4 + SyntaxStack ax + ax 0 == *ax 19 _Bool ||[2857] _Bool &&[2856] "
    mov     ax, [bp+4]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2856
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 18
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2857
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 19
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2857:
    test    ax, ax
    setne   al
    cbw
L2856:
; JumpIfZero
    test    ax, ax
    je      L2854
; return
    jmp     L2853
L2854:
; RPN'ized expression: "( ( tok GetTokenName ) , L2858 error ) "
; Expanded expression: "  (@6) *(2)  GetTokenName ()2  L2858  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L2858:
    db  "Error: numericTypeCheck(): unexpected operand type for operator '%s', numeric type expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@6) , GetTokenName )2 , L2858 , error )4 "
    push    word [bp+6]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L2858
    call    _error
    sub     sp, -4
L2853:
    leave
    ret
; SEGMENT _TEXT
; glb promoteType : (
; prm     ExprTypeSynPtr : * int
;     ) void
SEGMENT _TEXT
    global  _promoteType
_promoteType:
    push    bp
    mov     bp, sp
; loc     ExprTypeSynPtr : (@4): * int
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 >= SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 18 == && "
; Expanded expression: "(@4) *(2) *(2) 0 >= _Bool [sh&&->2863] SyntaxStack (@4) *(2) *(2) 4 * + 0 + *(2) 18 == _Bool &&[2863] "
; Fused expression:    "*(2) (@4) >= *ax 0 _Bool [sh&&->2863] *(2) (@4) * *ax 4 + SyntaxStack ax + ax 0 == *ax 18 _Bool &&[2863] "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2863
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 18
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2863:
; JumpIfZero
    test    ax, ax
    je      L2861
; RPN'ized expression: "ExprTypeSynPtr *u 1 = "
; Expanded expression: "(@4) *(2) 1 =(2) "
; Fused expression:    "*(2) (@4) =(34) *ax 1 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
L2861:
L2860:
    leave
    ret
; SEGMENT _TEXT
; glb GetFxnInfo : (
; prm     ExprTypeSynPtr : int
; prm     MinParams : * int
; prm     MaxParams : * int
; prm     ReturnExprTypeSynPtr : * int
;     ) int
SEGMENT _TEXT
    global  _GetFxnInfo
_GetFxnInfo:
    push    bp
    mov     bp, sp
; loc     ExprTypeSynPtr : (@4): int
; loc     MinParams : (@6): * int
; loc     MaxParams : (@8): * int
; loc     ReturnExprTypeSynPtr : (@10): * int
; loc     ptr : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
; RPN'ized expression: "MaxParams *u MinParams *u 0 = = "
; Expanded expression: "(@8) *(2) (@6) *(2) 0 =(2) =(2) "
; Fused expression:    "*(2) (@8) push-ax *(2) (@6) =(34) *ax 0 =(34) **sp ax "
    mov     ax, [bp+8]
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
    pop     bx
    mov     [bx], ax
; if
; RPN'ized expression: "ExprTypeSynPtr 0 < "
; Expanded expression: "(@4) *(2) 0 < "
; Fused expression:    "< *(@4) 0 IF! "
    mov     ax, [bp+4]
    cmp     ax, 0
    jge     L2865
; {
; RPN'ized expression: "ptr 1 = "
; Expanded expression: "(@-2) 1 =(2) "
; Fused expression:    "=(34) *(@-2) 1 "
    mov     ax, 1
    mov     [bp-2], ax
; RPN'ized expression: "ExprTypeSynPtr ExprTypeSynPtr -u = "
; Expanded expression: "(@4) (@4) *(2) -u =(2) "
; Fused expression:    "*(2) (@4) -u =(34) *(@4) ax "
    mov     ax, [bp+4]
    neg     ax
    mov     [bp+4], ax
; }
L2865:
; while
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr + *u 0 + *u 16 == SyntaxStack ExprTypeSynPtr + *u 0 + *u 89 == || "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 0 + *(2) 16 == _Bool [sh||->2869] SyntaxStack (@4) *(2) 4 * + 0 + *(2) 89 == _Bool ||[2869] "
L2867:
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 == *ax 16 _Bool [sh||->2869] * *(@4) 4 + SyntaxStack ax + ax 0 == *ax 89 _Bool ||[2869] "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2869
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 89
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2869:
; JumpIfZero
    test    ax, ax
    je      L2868
; RPN'ized expression: "ExprTypeSynPtr ++p "
; Expanded expression: "(@4) ++p(2) "
; Fused expression:    "++p(2) *(@4) "
    mov     ax, [bp+4]
    inc     word [bp+4]
    jmp     L2867
L2868:
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr + *u 0 + *u 40 == ptr 0 == SyntaxStack ExprTypeSynPtr + *u 0 + *u 42 == && SyntaxStack ExprTypeSynPtr 1 + + *u 0 + *u 40 == && || 0 == "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 0 + *(2) 40 == _Bool [sh||->2872] (@-2) *(2) 0 == _Bool [sh&&->2874] SyntaxStack (@4) *(2) 4 * + 0 + *(2) 42 == _Bool &&[2874] _Bool [sh&&->2873] SyntaxStack (@4) *(2) 1 + 4 * + 0 + *(2) 40 == _Bool &&[2873] _Bool ||[2872] 0 == "
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 == *ax 40 _Bool [sh||->2872] == *(@-2) 0 _Bool [sh&&->2874] * *(@4) 4 + SyntaxStack ax + ax 0 == *ax 42 _Bool &&[2874] _Bool [sh&&->2873] + *(@4) 1 * ax 4 + SyntaxStack ax + ax 0 == *ax 40 _Bool &&[2873] _Bool ||[2872] == ax 0 IF! "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2872
    mov     ax, [bp-2]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2874
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 42
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2874:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2873
    mov     ax, [bp+4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2873:
    test    ax, ax
    setne   al
    cbw
L2872:
    cmp     ax, 0
    jne     L2870
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L2864
L2870:
; while
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr + *u 0 + *u 40 != "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 0 + *(2) 40 != "
L2875:
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 != *ax 40 IF! "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    je      L2876
; RPN'ized expression: "ExprTypeSynPtr ++p "
; Expanded expression: "(@4) ++p(2) "
; Fused expression:    "++p(2) *(@4) "
    mov     ax, [bp+4]
    inc     word [bp+4]
    jmp     L2875
L2876:
; RPN'ized expression: "ExprTypeSynPtr ++p "
; Expanded expression: "(@4) ++p(2) "
; Fused expression:    "++p(2) *(@4) "
    mov     ax, [bp+4]
    inc     word [bp+4]
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr + *u 0 + *u 41 == "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 0 + *(2) 41 == "
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 == *ax 41 IF! "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 41
    jne     L2877
; {
; RPN'ized expression: "MaxParams *u 32767 = "
; Expanded expression: "(@8) *(2) 32767 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 32767 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 32767
    mov     [bx], ax
; RPN'ized expression: "ReturnExprTypeSynPtr *u ExprTypeSynPtr 1 + = "
; Expanded expression: "(@10) *(2) (@4) *(2) 1 + =(2) "
; Fused expression:    "*(2) (@10) push-ax + *(@4) 1 =(34) **sp ax "
    mov     ax, [bp+10]
    push    ax
    mov     ax, [bp+4]
    add     ax, 1
    pop     bx
    mov     [bx], ax
; return
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1 "
    mov     ax, 1
    jmp     L2864
; }
L2877:
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr 1 + + *u 0 + *u 17 == "
; Expanded expression: "SyntaxStack (@4) *(2) 1 + 4 * + 0 + *(2) 17 == "
; Fused expression:    "+ *(@4) 1 * ax 4 + SyntaxStack ax + ax 0 == *ax 17 IF! "
    mov     ax, [bp+4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    jne     L2879
; {
; RPN'ized expression: "ReturnExprTypeSynPtr *u ExprTypeSynPtr 3 + = "
; Expanded expression: "(@10) *(2) (@4) *(2) 3 + =(2) "
; Fused expression:    "*(2) (@10) push-ax + *(@4) 3 =(34) **sp ax "
    mov     ax, [bp+10]
    push    ax
    mov     ax, [bp+4]
    add     ax, 3
    pop     bx
    mov     [bx], ax
; return
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1 "
    mov     ax, 1
    jmp     L2864
; }
L2879:
; for
L2881:
    jmp     L2883
L2882:
    jmp     L2881
L2883:
; {
; loc         tok : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr + *u 0 + *u "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 =(34) *(@-4) *ax "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-4], ax
; if
; RPN'ized expression: "tok 16 == "
; Expanded expression: "(@-4) *(2) 16 == "
; Fused expression:    "== *(@-4) 16 IF! "
    mov     ax, [bp-4]
    cmp     ax, 16
    jne     L2885
; {
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr 1 + + *u 0 + *u 15 != "
; Expanded expression: "SyntaxStack (@4) *(2) 1 + 4 * + 0 + *(2) 15 != "
; Fused expression:    "+ *(@4) 1 * ax 4 + SyntaxStack ax + ax 0 != *ax 15 IF! "
    mov     ax, [bp+4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 15
    je      L2887
; {
; RPN'ized expression: "MinParams *u ++ "
; Expanded expression: "(@6) *(2) ++(2) "
; Fused expression:    "*(2) (@6) ++(2) *ax "
    mov     ax, [bp+6]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
; RPN'ized expression: "MaxParams *u ++ "
; Expanded expression: "(@8) *(2) ++(2) "
; Fused expression:    "*(2) (@8) ++(2) *ax "
    mov     ax, [bp+8]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
; }
    jmp     L2888
L2887:
; else
; {
; RPN'ized expression: "MaxParams *u 32767 = "
; Expanded expression: "(@8) *(2) 32767 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 32767 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 32767
    mov     [bx], ax
; }
L2888:
; }
    jmp     L2886
L2885:
; else
; if
; RPN'ized expression: "tok 40 == "
; Expanded expression: "(@-4) *(2) 40 == "
; Fused expression:    "== *(@-4) 40 IF! "
    mov     ax, [bp-4]
    cmp     ax, 40
    jne     L2889
; {
; loc             c : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "=(34) *(@-6) 1 "
    mov     ax, 1
    mov     [bp-6], ax
; while
; RPN'ized expression: "c ExprTypeSynPtr SyntaxStackCnt < && "
; Expanded expression: "(@-6) *(2) _Bool [sh&&->2893] (@4) *(2) SyntaxStackCnt *(2) < _Bool &&[2893] "
L2891:
; Fused expression:    "*(2) (@-6) _Bool [sh&&->2893] < *(@4) *SyntaxStackCnt _Bool &&[2893] "
    mov     ax, [bp-6]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2893
    mov     ax, [bp+4]
    cmp     ax, [_SyntaxStackCnt]
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2893:
; JumpIfZero
    test    ax, ax
    je      L2892
; {
; RPN'ized expression: "tok SyntaxStack ExprTypeSynPtr ++ + *u 0 + *u = "
; Expanded expression: "(@-4) SyntaxStack (@4) ++(2) 4 * + 0 + *(2) =(2) "
; Fused expression:    "++(2) *(@4) * ax 4 + SyntaxStack ax + ax 0 =(34) *(@-4) *ax "
    inc     word [bp+4]
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-4], ax
; RPN'ized expression: "c tok 40 == tok 41 == - += "
; Expanded expression: "(@-6) (@-4) *(2) 40 == (@-4) *(2) 41 == - +=(2) "
; Fused expression:    "== *(@-4) 40 push-ax == *(@-4) 41 - *sp ax +=(34) *(@-6) ax "
    mov     ax, [bp-4]
    cmp     ax, 40
    sete    al
    cbw
    push    ax
    mov     ax, [bp-4]
    cmp     ax, 41
    sete    al
    cbw
    mov     cx, ax
    pop     ax
    sub     ax, cx
    mov     cx, ax
    mov     ax, [bp-6]
    add     ax, cx
    mov     [bp-6], ax
; }
    jmp     L2891
L2892:
    sub     sp, -2
; }
    jmp     L2890
L2889:
; else
; if
; RPN'ized expression: "tok 41 == "
; Expanded expression: "(@-4) *(2) 41 == "
; Fused expression:    "== *(@-4) 41 IF! "
    mov     ax, [bp-4]
    cmp     ax, 41
    jne     L2894
; {
; RPN'ized expression: "ExprTypeSynPtr ++p "
; Expanded expression: "(@4) ++p(2) "
; Fused expression:    "++p(2) *(@4) "
    mov     ax, [bp+4]
    inc     word [bp+4]
; break
    sub     sp, -2
    jmp     L2884
; }
L2894:
L2890:
L2886:
; RPN'ized expression: "ExprTypeSynPtr ++p "
; Expanded expression: "(@4) ++p(2) "
; Fused expression:    "++p(2) *(@4) "
    mov     ax, [bp+4]
    inc     word [bp+4]
    sub     sp, -2
; }
    jmp     L2882
L2884:
; RPN'ized expression: "ReturnExprTypeSynPtr *u ExprTypeSynPtr = "
; Expanded expression: "(@10) *(2) (@4) *(2) =(2) "
; Fused expression:    "*(2) (@10) =(34) *ax *(@4) "
    mov     ax, [bp+10]
    mov     bx, ax
    mov     ax, [bp+4]
    mov     [bx], ax
; return
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1 "
    mov     ax, 1
    jmp     L2864
L2864:
    leave
    ret
; SEGMENT _TEXT
; glb simplifyConstExpr : (
; prm     val : int
; prm     isConst : int
; prm     top : int
; prm     bottom : int
;     ) void
SEGMENT _TEXT
    global  _simplifyConstExpr
_simplifyConstExpr:
    push    bp
    mov     bp, sp
; loc     val : (@4): int
; loc     isConst : (@6): int
; loc     top : (@8): int
; loc     bottom : (@10): int
; if
; RPN'ized expression: "isConst 0 == stack top + *u 0 + *u 1 == || "
; Expanded expression: "(@6) *(2) 0 == _Bool [sh||->2899] stack (@8) *(2) 4 * + 0 + *(2) 1 == _Bool ||[2899] "
; Fused expression:    "== *(@6) 0 _Bool [sh||->2899] * *(@8) 4 + stack ax + ax 0 == *ax 1 _Bool ||[2899] "
    mov     ax, [bp+6]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2899
    mov     ax, [bp+8]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 1
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2899:
; JumpIfZero
    test    ax, ax
    je      L2897
; return
    jmp     L2896
L2897:
; RPN'ized expression: "stack top + *u 0 + *u 1 = "
; Expanded expression: "stack (@8) *(2) 4 * + 0 + 1 =(2) "
; Fused expression:    "* *(@8) 4 + stack ax + ax 0 =(34) *ax 1 "
    mov     ax, [bp+8]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "stack top + *u 1 + *u val = "
; Expanded expression: "stack (@8) *(2) 4 * + 2 + (@4) *(2) =(2) "
; Fused expression:    "* *(@8) 4 + stack ax + ax 2 =(34) *ax *(@4) "
    mov     ax, [bp+8]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp+4]
    mov     [bx], ax
; RPN'ized expression: "( top bottom - , bottom del ) "
; Expanded expression: " (@8) *(2) (@10) *(2) -  (@10) *(2)  del ()4 "
; Fused expression:    "( - *(@8) *(@10) , *(2) (@10) , del )4 "
    mov     ax, [bp+8]
    sub     ax, [bp+10]
    push    ax
    push    word [bp+10]
    call    _del
    sub     sp, -4
L2896:
    leave
    ret
; SEGMENT _TEXT
; glb exprval : (
; prm     idx : * int
; prm     ExprTypeSynPtr : * int
; prm     ConstExpr : * int
;     ) int
SEGMENT _TEXT
    global  _exprval
_exprval:
    push    bp
    mov     bp, sp
; loc     idx : (@4): * int
; loc     ExprTypeSynPtr : (@6): * int
; loc     ConstExpr : (@8): * int
; loc     tok : (@-2): int
    sub     sp, 2
; loc     s : (@-4): int
    sub     sp, 2
; loc     RightExprTypeSynPtr : (@-6): int
    sub     sp, 2
; loc     oldIdxRight : (@-8): int
    sub     sp, 2
; loc     oldSpRight : (@-10): int
    sub     sp, 2
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; loc     constExpr : (@-14): [2] int
    sub     sp, 4
; if
; RPN'ized expression: "idx *u 0 < "
; Expanded expression: "(@4) *(2) *(2) 0 < "
; Fused expression:    "*(2) (@4) < *ax 0 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jge     L2901
; RPN'ized expression: "( L2903 error ) "
; Expanded expression: " L2903  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2903:
    db  "exprval(): idx < 0",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2903 , error )2 "
    push    L2903
    call    _error
    sub     sp, -2
L2901:
; RPN'ized expression: "tok stack idx *u + *u 0 + *u = "
; Expanded expression: "(@-2) stack (@4) *(2) *(2) 4 * + 0 + *(2) =(2) "
; Fused expression:    "*(2) (@4) * *ax 4 + stack ax + ax 0 =(34) *(@-2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-2], ax
; RPN'ized expression: "s stack idx *u + *u 1 + *u = "
; Expanded expression: "(@-4) stack (@4) *(2) *(2) 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) * *ax 4 + stack ax + ax 2 =(34) *(@-4) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-4], ax
; RPN'ized expression: "idx *u -- "
; Expanded expression: "(@4) *(2) --(2) "
; Fused expression:    "*(2) (@4) --(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    dec     word [bx]
    mov     ax, [bx]
; RPN'ized expression: "oldIdxRight idx *u = "
; Expanded expression: "(@-8) (@4) *(2) *(2) =(2) "
; Fused expression:    "*(2) (@4) =(34) *(@-8) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-8], ax
; RPN'ized expression: "oldSpRight sp = "
; Expanded expression: "(@-10) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-10) *sp "
    mov     ax, [_sp]
    mov     [bp-10], ax
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L2907
; {
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L2908
L2907:
    cmp     ax, 1
    jne     L2909
L2908:
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L2910
L2909:
    cmp     ax, 2
    jne     L2911
L2910:
; RPN'ized expression: "ExprTypeSynPtr *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "ConstExpr *u 1 = "
; Expanded expression: "(@8) *(2) 1 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 1 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; break
    jmp     L2905
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L2912
L2911:
    cmp     ax, 16
    jne     L2913
L2912:
; {
; loc             synPtr : (@-16): int
    sub     sp, 2
; =
; RPN'ized expression: "( IdentTable s + FindSymbol ) "
; Expanded expression: " IdentTable (@-4) *(2) +  FindSymbol ()2 "
; Fused expression:    "( + IdentTable *(@-4) , FindSymbol )2 =(34) *(@-16) ax "
    mov     ax, _IdentTable
    add     ax, [bp-4]
    push    ax
    call    _FindSymbol
    sub     sp, -2
    mov     [bp-16], ax
; loc             type : (@-18): int
    sub     sp, 2
; =
; RPN'ized expression: "( synPtr SymType ) "
; Expanded expression: " (@-16) *(2)  SymType ()2 "
; Fused expression:    "( *(2) (@-16) , SymType )2 =(34) *(@-18) ax "
    push    word [bp-16]
    call    _SymType
    sub     sp, -2
    mov     [bp-18], ax
; if
; RPN'ized expression: "( L2917 , IdentTable SyntaxStack synPtr + *u 1 + *u + strcmp ) 0 == idx *u 2 + sp >= stack idx *u 2 + + *u 0 + *u 27 != || && "
; Expanded expression: " L2917  IdentTable SyntaxStack (@-16) *(2) 4 * + 2 + *(2) +  strcmp ()4 0 == _Bool [sh&&->2919] (@4) *(2) *(2) 2 + sp *(2) >= _Bool [sh||->2920] stack (@4) *(2) *(2) 2 + 4 * + 0 + *(2) 27 != _Bool ||[2920] _Bool &&[2919] "
; SEGMENT _TEXT
SEGMENT _DATA
L2917:
    db  "<something>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2917 , * *(@-16) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , strcmp )4 == ax 0 _Bool [sh&&->2919] *(2) (@4) + *ax 2 >= ax *sp _Bool [sh||->2920] *(2) (@4) + *ax 2 * ax 4 + stack ax + ax 0 != *ax 27 _Bool ||[2920] _Bool &&[2919] "
    push    L2917
    mov     ax, [bp-16]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2919
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 2
    cmp     ax, [_sp]
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2920
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 27
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L2920:
    test    ax, ax
    setne   al
    cbw
L2919:
; JumpIfZero
    test    ax, ax
    je      L2915
; RPN'ized expression: "( L2921 error ) "
; Expanded expression: " L2921  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2921:
    db  "Error: exprval(): unexpected type declaration",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2921 , error )2 "
    push    L2921
    call    _error
    sub     sp, -2
L2915:
; if
; RPN'ized expression: "type 4 == type 5 == || "
; Expanded expression: "(@-18) *(2) 4 == _Bool [sh||->2925] (@-18) *(2) 5 == _Bool ||[2925] "
; Fused expression:    "== *(@-18) 4 _Bool [sh||->2925] == *(@-18) 5 _Bool ||[2925] "
    mov     ax, [bp-18]
    cmp     ax, 4
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2925
    mov     ax, [bp-18]
    cmp     ax, 5
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2925:
; JumpIfZero
    test    ax, ax
    je      L2923
; {
; RPN'ized expression: "stack idx *u 1 + + *u 0 + *u 89 = "
; Expanded expression: "stack (@4) *(2) *(2) 1 + 4 * + 0 + 89 =(2) "
; Fused expression:    "*(2) (@4) + *ax 1 * ax 4 + stack ax + ax 0 =(34) *ax 89 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 89
    mov     [bx], ax
; RPN'ized expression: "stack idx *u 1 + + *u 1 + *u SyntaxStack synPtr 1 + + *u 1 + *u = "
; Expanded expression: "stack (@4) *(2) *(2) 1 + 4 * + 2 + SyntaxStack (@-16) *(2) 1 + 4 * + 2 + *(2) =(2) "
; Fused expression:    "*(2) (@4) + *ax 1 * ax 4 + stack ax + ax 2 push-ax + *(@-16) 1 * ax 4 + SyntaxStack ax + ax 2 =(34) **sp *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    push    ax
    mov     ax, [bp-16]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; }
L2923:
; if
; RPN'ized expression: "type 4 == type 2 == || "
; Expanded expression: "(@-18) *(2) 4 == _Bool [sh||->2928] (@-18) *(2) 2 == _Bool ||[2928] "
; Fused expression:    "== *(@-18) 4 _Bool [sh||->2928] == *(@-18) 2 _Bool ||[2928] "
    mov     ax, [bp-18]
    cmp     ax, 4
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2928
    mov     ax, [bp-18]
    cmp     ax, 2
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2928:
; JumpIfZero
    test    ax, ax
    je      L2926
; {
; RPN'ized expression: "( ( synPtr GetDeclSize ) , 78 , idx *u 2 + ins2 ) "
; Expanded expression: "  (@-16) *(2)  GetDeclSize ()2  78  (@4) *(2) *(2) 2 +  ins2 ()6 "
; Fused expression:    "( ( *(2) (@-16) , GetDeclSize )2 , 78 , *(2) (@4) + *ax 2 , ins2 )6 "
    push    word [bp-16]
    call    _GetDeclSize
    sub     sp, -2
    push    ax
    push    78
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 2
    push    ax
    call    _ins2
    sub     sp, -6
; }
L2926:
; while
; RPN'ized expression: "SyntaxStack synPtr + *u 0 + *u 16 == SyntaxStack synPtr + *u 0 + *u 89 == || "
; Expanded expression: "SyntaxStack (@-16) *(2) 4 * + 0 + *(2) 16 == _Bool [sh||->2931] SyntaxStack (@-16) *(2) 4 * + 0 + *(2) 89 == _Bool ||[2931] "
L2929:
; Fused expression:    "* *(@-16) 4 + SyntaxStack ax + ax 0 == *ax 16 _Bool [sh||->2931] * *(@-16) 4 + SyntaxStack ax + ax 0 == *ax 89 _Bool ||[2931] "
    mov     ax, [bp-16]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2931
    mov     ax, [bp-16]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 89
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2931:
; JumpIfZero
    test    ax, ax
    je      L2930
; RPN'ized expression: "synPtr ++p "
; Expanded expression: "(@-16) ++p(2) "
; Fused expression:    "++p(2) *(@-16) "
    mov     ax, [bp-16]
    inc     word [bp-16]
    jmp     L2929
L2930:
; RPN'ized expression: "ExprTypeSynPtr *u synPtr = "
; Expanded expression: "(@6) *(2) (@-16) *(2) =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax *(@-16) "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bp-16]
    mov     [bx], ax
    sub     sp, -4
; }
; RPN'ized expression: "ConstExpr *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; break
    jmp     L2905
; case
; RPN'ized expression: "27 "
; Expanded expression: "27 "
; Expression value: 27
    jmp     L2914
L2913:
    cmp     ax, 27
    jne     L2932
L2914:
; RPN'ized expression: "s ( ConstExpr , ExprTypeSynPtr , idx exprval ) = "
; Expanded expression: "(@-4)  (@8) *(2)  (@6) *(2)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , *(2) (@4) , exprval )6 =(34) *(@-4) ax "
    push    word [bp+8]
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-4], ax
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 >= "
; Expanded expression: "(@6) *(2) *(2) 0 >= "
; Fused expression:    "*(2) (@6) >= *ax 0 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jl      L2934
; RPN'ized expression: "s ( ExprTypeSynPtr *u GetDeclSize ) = "
; Expanded expression: "(@-4)  (@6) *(2) *(2)  GetDeclSize ()2 =(2) "
; Fused expression:    "( *(2) (@6) *(2) ax , GetDeclSize )2 =(34) *(@-4) ax "
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _GetDeclSize
    sub     sp, -2
    mov     [bp-4], ax
    jmp     L2935
L2934:
; else
; RPN'ized expression: "s SizeOfWord = "
; Expanded expression: "(@-4) SizeOfWord *(2) =(2) "
; Fused expression:    "=(34) *(@-4) *SizeOfWord "
    mov     ax, [_SizeOfWord]
    mov     [bp-4], ax
L2935:
; if
; RPN'ized expression: "s 0 <= "
; Expanded expression: "(@-4) *(2) 0 <= "
; Fused expression:    "<= *(@-4) 0 IF! "
    mov     ax, [bp-4]
    cmp     ax, 0
    jg      L2936
; RPN'ized expression: "( L2938 error ) "
; Expanded expression: " L2938  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2938:
    db  "Error: exprval(): sizeof of incomplete type (e.g. 'void')",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2938 , error )2 "
    push    L2938
    call    _error
    sub     sp, -2
L2936:
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 0 + *u 1 = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 0 + 1 =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 0 =(34) *ax 1 "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 1 + *u s = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 2 + (@-4) *(2) =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 2 =(34) *ax *(@-4) "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-4]
    mov     [bx], ax
; RPN'ized expression: "( oldIdxRight oldSpRight sp - - idx *u - , idx *u 1 + del ) "
; Expanded expression: " (@-8) *(2) (@-10) *(2) sp *(2) - - (@4) *(2) *(2) -  (@4) *(2) *(2) 1 +  del ()4 "
; Fused expression:    "( - *(@-10) *sp - *(@-8) ax push-ax *(2) (@4) - *sp *ax , *(2) (@4) + *ax 1 , del )4 "
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    push    ax
    mov     ax, [bp+4]
    mov     bx, ax
    mov     cx, [bx]
    pop     ax
    sub     ax, cx
    push    ax
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    call    _del
    sub     sp, -4
; RPN'ized expression: "ExprTypeSynPtr *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "ConstExpr *u 1 = "
; Expanded expression: "(@8) *(2) 1 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 1 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; break
    jmp     L2905
; case
; RPN'ized expression: "77 "
; Expanded expression: "77 "
; Expression value: 77
    jmp     L2933
L2932:
    cmp     ax, 77
    jne     L2940
L2933:
; RPN'ized expression: "( ConstExpr , ExprTypeSynPtr , idx exprval ) "
; Expanded expression: " (@8) *(2)  (@6) *(2)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , *(2) (@4) , exprval )6 "
    push    word [bp+8]
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 >= SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 91 == && "
; Expanded expression: "(@6) *(2) *(2) 0 >= _Bool [sh&&->2944] SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 91 == _Bool &&[2944] "
; Fused expression:    "*(2) (@6) >= *ax 0 _Bool [sh&&->2944] *(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 == *ax 91 _Bool &&[2944] "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2944
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 91
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2944:
; JumpIfZero
    test    ax, ax
    je      L2942
; {
; RPN'ized expression: "ExprTypeSynPtr *u ExprTypeSynPtr *u -u = "
; Expanded expression: "(@6) *(2) (@6) *(2) *(2) -u =(2) "
; Fused expression:    "*(2) (@6) push-ax *(2) (@6) *(2) ax -u =(34) **sp ax "
    mov     ax, [bp+6]
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "( 1 , oldIdxRight 1 + oldSpRight sp - - del ) "
; Expanded expression: " 1  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , del )4 "
    push    1
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
; }
    jmp     L2943
L2942:
; else
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 >= SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 40 == && "
; Expanded expression: "(@6) *(2) *(2) 0 >= _Bool [sh&&->2947] SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 40 == _Bool &&[2947] "
; Fused expression:    "*(2) (@6) >= *ax 0 _Bool [sh&&->2947] *(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 == *ax 40 _Bool &&[2947] "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2947
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2947:
; JumpIfZero
    test    ax, ax
    je      L2945
; {
; RPN'ized expression: "ExprTypeSynPtr *u ExprTypeSynPtr *u -u = "
; Expanded expression: "(@6) *(2) (@6) *(2) *(2) -u =(2) "
; Fused expression:    "*(2) (@6) push-ax *(2) (@6) *(2) ax -u =(34) **sp ax "
    mov     ax, [bp+6]
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "( 1 , oldIdxRight 1 + oldSpRight sp - - del ) "
; Expanded expression: " 1  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , del )4 "
    push    1
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
; }
    jmp     L2946
L2945:
; else
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 >= oldIdxRight oldSpRight sp - - 0 >= && stack oldIdxRight oldSpRight sp - - + *u 0 + *u 78 == && "
; Expanded expression: "(@6) *(2) *(2) 0 >= _Bool [sh&&->2951] (@-8) *(2) (@-10) *(2) sp *(2) - - 0 >= _Bool &&[2951] _Bool [sh&&->2950] stack (@-8) *(2) (@-10) *(2) sp *(2) - - 4 * + 0 + *(2) 78 == _Bool &&[2950] "
; Fused expression:    "*(2) (@6) >= *ax 0 _Bool [sh&&->2951] - *(@-10) *sp - *(@-8) ax >= ax 0 _Bool &&[2951] _Bool [sh&&->2950] - *(@-10) *sp - *(@-8) ax * ax 4 + stack ax + ax 0 == *ax 78 _Bool &&[2950] "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2951
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
L2951:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2950
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 78
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2950:
; JumpIfZero
    test    ax, ax
    je      L2948
; {
; RPN'ized expression: "ExprTypeSynPtr *u ExprTypeSynPtr *u -u = "
; Expanded expression: "(@6) *(2) (@6) *(2) *(2) -u =(2) "
; Fused expression:    "*(2) (@6) push-ax *(2) (@6) *(2) ax -u =(34) **sp ax "
    mov     ax, [bp+6]
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "( 2 , oldIdxRight oldSpRight sp - - del ) "
; Expanded expression: " 2  (@-8) *(2) (@-10) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 2 , - *(@-10) *sp - *(@-8) ax , del )4 "
    push    2
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
; }
    jmp     L2949
L2948:
; else
; RPN'ized expression: "( L2952 error ) "
; Expanded expression: " L2952  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2952:
    db  "Error: exprval(): lvalue expected after '&'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2952 , error )2 "
    push    L2952
    call    _error
    sub     sp, -2
L2949:
L2946:
L2943:
; RPN'ized expression: "ConstExpr *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; break
    jmp     L2905
; case
; RPN'ized expression: "78 "
; Expanded expression: "78 "
; Expression value: 78
    jmp     L2941
L2940:
    cmp     ax, 78
    jne     L2954
L2941:
; RPN'ized expression: "( ConstExpr , ExprTypeSynPtr , idx exprval ) "
; Expanded expression: " (@8) *(2)  (@6) *(2)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , *(2) (@4) , exprval )6 "
    push    word [bp+8]
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 < SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 42 == || "
; Expanded expression: "(@6) *(2) *(2) 0 < _Bool [sh||->2958] SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 42 == _Bool ||[2958] "
; Fused expression:    "*(2) (@6) < *ax 0 _Bool [sh||->2958] *(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 == *ax 42 _Bool ||[2958] "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L2958
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 42
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2958:
; JumpIfZero
    test    ax, ax
    je      L2956
; {
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 < "
; Expanded expression: "(@6) *(2) *(2) 0 < "
; Fused expression:    "*(2) (@6) < *ax 0 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jge     L2959
; RPN'ized expression: "ExprTypeSynPtr *u ExprTypeSynPtr *u -u = "
; Expanded expression: "(@6) *(2) (@6) *(2) *(2) -u =(2) "
; Fused expression:    "*(2) (@6) push-ax *(2) (@6) *(2) ax -u =(34) **sp ax "
    mov     ax, [bp+6]
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    pop     bx
    mov     [bx], ax
    jmp     L2960
L2959:
; else
; RPN'ized expression: "ExprTypeSynPtr *u ++ "
; Expanded expression: "(@6) *(2) ++(2) "
; Fused expression:    "*(2) (@6) ++(2) *ax "
    mov     ax, [bp+6]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
L2960:
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 17 == "
; Expanded expression: "SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 17 == "
; Fused expression:    "*(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 == *ax 17 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    jne     L2961
; RPN'ized expression: "( L2963 error ) "
; Expanded expression: " L2963  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2963:
    db  "Error: exprval(): cannot dereference a pointer to 'void'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2963 , error )2 "
    push    L2963
    call    _error
    sub     sp, -2
L2961:
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 91 == "
; Expanded expression: "SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 91 == "
; Fused expression:    "*(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 == *ax 91 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 91
    jne     L2965
; RPN'ized expression: "( 1 , oldIdxRight 1 + oldSpRight sp - - del ) "
; Expanded expression: " 1  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , del )4 "
    push    1
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
L2965:
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 40 == "
; Expanded expression: "SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 40 == "
; Fused expression:    "*(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 == *ax 40 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    jne     L2967
; RPN'ized expression: "( 1 , oldIdxRight 1 + oldSpRight sp - - del ) "
; Expanded expression: " 1  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , del )4 "
    push    1
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
    jmp     L2968
L2967:
; else
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 1 + *u ( ExprTypeSynPtr *u GetDeclSize ) = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 2 +  (@6) *(2) *(2)  GetDeclSize ()2 =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 2 push-ax ( *(2) (@6) *(2) ax , GetDeclSize )2 =(34) **sp ax "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _GetDeclSize
    sub     sp, -2
    pop     bx
    mov     [bx], ax
L2968:
; }
    jmp     L2957
L2956:
; else
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 91 == "
; Expanded expression: "SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 91 == "
; Fused expression:    "*(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 == *ax 91 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 91
    jne     L2969
; {
; while
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 93 != "
; Expanded expression: "SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 93 != "
L2971:
; Fused expression:    "*(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 != *ax 93 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 93
    je      L2972
; RPN'ized expression: "ExprTypeSynPtr *u ++ "
; Expanded expression: "(@6) *(2) ++(2) "
; Fused expression:    "*(2) (@6) ++(2) *ax "
    mov     ax, [bp+6]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
    jmp     L2971
L2972:
; RPN'ized expression: "ExprTypeSynPtr *u ++ "
; Expanded expression: "(@6) *(2) ++(2) "
; Fused expression:    "*(2) (@6) ++(2) *ax "
    mov     ax, [bp+6]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
; if
; RPN'ized expression: "SyntaxStack ExprTypeSynPtr *u + *u 0 + *u 91 == "
; Expanded expression: "SyntaxStack (@6) *(2) *(2) 4 * + 0 + *(2) 91 == "
; Fused expression:    "*(2) (@6) * *ax 4 + SyntaxStack ax + ax 0 == *ax 91 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 91
    jne     L2973
; RPN'ized expression: "( 1 , oldIdxRight 1 + oldSpRight sp - - del ) "
; Expanded expression: " 1  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , del )4 "
    push    1
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
    jmp     L2974
L2973:
; else
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 1 + *u ( ExprTypeSynPtr *u GetDeclSize ) = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 2 +  (@6) *(2) *(2)  GetDeclSize ()2 =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 2 push-ax ( *(2) (@6) *(2) ax , GetDeclSize )2 =(34) **sp ax "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _GetDeclSize
    sub     sp, -2
    pop     bx
    mov     [bx], ax
L2974:
; }
    jmp     L2970
L2969:
; else
; RPN'ized expression: "( L2975 error ) "
; Expanded expression: " L2975  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2975:
    db  "Error: exprval(): pointer/array expected before '*' or '[]'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2975 , error )2 "
    push    L2975
    call    _error
    sub     sp, -2
L2970:
L2957:
; RPN'ized expression: "ConstExpr *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; break
    jmp     L2905
; case
; RPN'ized expression: "43 "
; Expanded expression: "43 "
; Expression value: 43
    jmp     L2955
L2954:
    cmp     ax, 43
    jne     L2977
L2955:
; case
; RPN'ized expression: "45 "
; Expanded expression: "45 "
; Expression value: 45
    jmp     L2978
L2977:
    cmp     ax, 45
    jne     L2979
L2978:
; {
; loc             ptrmask : (@-16): int
    sub     sp, 2
; loc             oldIdxLeft : (@-18): int
    sub     sp, 2
; loc             oldSpLeft : (@-20): int
    sub     sp, 2
; loc             sl : (@-22): int
    sub     sp, 2
; loc             sr : (@-24): int
    sub     sp, 2
; loc             incSize : (@-26): int
    sub     sp, 2
; RPN'ized expression: "sr ( constExpr 1 + *u &u , RightExprTypeSynPtr &u , idx exprval ) = "
; Expanded expression: "(@-24)  (@-14) 2 +  (@-6)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( + (@-14) 2 , (@-6) , *(2) (@4) , exprval )6 =(34) *(@-24) ax "
    lea     ax, [bp-14]
    add     ax, 2
    push    ax
    lea     ax, [bp-6]
    push    ax
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-24], ax
; RPN'ized expression: "oldIdxLeft idx *u = "
; Expanded expression: "(@-18) (@4) *(2) *(2) =(2) "
; Fused expression:    "*(2) (@4) =(34) *(@-18) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-18], ax
; RPN'ized expression: "oldSpLeft sp = "
; Expanded expression: "(@-20) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-20) *sp "
    mov     ax, [_sp]
    mov     [bp-20], ax
; RPN'ized expression: "sl ( constExpr 0 + *u &u , ExprTypeSynPtr , idx exprval ) = "
; Expanded expression: "(@-22)  (@-14) 0 +  (@6) *(2)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( + (@-14) 0 , *(2) (@6) , *(2) (@4) , exprval )6 =(34) *(@-22) ax "
    lea     ax, [bp-14]
    add     ax, 0
    push    ax
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-22], ax
; RPN'ized expression: "s sl tok 43 == sr * + tok 45 == sr * - = "
; Expanded expression: "(@-4) (@-22) *(2) (@-2) *(2) 43 == (@-24) *(2) * + (@-2) *(2) 45 == (@-24) *(2) * - =(2) "
; Fused expression:    "== *(@-2) 43 * ax *(@-24) + *(@-22) ax push-ax == *(@-2) 45 * ax *(@-24) - *sp ax =(34) *(@-4) ax "
    mov     ax, [bp-2]
    cmp     ax, 43
    sete    al
    cbw
    mul     word [bp-24]
    mov     cx, ax
    mov     ax, [bp-22]
    add     ax, cx
    push    ax
    mov     ax, [bp-2]
    cmp     ax, 45
    sete    al
    cbw
    mul     word [bp-24]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    mov     [bp-4], ax
; RPN'ized expression: "( tok , RightExprTypeSynPtr nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@-6) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@-6) , nonVoidTypeCheck )4 "
    push    word [bp-2]
    push    word [bp-6]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( tok , ExprTypeSynPtr *u nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , nonVoidTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( 1 , RightExprTypeSynPtr &u decayArray ) "
; Expanded expression: " 1  (@-6)  decayArray ()4 "
; Fused expression:    "( 1 , (@-6) , decayArray )4 "
    push    1
    lea     ax, [bp-6]
    push    ax
    call    _decayArray
    sub     sp, -4
; RPN'ized expression: "( 1 , ExprTypeSynPtr decayArray ) "
; Expanded expression: " 1  (@6) *(2)  decayArray ()4 "
; Fused expression:    "( 1 , *(2) (@6) , decayArray )4 "
    push    1
    push    word [bp+6]
    call    _decayArray
    sub     sp, -4
; RPN'ized expression: "ptrmask RightExprTypeSynPtr 0 < ExprTypeSynPtr *u 0 < 2 * + = "
; Expanded expression: "(@-16) (@-6) *(2) 0 < (@6) *(2) *(2) 0 < 2 * + =(2) "
; Fused expression:    "< *(@-6) 0 push-ax *(2) (@6) < *ax 0 * ax 2 + *sp ax =(34) *(@-16) ax "
    mov     ax, [bp-6]
    cmp     ax, 0
    setl    al
    cbw
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setl    al
    cbw
    imul    ax, ax, 2
    mov     cx, ax
    pop     ax
    add     ax, cx
    mov     [bp-16], ax
; if
; RPN'ized expression: "ptrmask 1 == tok 43 == && "
; Expanded expression: "(@-16) *(2) 1 == _Bool [sh&&->2983] (@-2) *(2) 43 == _Bool &&[2983] "
; Fused expression:    "== *(@-16) 1 _Bool [sh&&->2983] == *(@-2) 43 _Bool &&[2983] "
    mov     ax, [bp-16]
    cmp     ax, 1
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2983
    mov     ax, [bp-2]
    cmp     ax, 43
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L2983:
; JumpIfZero
    test    ax, ax
    je      L2981
; {
; RPN'ized expression: "incSize ( RightExprTypeSynPtr -u GetDeclSize ) = "
; Expanded expression: "(@-26)  (@-6) *(2) -u  GetDeclSize ()2 =(2) "
; Fused expression:    "( *(2) (@-6) -u , GetDeclSize )2 =(34) *(@-26) ax "
    mov     ax, [bp-6]
    neg     ax
    push    ax
    call    _GetDeclSize
    sub     sp, -2
    mov     [bp-26], ax
; if
; RPN'ized expression: "constExpr 0 + *u "
; Expanded expression: "(@-14) 0 + *(2) "
; Fused expression:    "+ (@-14) 0 *(2) ax "
    lea     ax, [bp-14]
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
; JumpIfZero
    test    ax, ax
    je      L2984
; {
; RPN'ized expression: "stack oldIdxLeft oldSpLeft sp - - + *u 1 + *u incSize *= "
; Expanded expression: "stack (@-18) *(2) (@-20) *(2) sp *(2) - - 4 * + 2 + (@-26) *(2) *=(2) "
; Fused expression:    "- *(@-20) *sp - *(@-18) ax * ax 4 + stack ax + ax 2 *=(34) *ax *(@-26) "
    mov     ax, [bp-20]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-18]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mul     word [bp-26]
    mov     [bx], ax
; RPN'ized expression: "s sl incSize * sr + = "
; Expanded expression: "(@-4) (@-22) *(2) (@-26) *(2) * (@-24) *(2) + =(2) "
; Fused expression:    "* *(@-22) *(@-26) + ax *(@-24) =(34) *(@-4) ax "
    mov     ax, [bp-22]
    mul     word [bp-26]
    add     ax, [bp-24]
    mov     [bp-4], ax
; }
    jmp     L2985
L2984:
; else
; if
; RPN'ized expression: "incSize 1 != "
; Expanded expression: "(@-26) *(2) 1 != "
; Fused expression:    "!= *(@-26) 1 IF! "
    mov     ax, [bp-26]
    cmp     ax, 1
    je      L2986
; {
; RPN'ized expression: "( incSize , 1 , oldIdxLeft 1 + oldSpLeft sp - - ins2 ) "
; Expanded expression: " (@-26) *(2)  1  (@-18) *(2) 1 + (@-20) *(2) sp *(2) - -  ins2 ()6 "
; Fused expression:    "( *(2) (@-26) , 1 , + *(@-18) 1 push-ax - *(@-20) *sp - *sp ax , ins2 )6 "
    push    word [bp-26]
    push    1
    mov     ax, [bp-18]
    add     ax, 1
    push    ax
    mov     ax, [bp-20]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _ins2
    sub     sp, -6
; RPN'ized expression: "( 42 , oldIdxLeft 1 + oldSpLeft sp - - ins ) "
; Expanded expression: " 42  (@-18) *(2) 1 + (@-20) *(2) sp *(2) - -  ins ()4 "
; Fused expression:    "( 42 , + *(@-18) 1 push-ax - *(@-20) *sp - *sp ax , ins )4 "
    push    42
    mov     ax, [bp-18]
    add     ax, 1
    push    ax
    mov     ax, [bp-20]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _ins
    sub     sp, -4
; }
L2986:
L2985:
; RPN'ized expression: "ExprTypeSynPtr *u RightExprTypeSynPtr = "
; Expanded expression: "(@6) *(2) (@-6) *(2) =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax *(@-6) "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bp-6]
    mov     [bx], ax
; }
    jmp     L2982
L2981:
; else
; if
; RPN'ized expression: "ptrmask 2 == "
; Expanded expression: "(@-16) *(2) 2 == "
; Fused expression:    "== *(@-16) 2 IF! "
    mov     ax, [bp-16]
    cmp     ax, 2
    jne     L2988
; {
; RPN'ized expression: "incSize ( ExprTypeSynPtr *u -u GetDeclSize ) = "
; Expanded expression: "(@-26)  (@6) *(2) *(2) -u  GetDeclSize ()2 =(2) "
; Fused expression:    "( *(2) (@6) *(2) ax -u , GetDeclSize )2 =(34) *(@-26) ax "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    push    ax
    call    _GetDeclSize
    sub     sp, -2
    mov     [bp-26], ax
; if
; RPN'ized expression: "constExpr 1 + *u "
; Expanded expression: "(@-14) 2 + *(2) "
; Fused expression:    "+ (@-14) 2 *(2) ax "
    lea     ax, [bp-14]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
; JumpIfZero
    test    ax, ax
    je      L2990
; {
; RPN'ized expression: "stack oldIdxRight oldSpRight sp - - + *u 1 + *u incSize *= "
; Expanded expression: "stack (@-8) *(2) (@-10) *(2) sp *(2) - - 4 * + 2 + (@-26) *(2) *=(2) "
; Fused expression:    "- *(@-10) *sp - *(@-8) ax * ax 4 + stack ax + ax 2 *=(34) *ax *(@-26) "
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mul     word [bp-26]
    mov     [bx], ax
; RPN'ized expression: "s sl sr incSize * tok 43 == tok 45 == - * + = "
; Expanded expression: "(@-4) (@-22) *(2) (@-24) *(2) (@-26) *(2) * (@-2) *(2) 43 == (@-2) *(2) 45 == - * + =(2) "
; Fused expression:    "* *(@-24) *(@-26) push-ax == *(@-2) 43 push-ax == *(@-2) 45 - *sp ax * *sp ax + *(@-22) ax =(34) *(@-4) ax "
    mov     ax, [bp-24]
    mul     word [bp-26]
    push    ax
    mov     ax, [bp-2]
    cmp     ax, 43
    sete    al
    cbw
    push    ax
    mov     ax, [bp-2]
    cmp     ax, 45
    sete    al
    cbw
    mov     cx, ax
    pop     ax
    sub     ax, cx
    mov     cx, ax
    pop     ax
    mul     cx
    mov     cx, ax
    mov     ax, [bp-22]
    add     ax, cx
    mov     [bp-4], ax
; }
    jmp     L2991
L2990:
; else
; if
; RPN'ized expression: "incSize 1 != "
; Expanded expression: "(@-26) *(2) 1 != "
; Fused expression:    "!= *(@-26) 1 IF! "
    mov     ax, [bp-26]
    cmp     ax, 1
    je      L2992
; {
; RPN'ized expression: "( incSize , 1 , oldIdxRight 1 + oldSpRight sp - - ins2 ) "
; Expanded expression: " (@-26) *(2)  1  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  ins2 ()6 "
; Fused expression:    "( *(2) (@-26) , 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , ins2 )6 "
    push    word [bp-26]
    push    1
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _ins2
    sub     sp, -6
; RPN'ized expression: "( 42 , oldIdxRight 1 + oldSpRight sp - - ins ) "
; Expanded expression: " 42  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  ins ()4 "
; Fused expression:    "( 42 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , ins )4 "
    push    42
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _ins
    sub     sp, -4
; }
L2992:
L2991:
; }
    jmp     L2989
L2988:
; else
; if
; RPN'ized expression: "ptrmask "
; Expanded expression: "(@-16) *(2) "
; Fused expression:    "*(2) (@-16) "
    mov     ax, [bp-16]
; JumpIfZero
    test    ax, ax
    je      L2994
; RPN'ized expression: "( L2996 error ) "
; Expanded expression: " L2996  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L2996:
    db  "Error: exprval(): invalid/unsupported combination of operands for '+' or '-'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L2996 , error )2 "
    push    L2996
    call    _error
    sub     sp, -2
L2994:
L2989:
L2982:
; RPN'ized expression: "( ExprTypeSynPtr promoteType ) "
; Expanded expression: " (@6) *(2)  promoteType ()2 "
; Fused expression:    "( *(2) (@6) , promoteType )2 "
    push    word [bp+6]
    call    _promoteType
    sub     sp, -2
; RPN'ized expression: "ConstExpr *u constExpr 0 + *u constExpr 1 + *u && = "
; Expanded expression: "(@8) *(2) (@-14) 0 + *(2) _Bool [sh&&->2998] (@-14) 2 + *(2) _Bool &&[2998] =(2) "
; Fused expression:    "*(2) (@8) push-ax + (@-14) 0 *(2) ax _Bool [sh&&->2998] + (@-14) 2 *(2) ax _Bool &&[2998] =(34) **sp ax "
    mov     ax, [bp+8]
    push    ax
    lea     ax, [bp-14]
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L2998
    lea     ax, [bp-14]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
L2998:
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "( idx *u 1 + , oldIdxRight 1 + oldSpRight sp - - , ConstExpr *u , s simplifyConstExpr ) "
; Expanded expression: " (@4) *(2) *(2) 1 +  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  (@8) *(2) *(2)  (@-4) *(2)  simplifyConstExpr ()8 "
; Fused expression:    "( *(2) (@4) + *ax 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , *(2) (@8) *(2) ax , *(2) (@-4) , simplifyConstExpr )8 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    mov     ax, [bp+8]
    mov     bx, ax
    push    word [bx]
    push    word [bp-4]
    call    _simplifyConstExpr
    sub     sp, -8
    sub     sp, -12
; }
; break
    jmp     L2905
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L2980
L2979:
    cmp     ax, 12
    jne     L2999
L2980:
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L3000
L2999:
    cmp     ax, 13
    jne     L3001
L3000:
; case
; RPN'ized expression: "81 "
; Expanded expression: "81 "
; Expression value: 81
    jmp     L3002
L3001:
    cmp     ax, 81
    jne     L3003
L3002:
; case
; RPN'ized expression: "82 "
; Expanded expression: "82 "
; Expression value: 82
    jmp     L3004
L3003:
    cmp     ax, 82
    jne     L3005
L3004:
; {
; loc             incSize : (@-16): int
    sub     sp, 2
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "=(34) *(@-16) 1 "
    mov     ax, 1
    mov     [bp-16], ax
; loc             inc : (@-18): int
    sub     sp, 2
; =
; RPN'ized expression: "tok 12 == tok 81 == || "
; Expanded expression: "(@-2) *(2) 12 == _Bool [sh||->3007] (@-2) *(2) 81 == _Bool ||[3007] "
; Fused expression:    "== *(@-2) 12 _Bool [sh||->3007] == *(@-2) 81 _Bool ||[3007] =(34) *(@-18) ax "
    mov     ax, [bp-2]
    cmp     ax, 12
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3007
    mov     ax, [bp-2]
    cmp     ax, 81
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3007:
    mov     [bp-18], ax
; loc             post : (@-20): int
    sub     sp, 2
; =
; RPN'ized expression: "tok 81 == tok 82 == || "
; Expanded expression: "(@-2) *(2) 81 == _Bool [sh||->3008] (@-2) *(2) 82 == _Bool ||[3008] "
; Fused expression:    "== *(@-2) 81 _Bool [sh||->3008] == *(@-2) 82 _Bool ||[3008] =(34) *(@-20) ax "
    mov     ax, [bp-2]
    cmp     ax, 81
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3008
    mov     ax, [bp-2]
    cmp     ax, 82
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3008:
    mov     [bp-20], ax
; loc             opSize : (@-22): int
    sub     sp, 2
; RPN'ized expression: "( ConstExpr , ExprTypeSynPtr , idx exprval ) "
; Expanded expression: " (@8) *(2)  (@6) *(2)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , *(2) (@4) , exprval )6 "
    push    word [bp+8]
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; RPN'ized expression: "( tok , ExprTypeSynPtr *u nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , nonVoidTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( 1 , ExprTypeSynPtr decayArray ) "
; Expanded expression: " 1  (@6) *(2)  decayArray ()4 "
; Fused expression:    "( 1 , *(2) (@6) , decayArray )4 "
    push    1
    push    word [bp+6]
    call    _decayArray
    sub     sp, -4
; if
; RPN'ized expression: "oldIdxRight oldSpRight sp - - 0 >= stack oldIdxRight oldSpRight sp - - + *u 0 + *u 78 == && 0 == "
; Expanded expression: "(@-8) *(2) (@-10) *(2) sp *(2) - - 0 >= _Bool [sh&&->3011] stack (@-8) *(2) (@-10) *(2) sp *(2) - - 4 * + 0 + *(2) 78 == _Bool &&[3011] 0 == "
; Fused expression:    "- *(@-10) *sp - *(@-8) ax >= ax 0 _Bool [sh&&->3011] - *(@-10) *sp - *(@-8) ax * ax 4 + stack ax + ax 0 == *ax 78 _Bool &&[3011] == ax 0 IF! "
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3011
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 78
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3011:
    cmp     ax, 0
    jne     L3009
; RPN'ized expression: "( L3012 error ) "
; Expanded expression: " L3012  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3012:
    db  "Error: exprval(): lvalue expected for '++' or '--'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3012 , error )2 "
    push    L3012
    call    _error
    sub     sp, -2
L3009:
; RPN'ized expression: "opSize stack oldIdxRight oldSpRight sp - - + *u 1 + *u = "
; Expanded expression: "(@-22) stack (@-8) *(2) (@-10) *(2) sp *(2) - - 4 * + 2 + *(2) =(2) "
; Fused expression:    "- *(@-10) *sp - *(@-8) ax * ax 4 + stack ax + ax 2 =(34) *(@-22) *ax "
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-22], ax
; RPN'ized expression: "( 1 , oldIdxRight oldSpRight sp - - del ) "
; Expanded expression: " 1  (@-8) *(2) (@-10) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 1 , - *(@-10) *sp - *(@-8) ax , del )4 "
    push    1
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
; if
; RPN'ized expression: "ExprTypeSynPtr *u 0 < "
; Expanded expression: "(@6) *(2) *(2) 0 < "
; Fused expression:    "*(2) (@6) < *ax 0 IF! "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jge     L3014
; RPN'ized expression: "incSize ( ExprTypeSynPtr *u -u GetDeclSize ) = "
; Expanded expression: "(@-16)  (@6) *(2) *(2) -u  GetDeclSize ()2 =(2) "
; Fused expression:    "( *(2) (@6) *(2) ax -u , GetDeclSize )2 =(34) *(@-16) ax "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    push    ax
    call    _GetDeclSize
    sub     sp, -2
    mov     [bp-16], ax
L3014:
; if
; RPN'ized expression: "incSize 1 == "
; Expanded expression: "(@-16) *(2) 1 == "
; Fused expression:    "== *(@-16) 1 IF! "
    mov     ax, [bp-16]
    cmp     ax, 1
    jne     L3016
; {
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 1 + *u opSize = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 2 + (@-22) *(2) =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 2 =(34) *ax *(@-22) "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-22]
    mov     [bx], ax
; }
    jmp     L3017
L3016:
; else
; {
; if
; RPN'ized expression: "inc "
; Expanded expression: "(@-18) *(2) "
; Fused expression:    "*(2) (@-18) "
    mov     ax, [bp-18]
; JumpIfZero
    test    ax, ax
    je      L3018
; {
; if
; RPN'ized expression: "post "
; Expanded expression: "(@-20) *(2) "
; Fused expression:    "*(2) (@-20) "
    mov     ax, [bp-20]
; JumpIfZero
    test    ax, ax
    je      L3020
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 0 + *u 83 = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 0 + 83 =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 0 =(34) *ax 83 "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 83
    mov     [bx], ax
    jmp     L3021
L3020:
; else
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 0 + *u 68 = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 0 + 68 =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 0 =(34) *ax 68 "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 68
    mov     [bx], ax
L3021:
; }
    jmp     L3019
L3018:
; else
; {
; if
; RPN'ized expression: "post "
; Expanded expression: "(@-20) *(2) "
; Fused expression:    "*(2) (@-20) "
    mov     ax, [bp-20]
; JumpIfZero
    test    ax, ax
    je      L3022
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 0 + *u 84 = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 0 + 84 =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 0 =(34) *ax 84 "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 84
    mov     [bx], ax
    jmp     L3023
L3022:
; else
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 0 + *u 69 = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 0 + 69 =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 0 =(34) *ax 69 "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 69
    mov     [bx], ax
L3023:
; }
L3019:
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 1 + *u opSize = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 2 + (@-22) *(2) =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 2 =(34) *ax *(@-22) "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-22]
    mov     [bx], ax
; RPN'ized expression: "( incSize , 1 , oldIdxRight 1 + oldSpRight sp - - ins2 ) "
; Expanded expression: " (@-16) *(2)  1  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  ins2 ()6 "
; Fused expression:    "( *(2) (@-16) , 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , ins2 )6 "
    push    word [bp-16]
    push    1
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _ins2
    sub     sp, -6
; }
L3017:
; RPN'ized expression: "ConstExpr *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
    sub     sp, -8
; }
; break
    jmp     L2905
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L3006
L3005:
    cmp     ax, 61
    jne     L3024
L3006:
; {
; loc             oldIdxLeft : (@-16): int
    sub     sp, 2
; loc             oldSpLeft : (@-18): int
    sub     sp, 2
; loc             opSize : (@-20): int
    sub     sp, 2
; RPN'ized expression: "( ConstExpr , RightExprTypeSynPtr &u , idx exprval ) "
; Expanded expression: " (@8) *(2)  (@-6)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( *(2) (@8) , (@-6) , *(2) (@4) , exprval )6 "
    push    word [bp+8]
    lea     ax, [bp-6]
    push    ax
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; RPN'ized expression: "oldIdxLeft idx *u = "
; Expanded expression: "(@-16) (@4) *(2) *(2) =(2) "
; Fused expression:    "*(2) (@4) =(34) *(@-16) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-16], ax
; RPN'ized expression: "oldSpLeft sp = "
; Expanded expression: "(@-18) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-18) *sp "
    mov     ax, [_sp]
    mov     [bp-18], ax
; RPN'ized expression: "( ConstExpr , ExprTypeSynPtr , idx exprval ) "
; Expanded expression: " (@8) *(2)  (@6) *(2)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , *(2) (@4) , exprval )6 "
    push    word [bp+8]
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; RPN'ized expression: "( tok , RightExprTypeSynPtr nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@-6) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@-6) , nonVoidTypeCheck )4 "
    push    word [bp-2]
    push    word [bp-6]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( tok , ExprTypeSynPtr *u nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , nonVoidTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( 0 , RightExprTypeSynPtr &u decayArray ) "
; Expanded expression: " 0  (@-6)  decayArray ()4 "
; Fused expression:    "( 0 , (@-6) , decayArray )4 "
    push    0
    lea     ax, [bp-6]
    push    ax
    call    _decayArray
    sub     sp, -4
; RPN'ized expression: "( 0 , ExprTypeSynPtr decayArray ) "
; Expanded expression: " 0  (@6) *(2)  decayArray ()4 "
; Fused expression:    "( 0 , *(2) (@6) , decayArray )4 "
    push    0
    push    word [bp+6]
    call    _decayArray
    sub     sp, -4
; if
; RPN'ized expression: "oldIdxLeft oldSpLeft sp - - 0 >= stack oldIdxLeft oldSpLeft sp - - + *u 0 + *u 78 == && 0 == "
; Expanded expression: "(@-16) *(2) (@-18) *(2) sp *(2) - - 0 >= _Bool [sh&&->3028] stack (@-16) *(2) (@-18) *(2) sp *(2) - - 4 * + 0 + *(2) 78 == _Bool &&[3028] 0 == "
; Fused expression:    "- *(@-18) *sp - *(@-16) ax >= ax 0 _Bool [sh&&->3028] - *(@-18) *sp - *(@-16) ax * ax 4 + stack ax + ax 0 == *ax 78 _Bool &&[3028] == ax 0 IF! "
    mov     ax, [bp-18]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-16]
    sub     ax, cx
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3028
    mov     ax, [bp-18]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-16]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 78
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3028:
    cmp     ax, 0
    jne     L3026
; RPN'ized expression: "( L3029 error ) "
; Expanded expression: " L3029  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3029:
    db  "Error: exprval(): lvalue expected before '='",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3029 , error )2 "
    push    L3029
    call    _error
    sub     sp, -2
L3026:
; RPN'ized expression: "opSize stack oldIdxLeft oldSpLeft sp - - + *u 1 + *u = "
; Expanded expression: "(@-20) stack (@-16) *(2) (@-18) *(2) sp *(2) - - 4 * + 2 + *(2) =(2) "
; Fused expression:    "- *(@-18) *sp - *(@-16) ax * ax 4 + stack ax + ax 2 =(34) *(@-20) *ax "
    mov     ax, [bp-18]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-16]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-20], ax
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 1 + *u opSize = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 2 + (@-20) *(2) =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 2 =(34) *ax *(@-20) "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-20]
    mov     [bx], ax
; RPN'ized expression: "( 1 , oldIdxLeft oldSpLeft sp - - del ) "
; Expanded expression: " 1  (@-16) *(2) (@-18) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 1 , - *(@-18) *sp - *(@-16) ax , del )4 "
    push    1
    mov     ax, [bp-18]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-16]
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
; RPN'ized expression: "ConstExpr *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
    sub     sp, -6
; }
; break
    jmp     L2905
; case
; RPN'ized expression: "126 "
; Expanded expression: "126 "
; Expression value: 126
    jmp     L3025
L3024:
    cmp     ax, 126
    jne     L3031
L3025:
; case
; RPN'ized expression: "79 "
; Expanded expression: "79 "
; Expression value: 79
    jmp     L3032
L3031:
    cmp     ax, 79
    jne     L3033
L3032:
; case
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
    jmp     L3034
L3033:
    cmp     ax, 80
    jne     L3035
L3034:
; RPN'ized expression: "s ( ConstExpr , ExprTypeSynPtr , idx exprval ) = "
; Expanded expression: "(@-4)  (@8) *(2)  (@6) *(2)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , *(2) (@4) , exprval )6 =(34) *(@-4) ax "
    push    word [bp+8]
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-4], ax
; RPN'ized expression: "( tok , ExprTypeSynPtr *u nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , nonVoidTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( tok , ExprTypeSynPtr *u numericTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  numericTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , numericTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _numericTypeCheck
    sub     sp, -4
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L3039
; {
; case
; RPN'ized expression: "126 "
; Expanded expression: "126 "
; Expression value: 126
    jmp     L3040
L3039:
    cmp     ax, 126
    jne     L3041
L3040:
; RPN'ized expression: "s s ~ = "
; Expanded expression: "(@-4) (@-4) *(2) ~ =(2) "
; Fused expression:    "*(2) (@-4) ~ =(34) *(@-4) ax "
    mov     ax, [bp-4]
    not     ax
    mov     [bp-4], ax
; break
    jmp     L3037
; case
; RPN'ized expression: "79 "
; Expanded expression: "79 "
; Expression value: 79
    jmp     L3042
L3041:
    cmp     ax, 79
    jne     L3043
L3042:
; RPN'ized expression: "s s +u = "
; Expanded expression: "(@-4) (@-4) *(2) +u =(2) "
; Fused expression:    "=(34) *(@-4) *(@-4) "
    mov     ax, [bp-4]
    mov     [bp-4], ax
; break
    jmp     L3037
; case
; RPN'ized expression: "80 "
; Expanded expression: "80 "
; Expression value: 80
    jmp     L3044
L3043:
    cmp     ax, 80
    jne     L3045
L3044:
; RPN'ized expression: "s s -u = "
; Expanded expression: "(@-4) (@-4) *(2) -u =(2) "
; Fused expression:    "*(2) (@-4) -u =(34) *(@-4) ax "
    mov     ax, [bp-4]
    neg     ax
    mov     [bp-4], ax
; break
    jmp     L3037
; }
    jmp     L3037
L3045:
L3037:
; RPN'ized expression: "( ExprTypeSynPtr promoteType ) "
; Expanded expression: " (@6) *(2)  promoteType ()2 "
; Fused expression:    "( *(2) (@6) , promoteType )2 "
    push    word [bp+6]
    call    _promoteType
    sub     sp, -2
; RPN'ized expression: "( idx *u 1 + , oldIdxRight 1 + oldSpRight sp - - , ConstExpr *u , s simplifyConstExpr ) "
; Expanded expression: " (@4) *(2) *(2) 1 +  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  (@8) *(2) *(2)  (@-4) *(2)  simplifyConstExpr ()8 "
; Fused expression:    "( *(2) (@4) + *ax 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , *(2) (@8) *(2) ax , *(2) (@-4) , simplifyConstExpr )8 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    mov     ax, [bp+8]
    mov     bx, ax
    push    word [bx]
    push    word [bp-4]
    call    _simplifyConstExpr
    sub     sp, -8
; break
    jmp     L2905
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L3036
L3035:
    cmp     ax, 42
    jne     L3047
L3036:
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L3048
L3047:
    cmp     ax, 47
    jne     L3049
L3048:
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L3050
L3049:
    cmp     ax, 37
    jne     L3051
L3050:
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L3052
L3051:
    cmp     ax, 4
    jne     L3053
L3052:
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L3054
L3053:
    cmp     ax, 5
    jne     L3055
L3054:
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L3056
L3055:
    cmp     ax, 38
    jne     L3057
L3056:
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L3058
L3057:
    cmp     ax, 94
    jne     L3059
L3058:
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L3060
L3059:
    cmp     ax, 124
    jne     L3061
L3060:
; {
; loc             oldIdxLeft : (@-16): int
    sub     sp, 2
; loc             oldSpLeft : (@-18): int
    sub     sp, 2
; loc             sr : (@-20): int
    sub     sp, 2
; loc             sl : (@-22): int
    sub     sp, 2
; RPN'ized expression: "sr ( constExpr 1 + *u &u , RightExprTypeSynPtr &u , idx exprval ) = "
; Expanded expression: "(@-20)  (@-14) 2 +  (@-6)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( + (@-14) 2 , (@-6) , *(2) (@4) , exprval )6 =(34) *(@-20) ax "
    lea     ax, [bp-14]
    add     ax, 2
    push    ax
    lea     ax, [bp-6]
    push    ax
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-20], ax
; RPN'ized expression: "oldIdxLeft idx *u = "
; Expanded expression: "(@-16) (@4) *(2) *(2) =(2) "
; Fused expression:    "*(2) (@4) =(34) *(@-16) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-16], ax
; RPN'ized expression: "oldSpLeft sp = "
; Expanded expression: "(@-18) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-18) *sp "
    mov     ax, [_sp]
    mov     [bp-18], ax
; RPN'ized expression: "sl ( constExpr 0 + *u &u , ExprTypeSynPtr , idx exprval ) = "
; Expanded expression: "(@-22)  (@-14) 0 +  (@6) *(2)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( + (@-14) 0 , *(2) (@6) , *(2) (@4) , exprval )6 =(34) *(@-22) ax "
    lea     ax, [bp-14]
    add     ax, 0
    push    ax
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-22], ax
; RPN'ized expression: "( tok , RightExprTypeSynPtr nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@-6) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@-6) , nonVoidTypeCheck )4 "
    push    word [bp-2]
    push    word [bp-6]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( tok , ExprTypeSynPtr *u nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , nonVoidTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( tok , RightExprTypeSynPtr numericTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@-6) *(2)  numericTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@-6) , numericTypeCheck )4 "
    push    word [bp-2]
    push    word [bp-6]
    call    _numericTypeCheck
    sub     sp, -4
; RPN'ized expression: "( tok , ExprTypeSynPtr *u numericTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  numericTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , numericTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _numericTypeCheck
    sub     sp, -4
; RPN'ized expression: "ConstExpr *u constExpr 0 + *u constExpr 1 + *u && = "
; Expanded expression: "(@8) *(2) (@-14) 0 + *(2) _Bool [sh&&->3063] (@-14) 2 + *(2) _Bool &&[3063] =(2) "
; Fused expression:    "*(2) (@8) push-ax + (@-14) 0 *(2) ax _Bool [sh&&->3063] + (@-14) 2 *(2) ax _Bool &&[3063] =(34) **sp ax "
    mov     ax, [bp+8]
    push    ax
    lea     ax, [bp-14]
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3063
    lea     ax, [bp-14]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
L3063:
    pop     bx
    mov     [bx], ax
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L3066
; {
; case
; RPN'ized expression: "47 "
; Expanded expression: "47 "
; Expression value: 47
    jmp     L3067
L3066:
    cmp     ax, 47
    jne     L3068
L3067:
; if
; RPN'ized expression: "ConstExpr *u "
; Expanded expression: "(@8) *(2) *(2) "
; Fused expression:    "*(2) (@8) *(2) ax "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, [bx]
; JumpIfZero
    test    ax, ax
    je      L3070
; {
; if
; RPN'ized expression: "sr 0 == 32767 -u 32767 -u 1 - != sl 32767 -u 1 - == && sr 1 -u == && || "
; Expanded expression: "(@-20) *(2) 0 == _Bool [sh||->3074] 1 [sh&&->3076] (@-22) *(2) -32768 == _Bool &&[3076] _Bool [sh&&->3075] (@-20) *(2) -1 == _Bool &&[3075] _Bool ||[3074] "
; Fused expression:    "== *(@-20) 0 _Bool [sh||->3074] 1 [sh&&->3076] == *(@-22) -32768 _Bool &&[3076] _Bool [sh&&->3075] == *(@-20) -1 _Bool &&[3075] _Bool ||[3074] "
    mov     ax, [bp-20]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3074
    mov     ax, 1
; JumpIfZero
    test    ax, ax
    je      L3076
    mov     ax, [bp-22]
    cmp     ax, -32768
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3076:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3075
    mov     ax, [bp-20]
    cmp     ax, -1
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3075:
    test    ax, ax
    setne   al
    cbw
L3074:
; JumpIfZero
    test    ax, ax
    je      L3072
; RPN'ized expression: "( L3077 error ) "
; Expanded expression: " L3077  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3077:
    db  "Error: exprval(): division overflow",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3077 , error )2 "
    push    L3077
    call    _error
    sub     sp, -2
L3072:
; RPN'ized expression: "sl sr /= "
; Expanded expression: "(@-22) (@-20) *(2) /=(2) "
; Fused expression:    "/=(34) *(@-22) *(@-20) "
    mov     ax, [bp-22]
    cwd
    idiv    word [bp-20]
    mov     [bp-22], ax
; }
L3070:
; break
    jmp     L3064
; case
; RPN'ized expression: "37 "
; Expanded expression: "37 "
; Expression value: 37
    jmp     L3069
L3068:
    cmp     ax, 37
    jne     L3079
L3069:
; if
; RPN'ized expression: "ConstExpr *u "
; Expanded expression: "(@8) *(2) *(2) "
; Fused expression:    "*(2) (@8) *(2) ax "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, [bx]
; JumpIfZero
    test    ax, ax
    je      L3081
; {
; if
; RPN'ized expression: "sr 0 == 32767 -u 32767 -u 1 - != sl 32767 -u 1 - == && sr 1 -u == && || "
; Expanded expression: "(@-20) *(2) 0 == _Bool [sh||->3085] 1 [sh&&->3087] (@-22) *(2) -32768 == _Bool &&[3087] _Bool [sh&&->3086] (@-20) *(2) -1 == _Bool &&[3086] _Bool ||[3085] "
; Fused expression:    "== *(@-20) 0 _Bool [sh||->3085] 1 [sh&&->3087] == *(@-22) -32768 _Bool &&[3087] _Bool [sh&&->3086] == *(@-20) -1 _Bool &&[3086] _Bool ||[3085] "
    mov     ax, [bp-20]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3085
    mov     ax, 1
; JumpIfZero
    test    ax, ax
    je      L3087
    mov     ax, [bp-22]
    cmp     ax, -32768
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3087:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3086
    mov     ax, [bp-20]
    cmp     ax, -1
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3086:
    test    ax, ax
    setne   al
    cbw
L3085:
; JumpIfZero
    test    ax, ax
    je      L3083
; RPN'ized expression: "( L3088 error ) "
; Expanded expression: " L3088  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3088:
    db  "Error: exprval(): division overflow",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3088 , error )2 "
    push    L3088
    call    _error
    sub     sp, -2
L3083:
; RPN'ized expression: "sl sr %= "
; Expanded expression: "(@-22) (@-20) *(2) %=(2) "
; Fused expression:    "%=(34) *(@-22) *(@-20) "
    mov     ax, [bp-22]
    cwd
    idiv    word [bp-20]
    mov     ax, dx
    mov     [bp-22], ax
; }
L3081:
; break
    jmp     L3064
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L3080
L3079:
    cmp     ax, 42
    jne     L3090
L3080:
; RPN'ized expression: "sl sr *= "
; Expanded expression: "(@-22) (@-20) *(2) *=(2) "
; Fused expression:    "*=(34) *(@-22) *(@-20) "
    mov     ax, [bp-22]
    mul     word [bp-20]
    mov     [bp-22], ax
; break
    jmp     L3064
; case
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
    jmp     L3091
L3090:
    cmp     ax, 4
    jne     L3092
L3091:
; RPN'ized expression: "sl sr <<= "
; Expanded expression: "(@-22) (@-20) *(2) <<=(2) "
; Fused expression:    "<<=(34) *(@-22) *(@-20) "
    mov     ax, [bp-22]
    mov     cl, [bp-20]
    shl     ax, cl
    mov     [bp-22], ax
; break
    jmp     L3064
; case
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
    jmp     L3093
L3092:
    cmp     ax, 5
    jne     L3094
L3093:
; RPN'ized expression: "sl sr >>= "
; Expanded expression: "(@-22) (@-20) *(2) >>=(2) "
; Fused expression:    ">>=(34) *(@-22) *(@-20) "
    mov     ax, [bp-22]
    mov     cl, [bp-20]
    sar     ax, cl
    mov     [bp-22], ax
; break
    jmp     L3064
; case
; RPN'ized expression: "38 "
; Expanded expression: "38 "
; Expression value: 38
    jmp     L3095
L3094:
    cmp     ax, 38
    jne     L3096
L3095:
; RPN'ized expression: "sl sr &= "
; Expanded expression: "(@-22) (@-20) *(2) &=(2) "
; Fused expression:    "&=(34) *(@-22) *(@-20) "
    mov     ax, [bp-22]
    and     ax, [bp-20]
    mov     [bp-22], ax
; break
    jmp     L3064
; case
; RPN'ized expression: "94 "
; Expanded expression: "94 "
; Expression value: 94
    jmp     L3097
L3096:
    cmp     ax, 94
    jne     L3098
L3097:
; RPN'ized expression: "sl sr ^= "
; Expanded expression: "(@-22) (@-20) *(2) ^=(2) "
; Fused expression:    "^=(34) *(@-22) *(@-20) "
    mov     ax, [bp-22]
    xor     ax, [bp-20]
    mov     [bp-22], ax
; break
    jmp     L3064
; case
; RPN'ized expression: "124 "
; Expanded expression: "124 "
; Expression value: 124
    jmp     L3099
L3098:
    cmp     ax, 124
    jne     L3100
L3099:
; RPN'ized expression: "sl sr |= "
; Expanded expression: "(@-22) (@-20) *(2) |=(2) "
; Fused expression:    "|=(34) *(@-22) *(@-20) "
    mov     ax, [bp-22]
    or      ax, [bp-20]
    mov     [bp-22], ax
; break
    jmp     L3064
; }
    jmp     L3064
L3100:
L3064:
; RPN'ized expression: "s sl = "
; Expanded expression: "(@-4) (@-22) *(2) =(2) "
; Fused expression:    "=(34) *(@-4) *(@-22) "
    mov     ax, [bp-22]
    mov     [bp-4], ax
; RPN'ized expression: "( ExprTypeSynPtr promoteType ) "
; Expanded expression: " (@6) *(2)  promoteType ()2 "
; Fused expression:    "( *(2) (@6) , promoteType )2 "
    push    word [bp+6]
    call    _promoteType
    sub     sp, -2
; RPN'ized expression: "( idx *u 1 + , oldIdxRight 1 + oldSpRight sp - - , ConstExpr *u , s simplifyConstExpr ) "
; Expanded expression: " (@4) *(2) *(2) 1 +  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  (@8) *(2) *(2)  (@-4) *(2)  simplifyConstExpr ()8 "
; Fused expression:    "( *(2) (@4) + *ax 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , *(2) (@8) *(2) ax , *(2) (@-4) , simplifyConstExpr )8 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    mov     ax, [bp+8]
    mov     bx, ax
    push    word [bx]
    push    word [bp-4]
    call    _simplifyConstExpr
    sub     sp, -8
    sub     sp, -8
; }
; break
    jmp     L2905
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L3062
L3061:
    cmp     ax, 60
    jne     L3102
L3062:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L3103
L3102:
    cmp     ax, 62
    jne     L3104
L3103:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L3105
L3104:
    cmp     ax, 10
    jne     L3106
L3105:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L3107
L3106:
    cmp     ax, 11
    jne     L3108
L3107:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L3109
L3108:
    cmp     ax, 8
    jne     L3110
L3109:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L3111
L3110:
    cmp     ax, 9
    jne     L3112
L3111:
; {
; loc             ptrmask : (@-16): int
    sub     sp, 2
; loc             oldIdxLeft : (@-18): int
    sub     sp, 2
; loc             oldSpLeft : (@-20): int
    sub     sp, 2
; loc             sr : (@-22): int
    sub     sp, 2
; loc             sl : (@-24): int
    sub     sp, 2
; RPN'ized expression: "sr ( constExpr 1 + *u &u , RightExprTypeSynPtr &u , idx exprval ) = "
; Expanded expression: "(@-22)  (@-14) 2 +  (@-6)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( + (@-14) 2 , (@-6) , *(2) (@4) , exprval )6 =(34) *(@-22) ax "
    lea     ax, [bp-14]
    add     ax, 2
    push    ax
    lea     ax, [bp-6]
    push    ax
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-22], ax
; RPN'ized expression: "oldIdxLeft idx *u = "
; Expanded expression: "(@-18) (@4) *(2) *(2) =(2) "
; Fused expression:    "*(2) (@4) =(34) *(@-18) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-18], ax
; RPN'ized expression: "oldSpLeft sp = "
; Expanded expression: "(@-20) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-20) *sp "
    mov     ax, [_sp]
    mov     [bp-20], ax
; RPN'ized expression: "sl ( constExpr 0 + *u &u , ExprTypeSynPtr , idx exprval ) = "
; Expanded expression: "(@-24)  (@-14) 0 +  (@6) *(2)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( + (@-14) 0 , *(2) (@6) , *(2) (@4) , exprval )6 =(34) *(@-24) ax "
    lea     ax, [bp-14]
    add     ax, 0
    push    ax
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-24], ax
; RPN'ized expression: "( tok , RightExprTypeSynPtr nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@-6) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@-6) , nonVoidTypeCheck )4 "
    push    word [bp-2]
    push    word [bp-6]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( tok , ExprTypeSynPtr *u nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , nonVoidTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( 0 , RightExprTypeSynPtr &u decayArray ) "
; Expanded expression: " 0  (@-6)  decayArray ()4 "
; Fused expression:    "( 0 , (@-6) , decayArray )4 "
    push    0
    lea     ax, [bp-6]
    push    ax
    call    _decayArray
    sub     sp, -4
; RPN'ized expression: "( 0 , ExprTypeSynPtr decayArray ) "
; Expanded expression: " 0  (@6) *(2)  decayArray ()4 "
; Fused expression:    "( 0 , *(2) (@6) , decayArray )4 "
    push    0
    push    word [bp+6]
    call    _decayArray
    sub     sp, -4
; RPN'ized expression: "ptrmask RightExprTypeSynPtr 0 < ExprTypeSynPtr *u 0 < 2 * + = "
; Expanded expression: "(@-16) (@-6) *(2) 0 < (@6) *(2) *(2) 0 < 2 * + =(2) "
; Fused expression:    "< *(@-6) 0 push-ax *(2) (@6) < *ax 0 * ax 2 + *sp ax =(34) *(@-16) ax "
    mov     ax, [bp-6]
    cmp     ax, 0
    setl    al
    cbw
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setl    al
    cbw
    imul    ax, ax, 2
    mov     cx, ax
    pop     ax
    add     ax, cx
    mov     [bp-16], ax
; if
; RPN'ized expression: "ptrmask 1 >= ptrmask 2 <= && tok 8 != && tok 9 != && "
; Expanded expression: "(@-16) *(2) 1 >= _Bool [sh&&->3118] (@-16) *(2) 2 <= _Bool &&[3118] _Bool [sh&&->3117] (@-2) *(2) 8 != _Bool &&[3117] _Bool [sh&&->3116] (@-2) *(2) 9 != _Bool &&[3116] "
; Fused expression:    ">= *(@-16) 1 _Bool [sh&&->3118] <= *(@-16) 2 _Bool &&[3118] _Bool [sh&&->3117] != *(@-2) 8 _Bool &&[3117] _Bool [sh&&->3116] != *(@-2) 9 _Bool &&[3116] "
    mov     ax, [bp-16]
    cmp     ax, 1
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3118
    mov     ax, [bp-16]
    cmp     ax, 2
    setle   al
    cbw
    test    ax, ax
    setne   al
    cbw
L3118:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3117
    mov     ax, [bp-2]
    cmp     ax, 8
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L3117:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3116
    mov     ax, [bp-2]
    cmp     ax, 9
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L3116:
; JumpIfZero
    test    ax, ax
    je      L3114
; RPN'ized expression: "( L3119 error ) "
; Expanded expression: " L3119  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3119:
    db  "Error: exprval(): invalid/unsupported combination of compared operands",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3119 , error )2 "
    push    L3119
    call    _error
    sub     sp, -2
L3114:
; if
; RPN'ized expression: "ptrmask "
; Expanded expression: "(@-16) *(2) "
; Fused expression:    "*(2) (@-16) "
    mov     ax, [bp-16]
; JumpIfZero
    test    ax, ax
    je      L3121
; {
; loc                 t : (@-26): int
    sub     sp, 2
; =
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "=(34) *(@-26) *(@-2) "
    mov     ax, [bp-2]
    mov     [bp-26], ax
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L3125
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L3126
L3125:
    cmp     ax, 60
    jne     L3127
L3126:
; RPN'ized expression: "t 85 = "
; Expanded expression: "(@-26) 85 =(2) "
; Fused expression:    "=(34) *(@-26) 85 "
    mov     ax, 85
    mov     [bp-26], ax
; break
    jmp     L3123
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L3128
L3127:
    cmp     ax, 62
    jne     L3129
L3128:
; RPN'ized expression: "t 86 = "
; Expanded expression: "(@-26) 86 =(2) "
; Fused expression:    "=(34) *(@-26) 86 "
    mov     ax, 86
    mov     [bp-26], ax
; break
    jmp     L3123
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L3130
L3129:
    cmp     ax, 10
    jne     L3131
L3130:
; RPN'ized expression: "t 87 = "
; Expanded expression: "(@-26) 87 =(2) "
; Fused expression:    "=(34) *(@-26) 87 "
    mov     ax, 87
    mov     [bp-26], ax
; break
    jmp     L3123
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L3132
L3131:
    cmp     ax, 11
    jne     L3133
L3132:
; RPN'ized expression: "t 88 = "
; Expanded expression: "(@-26) 88 =(2) "
; Fused expression:    "=(34) *(@-26) 88 "
    mov     ax, 88
    mov     [bp-26], ax
; break
    jmp     L3123
; }
    jmp     L3123
L3133:
L3123:
; if
; RPN'ized expression: "t tok != "
; Expanded expression: "(@-26) *(2) (@-2) *(2) != "
; Fused expression:    "!= *(@-26) *(@-2) IF! "
    mov     ax, [bp-26]
    cmp     ax, [bp-2]
    je      L3135
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 0 + *u t = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 0 + (@-26) *(2) =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 0 =(34) *ax *(@-26) "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp-26]
    mov     [bx], ax
L3135:
    sub     sp, -2
; }
L3121:
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L3139
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L3140
L3139:
    cmp     ax, 60
    jne     L3141
L3140:
; RPN'ized expression: "sl sl sr < = "
; Expanded expression: "(@-24) (@-24) *(2) (@-22) *(2) < =(2) "
; Fused expression:    "< *(@-24) *(@-22) =(34) *(@-24) ax "
    mov     ax, [bp-24]
    cmp     ax, [bp-22]
    setl    al
    cbw
    mov     [bp-24], ax
; break
    jmp     L3137
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L3142
L3141:
    cmp     ax, 62
    jne     L3143
L3142:
; RPN'ized expression: "sl sl sr > = "
; Expanded expression: "(@-24) (@-24) *(2) (@-22) *(2) > =(2) "
; Fused expression:    "> *(@-24) *(@-22) =(34) *(@-24) ax "
    mov     ax, [bp-24]
    cmp     ax, [bp-22]
    setg    al
    cbw
    mov     [bp-24], ax
; break
    jmp     L3137
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L3144
L3143:
    cmp     ax, 10
    jne     L3145
L3144:
; RPN'ized expression: "sl sl sr <= = "
; Expanded expression: "(@-24) (@-24) *(2) (@-22) *(2) <= =(2) "
; Fused expression:    "<= *(@-24) *(@-22) =(34) *(@-24) ax "
    mov     ax, [bp-24]
    cmp     ax, [bp-22]
    setle   al
    cbw
    mov     [bp-24], ax
; break
    jmp     L3137
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L3146
L3145:
    cmp     ax, 11
    jne     L3147
L3146:
; RPN'ized expression: "sl sl sr >= = "
; Expanded expression: "(@-24) (@-24) *(2) (@-22) *(2) >= =(2) "
; Fused expression:    ">= *(@-24) *(@-22) =(34) *(@-24) ax "
    mov     ax, [bp-24]
    cmp     ax, [bp-22]
    setge   al
    cbw
    mov     [bp-24], ax
; break
    jmp     L3137
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L3148
L3147:
    cmp     ax, 8
    jne     L3149
L3148:
; RPN'ized expression: "sl sl sr == = "
; Expanded expression: "(@-24) (@-24) *(2) (@-22) *(2) == =(2) "
; Fused expression:    "== *(@-24) *(@-22) =(34) *(@-24) ax "
    mov     ax, [bp-24]
    cmp     ax, [bp-22]
    sete    al
    cbw
    mov     [bp-24], ax
; break
    jmp     L3137
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L3150
L3149:
    cmp     ax, 9
    jne     L3151
L3150:
; RPN'ized expression: "sl sl sr != = "
; Expanded expression: "(@-24) (@-24) *(2) (@-22) *(2) != =(2) "
; Fused expression:    "!= *(@-24) *(@-22) =(34) *(@-24) ax "
    mov     ax, [bp-24]
    cmp     ax, [bp-22]
    setne   al
    cbw
    mov     [bp-24], ax
; break
    jmp     L3137
; }
    jmp     L3137
L3151:
L3137:
; RPN'ized expression: "s sl = "
; Expanded expression: "(@-4) (@-24) *(2) =(2) "
; Fused expression:    "=(34) *(@-4) *(@-24) "
    mov     ax, [bp-24]
    mov     [bp-4], ax
; RPN'ized expression: "ExprTypeSynPtr *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "ConstExpr *u constExpr 0 + *u constExpr 1 + *u && = "
; Expanded expression: "(@8) *(2) (@-14) 0 + *(2) _Bool [sh&&->3153] (@-14) 2 + *(2) _Bool &&[3153] =(2) "
; Fused expression:    "*(2) (@8) push-ax + (@-14) 0 *(2) ax _Bool [sh&&->3153] + (@-14) 2 *(2) ax _Bool &&[3153] =(34) **sp ax "
    mov     ax, [bp+8]
    push    ax
    lea     ax, [bp-14]
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3153
    lea     ax, [bp-14]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
L3153:
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "( idx *u 1 + , oldIdxRight 1 + oldSpRight sp - - , ConstExpr *u , s simplifyConstExpr ) "
; Expanded expression: " (@4) *(2) *(2) 1 +  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  (@8) *(2) *(2)  (@-4) *(2)  simplifyConstExpr ()8 "
; Fused expression:    "( *(2) (@4) + *ax 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , *(2) (@8) *(2) ax , *(2) (@-4) , simplifyConstExpr )8 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    mov     ax, [bp+8]
    mov     bx, ax
    push    word [bx]
    push    word [bp-4]
    call    _simplifyConstExpr
    sub     sp, -8
    sub     sp, -10
; }
; break
    jmp     L2905
; case
; RPN'ized expression: "120 "
; Expanded expression: "120 "
; Expression value: 120
    jmp     L3113
L3112:
    cmp     ax, 120
    jne     L3154
L3113:
; RPN'ized expression: "s ( ConstExpr , ExprTypeSynPtr , idx exprval ) 0 != = "
; Expanded expression: "(@-4)  (@8) *(2)  (@6) *(2)  (@4) *(2)  exprval ()6 0 != =(2) "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , *(2) (@4) , exprval )6 != ax 0 =(34) *(@-4) ax "
    push    word [bp+8]
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    cmp     ax, 0
    setne   al
    cbw
    mov     [bp-4], ax
; RPN'ized expression: "( tok , ExprTypeSynPtr *u nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , nonVoidTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( 0 , ExprTypeSynPtr decayArray ) "
; Expanded expression: " 0  (@6) *(2)  decayArray ()4 "
; Fused expression:    "( 0 , *(2) (@6) , decayArray )4 "
    push    0
    push    word [bp+6]
    call    _decayArray
    sub     sp, -4
; RPN'ized expression: "ExprTypeSynPtr *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "( idx *u 1 + , oldIdxRight 1 + oldSpRight sp - - , ConstExpr *u , s simplifyConstExpr ) "
; Expanded expression: " (@4) *(2) *(2) 1 +  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  (@8) *(2) *(2)  (@-4) *(2)  simplifyConstExpr ()8 "
; Fused expression:    "( *(2) (@4) + *ax 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , *(2) (@8) *(2) ax , *(2) (@-4) , simplifyConstExpr )8 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    mov     ax, [bp+8]
    mov     bx, ax
    push    word [bx]
    push    word [bp-4]
    call    _simplifyConstExpr
    sub     sp, -8
; break
    jmp     L2905
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L3155
L3154:
    cmp     ax, 6
    jne     L3156
L3155:
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L3157
L3156:
    cmp     ax, 7
    jne     L3158
L3157:
; {
; loc             sr : (@-16): int
    sub     sp, 2
; loc             sl : (@-18): int
    sub     sp, 2
; loc             sc : (@-20): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-20) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-20], ax
; RPN'ized expression: "stack idx *u 1 + + *u 1 + *u sc = "
; Expanded expression: "stack (@4) *(2) *(2) 1 + 4 * + 2 + (@-20) *(2) =(2) "
; Fused expression:    "*(2) (@4) + *ax 1 * ax 4 + stack ax + ax 2 =(34) *ax *(@-20) "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-20]
    mov     [bx], ax
; RPN'ized expression: "( 120 , idx *u ++ ins ) "
; Expanded expression: " 120  (@4) *(2) ++(2)  ins ()4 "
; Fused expression:    "( 120 , *(2) (@4) ++(2) *ax , ins )4 "
    push    120
    mov     ax, [bp+4]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
    push    ax
    call    _ins
    sub     sp, -4
; RPN'ized expression: "sr ( constExpr 1 + *u &u , RightExprTypeSynPtr &u , idx exprval ) = "
; Expanded expression: "(@-16)  (@-14) 2 +  (@-6)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( + (@-14) 2 , (@-6) , *(2) (@4) , exprval )6 =(34) *(@-16) ax "
    lea     ax, [bp-14]
    add     ax, 2
    push    ax
    lea     ax, [bp-6]
    push    ax
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-16], ax
; if
; RPN'ized expression: "tok 6 == "
; Expanded expression: "(@-2) *(2) 6 == "
; Fused expression:    "== *(@-2) 6 IF! "
    mov     ax, [bp-2]
    cmp     ax, 6
    jne     L3160
; RPN'ized expression: "( sc , 90 , idx *u ++ ins2 ) "
; Expanded expression: " (@-20) *(2)  90  (@4) *(2) ++(2)  ins2 ()6 "
; Fused expression:    "( *(2) (@-20) , 90 , *(2) (@4) ++(2) *ax , ins2 )6 "
    push    word [bp-20]
    push    90
    mov     ax, [bp+4]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
    push    ax
    call    _ins2
    sub     sp, -6
    jmp     L3161
L3160:
; else
; RPN'ized expression: "( sc -u , 90 , idx *u ++ ins2 ) "
; Expanded expression: " (@-20) *(2) -u  90  (@4) *(2) ++(2)  ins2 ()6 "
; Fused expression:    "( *(2) (@-20) -u , 90 , *(2) (@4) ++(2) *ax , ins2 )6 "
    mov     ax, [bp-20]
    neg     ax
    push    ax
    push    90
    mov     ax, [bp+4]
    mov     bx, ax
    inc     word [bx]
    mov     ax, [bx]
    push    ax
    call    _ins2
    sub     sp, -6
L3161:
; RPN'ized expression: "( 120 , idx *u ins ) "
; Expanded expression: " 120  (@4) *(2) *(2)  ins ()4 "
; Fused expression:    "( 120 , *(2) (@4) *(2) ax , ins )4 "
    push    120
    mov     ax, [bp+4]
    mov     bx, ax
    push    word [bx]
    call    _ins
    sub     sp, -4
; RPN'ized expression: "sl ( constExpr 0 + *u &u , ExprTypeSynPtr , idx exprval ) = "
; Expanded expression: "(@-18)  (@-14) 0 +  (@6) *(2)  (@4) *(2)  exprval ()6 =(2) "
; Fused expression:    "( + (@-14) 0 , *(2) (@6) , *(2) (@4) , exprval )6 =(34) *(@-18) ax "
    lea     ax, [bp-14]
    add     ax, 0
    push    ax
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
    mov     [bp-18], ax
; if
; RPN'ized expression: "tok 6 == "
; Expanded expression: "(@-2) *(2) 6 == "
; Fused expression:    "== *(@-2) 6 IF! "
    mov     ax, [bp-2]
    cmp     ax, 6
    jne     L3162
; RPN'ized expression: "sl sl sr && = "
; Expanded expression: "(@-18) (@-18) *(2) _Bool [sh&&->3164] (@-16) *(2) _Bool &&[3164] =(2) "
; Fused expression:    "*(2) (@-18) _Bool [sh&&->3164] *(2) (@-16) _Bool &&[3164] =(34) *(@-18) ax "
    mov     ax, [bp-18]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3164
    mov     ax, [bp-16]
    test    ax, ax
    setne   al
    cbw
L3164:
    mov     [bp-18], ax
    jmp     L3163
L3162:
; else
; RPN'ized expression: "sl sl sr || = "
; Expanded expression: "(@-18) (@-18) *(2) _Bool [sh||->3165] (@-16) *(2) _Bool ||[3165] =(2) "
; Fused expression:    "*(2) (@-18) _Bool [sh||->3165] *(2) (@-16) _Bool ||[3165] =(34) *(@-18) ax "
    mov     ax, [bp-18]
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3165
    mov     ax, [bp-16]
    test    ax, ax
    setne   al
    cbw
L3165:
    mov     [bp-18], ax
L3163:
; RPN'ized expression: "s sl = "
; Expanded expression: "(@-4) (@-18) *(2) =(2) "
; Fused expression:    "=(34) *(@-4) *(@-18) "
    mov     ax, [bp-18]
    mov     [bp-4], ax
; RPN'ized expression: "ExprTypeSynPtr *u 1 = "
; Expanded expression: "(@6) *(2) 1 =(2) "
; Fused expression:    "*(2) (@6) =(34) *ax 1 "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, 1
    mov     [bx], ax
; RPN'ized expression: "ConstExpr *u constExpr 0 + *u constExpr 1 + *u && = "
; Expanded expression: "(@8) *(2) (@-14) 0 + *(2) _Bool [sh&&->3166] (@-14) 2 + *(2) _Bool &&[3166] =(2) "
; Fused expression:    "*(2) (@8) push-ax + (@-14) 0 *(2) ax _Bool [sh&&->3166] + (@-14) 2 *(2) ax _Bool &&[3166] =(34) **sp ax "
    mov     ax, [bp+8]
    push    ax
    lea     ax, [bp-14]
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3166
    lea     ax, [bp-14]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    test    ax, ax
    setne   al
    cbw
L3166:
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "( idx *u 1 + , oldIdxRight 1 + oldSpRight sp - - , ConstExpr *u , s simplifyConstExpr ) "
; Expanded expression: " (@4) *(2) *(2) 1 +  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  (@8) *(2) *(2)  (@-4) *(2)  simplifyConstExpr ()8 "
; Fused expression:    "( *(2) (@4) + *ax 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , *(2) (@8) *(2) ax , *(2) (@-4) , simplifyConstExpr )8 "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    mov     ax, [bp+8]
    mov     bx, ax
    push    word [bx]
    push    word [bp-4]
    call    _simplifyConstExpr
    sub     sp, -8
    sub     sp, -6
; }
; break
    jmp     L2905
; case
; RPN'ized expression: "41 "
; Expanded expression: "41 "
; Expression value: 41
    jmp     L3159
L3158:
    cmp     ax, 41
    jne     L3167
L3159:
; {
; loc             tmpSynPtr : (@-16): int
    sub     sp, 2
; loc             c : (@-18): int
    sub     sp, 2
; loc             minParams : (@-20): int
    sub     sp, 2
; loc             maxParams : (@-22): int
    sub     sp, 2
; RPN'ized expression: "( ConstExpr , ExprTypeSynPtr , idx exprval ) "
; Expanded expression: " (@8) *(2)  (@6) *(2)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( *(2) (@8) , *(2) (@6) , *(2) (@4) , exprval )6 "
    push    word [bp+8]
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; if
; RPN'ized expression: "( ExprTypeSynPtr , maxParams &u , minParams &u , ExprTypeSynPtr *u GetFxnInfo ) 0 == "
; Expanded expression: " (@6) *(2)  (@-22)  (@-20)  (@6) *(2) *(2)  GetFxnInfo ()8 0 == "
; Fused expression:    "( *(2) (@6) , (@-22) , (@-20) , *(2) (@6) *(2) ax , GetFxnInfo )8 == ax 0 IF! "
    push    word [bp+6]
    lea     ax, [bp-22]
    push    ax
    lea     ax, [bp-20]
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _GetFxnInfo
    sub     sp, -8
    cmp     ax, 0
    jne     L3169
; RPN'ized expression: "( L3171 error ) "
; Expanded expression: " L3171  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3171:
    db  "exprval(): function or function pointer expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3171 , error )2 "
    push    L3171
    call    _error
    sub     sp, -2
L3169:
; RPN'ized expression: "c 0 = "
; Expanded expression: "(@-18) 0 =(2) "
; Fused expression:    "=(34) *(@-18) 0 "
    mov     ax, 0
    mov     [bp-18], ax
; while
; RPN'ized expression: "stack idx *u + *u 0 + *u 40 != "
; Expanded expression: "stack (@4) *(2) *(2) 4 * + 0 + *(2) 40 != "
L3173:
; Fused expression:    "*(2) (@4) * *ax 4 + stack ax + ax 0 != *ax 40 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    je      L3174
; {
; if
; RPN'ized expression: "c 0 == "
; Expanded expression: "(@-18) *(2) 0 == "
; Fused expression:    "== *(@-18) 0 IF! "
    mov     ax, [bp-18]
    cmp     ax, 0
    jne     L3175
; RPN'ized expression: "( 44 , idx *u 1 + ins ) "
; Expanded expression: " 44  (@4) *(2) *(2) 1 +  ins ()4 "
; Fused expression:    "( 44 , *(2) (@4) + *ax 1 , ins )4 "
    push    44
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    call    _ins
    sub     sp, -4
L3175:
; RPN'ized expression: "( ConstExpr , tmpSynPtr &u , idx exprval ) "
; Expanded expression: " (@8) *(2)  (@-16)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( *(2) (@8) , (@-16) , *(2) (@4) , exprval )6 "
    push    word [bp+8]
    lea     ax, [bp-16]
    push    ax
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; if
; RPN'ized expression: "tmpSynPtr 0 >= SyntaxStack tmpSynPtr + *u 0 + *u 17 == && "
; Expanded expression: "(@-16) *(2) 0 >= _Bool [sh&&->3179] SyntaxStack (@-16) *(2) 4 * + 0 + *(2) 17 == _Bool &&[3179] "
; Fused expression:    ">= *(@-16) 0 _Bool [sh&&->3179] * *(@-16) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[3179] "
    mov     ax, [bp-16]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3179
    mov     ax, [bp-16]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3179:
; JumpIfZero
    test    ax, ax
    je      L3177
; RPN'ized expression: "( L3180 error ) "
; Expanded expression: " L3180  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3180:
    db  "exprval(): function parameters cannot be of type 'void'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3180 , error )2 "
    push    L3180
    call    _error
    sub     sp, -2
L3177:
; if
; RPN'ized expression: "c ++ maxParams > "
; Expanded expression: "(@-18) ++(2) (@-22) *(2) > "
; Fused expression:    "++(2) *(@-18) > ax *(@-22) IF! "
    inc     word [bp-18]
    mov     ax, [bp-18]
    cmp     ax, [bp-22]
    jle     L3182
; RPN'ized expression: "( L3184 error ) "
; Expanded expression: " L3184  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3184:
    db  "exprval(): too many function parameters",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3184 , error )2 "
    push    L3184
    call    _error
    sub     sp, -2
L3182:
; if
; RPN'ized expression: "stack idx *u + *u 0 + *u 44 == "
; Expanded expression: "stack (@4) *(2) *(2) 4 * + 0 + *(2) 44 == "
; Fused expression:    "*(2) (@4) * *ax 4 + stack ax + ax 0 == *ax 44 IF! "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 44
    jne     L3186
; RPN'ized expression: "idx *u -- "
; Expanded expression: "(@4) *(2) --(2) "
; Fused expression:    "*(2) (@4) --(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    dec     word [bx]
    mov     ax, [bx]
L3186:
; }
    jmp     L3173
L3174:
; RPN'ized expression: "idx *u -- "
; Expanded expression: "(@4) *(2) --(2) "
; Fused expression:    "*(2) (@4) --(2) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    dec     word [bx]
    mov     ax, [bx]
; if
; RPN'ized expression: "c minParams < "
; Expanded expression: "(@-18) *(2) (@-20) *(2) < "
; Fused expression:    "< *(@-18) *(@-20) IF! "
    mov     ax, [bp-18]
    cmp     ax, [bp-20]
    jge     L3188
; RPN'ized expression: "( L3190 error ) "
; Expanded expression: " L3190  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3190:
    db  "exprval(): too few function parameters",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3190 , error )2 "
    push    L3190
    call    _error
    sub     sp, -2
L3188:
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 1 + *u c SizeOfWord * = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 2 + (@-18) *(2) SizeOfWord *(2) * =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 2 push-ax * *(@-18) *SizeOfWord =(34) **sp ax "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    push    ax
    mov     ax, [bp-18]
    mul     word [_SizeOfWord]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "ConstExpr *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
    sub     sp, -8
; }
; break
    jmp     L2905
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L3168
L3167:
    cmp     ax, 65
    jne     L3192
L3168:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L3193
L3192:
    cmp     ax, 66
    jne     L3194
L3193:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L3195
L3194:
    cmp     ax, 67
    jne     L3196
L3195:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L3197
L3196:
    cmp     ax, 68
    jne     L3198
L3197:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L3199
L3198:
    cmp     ax, 69
    jne     L3200
L3199:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L3201
L3200:
    cmp     ax, 70
    jne     L3202
L3201:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L3203
L3202:
    cmp     ax, 71
    jne     L3204
L3203:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L3205
L3204:
    cmp     ax, 72
    jne     L3206
L3205:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L3207
L3206:
    cmp     ax, 73
    jne     L3208
L3207:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L3209
L3208:
    cmp     ax, 74
    jne     L3210
L3209:
; {
; loc             ptrmask : (@-16): int
    sub     sp, 2
; loc             oldIdxLeft : (@-18): int
    sub     sp, 2
; loc             oldSpLeft : (@-20): int
    sub     sp, 2
; loc             incSize : (@-22): int
    sub     sp, 2
; loc             opSize : (@-24): int
    sub     sp, 2
; RPN'ized expression: "( constExpr 1 + *u &u , RightExprTypeSynPtr &u , idx exprval ) "
; Expanded expression: " (@-14) 2 +  (@-6)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( + (@-14) 2 , (@-6) , *(2) (@4) , exprval )6 "
    lea     ax, [bp-14]
    add     ax, 2
    push    ax
    lea     ax, [bp-6]
    push    ax
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; RPN'ized expression: "oldIdxLeft idx *u = "
; Expanded expression: "(@-18) (@4) *(2) *(2) =(2) "
; Fused expression:    "*(2) (@4) =(34) *(@-18) *ax "
    mov     ax, [bp+4]
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-18], ax
; RPN'ized expression: "oldSpLeft sp = "
; Expanded expression: "(@-20) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-20) *sp "
    mov     ax, [_sp]
    mov     [bp-20], ax
; RPN'ized expression: "( constExpr 0 + *u &u , ExprTypeSynPtr , idx exprval ) "
; Expanded expression: " (@-14) 0 +  (@6) *(2)  (@4) *(2)  exprval ()6 "
; Fused expression:    "( + (@-14) 0 , *(2) (@6) , *(2) (@4) , exprval )6 "
    lea     ax, [bp-14]
    add     ax, 0
    push    ax
    push    word [bp+6]
    push    word [bp+4]
    call    _exprval
    sub     sp, -6
; RPN'ized expression: "( tok , RightExprTypeSynPtr nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@-6) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@-6) , nonVoidTypeCheck )4 "
    push    word [bp-2]
    push    word [bp-6]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( tok , ExprTypeSynPtr *u nonVoidTypeCheck ) "
; Expanded expression: " (@-2) *(2)  (@6) *(2) *(2)  nonVoidTypeCheck ()4 "
; Fused expression:    "( *(2) (@-2) , *(2) (@6) *(2) ax , nonVoidTypeCheck )4 "
    push    word [bp-2]
    mov     ax, [bp+6]
    mov     bx, ax
    push    word [bx]
    call    _nonVoidTypeCheck
    sub     sp, -4
; RPN'ized expression: "( 1 , RightExprTypeSynPtr &u decayArray ) "
; Expanded expression: " 1  (@-6)  decayArray ()4 "
; Fused expression:    "( 1 , (@-6) , decayArray )4 "
    push    1
    lea     ax, [bp-6]
    push    ax
    call    _decayArray
    sub     sp, -4
; RPN'ized expression: "( 1 , ExprTypeSynPtr decayArray ) "
; Expanded expression: " 1  (@6) *(2)  decayArray ()4 "
; Fused expression:    "( 1 , *(2) (@6) , decayArray )4 "
    push    1
    push    word [bp+6]
    call    _decayArray
    sub     sp, -4
; if
; RPN'ized expression: "oldIdxLeft oldSpLeft sp - - 0 >= stack oldIdxLeft oldSpLeft sp - - + *u 0 + *u 78 == && 0 == "
; Expanded expression: "(@-18) *(2) (@-20) *(2) sp *(2) - - 0 >= _Bool [sh&&->3214] stack (@-18) *(2) (@-20) *(2) sp *(2) - - 4 * + 0 + *(2) 78 == _Bool &&[3214] 0 == "
; Fused expression:    "- *(@-20) *sp - *(@-18) ax >= ax 0 _Bool [sh&&->3214] - *(@-20) *sp - *(@-18) ax * ax 4 + stack ax + ax 0 == *ax 78 _Bool &&[3214] == ax 0 IF! "
    mov     ax, [bp-20]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-18]
    sub     ax, cx
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3214
    mov     ax, [bp-20]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-18]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 78
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3214:
    cmp     ax, 0
    jne     L3212
; RPN'ized expression: "( ( tok GetTokenName ) , L3215 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L3215  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3215:
    db  "Error: exprval(): lvalue expected before %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L3215 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3215
    call    _error
    sub     sp, -4
L3212:
; RPN'ized expression: "opSize stack oldIdxLeft oldSpLeft sp - - + *u 1 + *u = "
; Expanded expression: "(@-24) stack (@-18) *(2) (@-20) *(2) sp *(2) - - 4 * + 2 + *(2) =(2) "
; Fused expression:    "- *(@-20) *sp - *(@-18) ax * ax 4 + stack ax + ax 2 =(34) *(@-24) *ax "
    mov     ax, [bp-20]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-18]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-24], ax
; RPN'ized expression: "stack oldIdxRight 1 + oldSpRight sp - - + *u 1 + *u opSize = "
; Expanded expression: "stack (@-8) *(2) 1 + (@-10) *(2) sp *(2) - - 4 * + 2 + (@-24) *(2) =(2) "
; Fused expression:    "+ *(@-8) 1 push-ax - *(@-10) *sp - *sp ax * ax 4 + stack ax + ax 2 =(34) *ax *(@-24) "
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-24]
    mov     [bx], ax
; RPN'ized expression: "( 1 , oldIdxLeft oldSpLeft sp - - del ) "
; Expanded expression: " 1  (@-18) *(2) (@-20) *(2) sp *(2) - -  del ()4 "
; Fused expression:    "( 1 , - *(@-20) *sp - *(@-18) ax , del )4 "
    push    1
    mov     ax, [bp-20]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-18]
    sub     ax, cx
    push    ax
    call    _del
    sub     sp, -4
; RPN'ized expression: "ptrmask RightExprTypeSynPtr 0 < ExprTypeSynPtr *u 0 < 2 * + = "
; Expanded expression: "(@-16) (@-6) *(2) 0 < (@6) *(2) *(2) 0 < 2 * + =(2) "
; Fused expression:    "< *(@-6) 0 push-ax *(2) (@6) < *ax 0 * ax 2 + *sp ax =(34) *(@-16) ax "
    mov     ax, [bp-6]
    cmp     ax, 0
    setl    al
    cbw
    push    ax
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    setl    al
    cbw
    imul    ax, ax, 2
    mov     cx, ax
    pop     ax
    add     ax, cx
    mov     [bp-16], ax
; if
; RPN'ized expression: "tok 68 != tok 69 != && "
; Expanded expression: "(@-2) *(2) 68 != _Bool [sh&&->3219] (@-2) *(2) 69 != _Bool &&[3219] "
; Fused expression:    "!= *(@-2) 68 _Bool [sh&&->3219] != *(@-2) 69 _Bool &&[3219] "
    mov     ax, [bp-2]
    cmp     ax, 68
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3219
    mov     ax, [bp-2]
    cmp     ax, 69
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L3219:
; JumpIfZero
    test    ax, ax
    je      L3217
; {
; if
; RPN'ized expression: "ptrmask "
; Expanded expression: "(@-16) *(2) "
; Fused expression:    "*(2) (@-16) "
    mov     ax, [bp-16]
; JumpIfZero
    test    ax, ax
    je      L3220
; RPN'ized expression: "( ( tok GetTokenName ) , L3222 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L3222  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3222:
    db  "Error: exprval(): invalid combination of operands for %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L3222 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3222
    call    _error
    sub     sp, -4
L3220:
; }
    jmp     L3218
L3217:
; else
; {
; if
; RPN'ized expression: "ptrmask 1 & "
; Expanded expression: "(@-16) *(2) 1 & "
; Fused expression:    "& *(@-16) 1 "
    mov     ax, [bp-16]
    and     ax, 1
; JumpIfZero
    test    ax, ax
    je      L3224
; RPN'ized expression: "( ( tok GetTokenName ) , L3226 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L3226  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3226:
    db  "Error: exprval(): invalid combination of operands for %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L3226 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3226
    call    _error
    sub     sp, -4
L3224:
; }
L3218:
; if
; RPN'ized expression: "ptrmask 2 == "
; Expanded expression: "(@-16) *(2) 2 == "
; Fused expression:    "== *(@-16) 2 IF! "
    mov     ax, [bp-16]
    cmp     ax, 2
    jne     L3228
; {
; RPN'ized expression: "incSize ( ExprTypeSynPtr *u -u GetDeclSize ) = "
; Expanded expression: "(@-22)  (@6) *(2) *(2) -u  GetDeclSize ()2 =(2) "
; Fused expression:    "( *(2) (@6) *(2) ax -u , GetDeclSize )2 =(34) *(@-22) ax "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    push    ax
    call    _GetDeclSize
    sub     sp, -2
    mov     [bp-22], ax
; if
; RPN'ized expression: "constExpr 1 + *u "
; Expanded expression: "(@-14) 2 + *(2) "
; Fused expression:    "+ (@-14) 2 *(2) ax "
    lea     ax, [bp-14]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
; JumpIfZero
    test    ax, ax
    je      L3230
; {
; RPN'ized expression: "stack oldIdxRight oldSpRight sp - - + *u 1 + *u incSize *= "
; Expanded expression: "stack (@-8) *(2) (@-10) *(2) sp *(2) - - 4 * + 2 + (@-22) *(2) *=(2) "
; Fused expression:    "- *(@-10) *sp - *(@-8) ax * ax 4 + stack ax + ax 2 *=(34) *ax *(@-22) "
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    mov     ax, [bp-8]
    sub     ax, cx
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mul     word [bp-22]
    mov     [bx], ax
; }
    jmp     L3231
L3230:
; else
; if
; RPN'ized expression: "incSize 1 != "
; Expanded expression: "(@-22) *(2) 1 != "
; Fused expression:    "!= *(@-22) 1 IF! "
    mov     ax, [bp-22]
    cmp     ax, 1
    je      L3232
; {
; RPN'ized expression: "( incSize , 1 , oldIdxRight 1 + oldSpRight sp - - ins2 ) "
; Expanded expression: " (@-22) *(2)  1  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  ins2 ()6 "
; Fused expression:    "( *(2) (@-22) , 1 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , ins2 )6 "
    push    word [bp-22]
    push    1
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _ins2
    sub     sp, -6
; RPN'ized expression: "( 42 , oldIdxRight 1 + oldSpRight sp - - ins ) "
; Expanded expression: " 42  (@-8) *(2) 1 + (@-10) *(2) sp *(2) - -  ins ()4 "
; Fused expression:    "( 42 , + *(@-8) 1 push-ax - *(@-10) *sp - *sp ax , ins )4 "
    push    42
    mov     ax, [bp-8]
    add     ax, 1
    push    ax
    mov     ax, [bp-10]
    sub     ax, [_sp]
    mov     cx, ax
    pop     ax
    sub     ax, cx
    push    ax
    call    _ins
    sub     sp, -4
; }
L3232:
L3231:
; }
L3228:
; RPN'ized expression: "ConstExpr *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
    sub     sp, -10
; }
; break
    jmp     L2905
; default
L2906:
; RPN'ized expression: "( ( tok GetTokenName ) , L3234 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L3234  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3234:
    db  "exprval(): Unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L3234 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3234
    call    _error
    sub     sp, -4
; }
    jmp     L2905
L3210:
    jmp     L2906
L2905:
; return
; RPN'ized expression: "s "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L2900
L2900:
    leave
    ret
; SEGMENT _TEXT
; glb ParseExpr : (
; prm     tok : int
; prm     GotUnary : * int
; prm     ExprTypeSynPtr : * int
; prm     ConstExpr : * int
; prm     ConstVal : * int
;     ) int
SEGMENT _TEXT
    global  _ParseExpr
_ParseExpr:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; loc     GotUnary : (@6): * int
; loc     ExprTypeSynPtr : (@8): * int
; loc     ConstExpr : (@10): * int
; loc     ConstVal : (@12): * int
; loc     i : (@-2): int
    sub     sp, 2
; RPN'ized expression: "ConstVal *u ConstExpr *u 0 = = "
; Expanded expression: "(@12) *(2) (@10) *(2) 0 =(2) =(2) "
; Fused expression:    "*(2) (@12) push-ax *(2) (@10) =(34) *ax 0 =(34) **sp ax "
    mov     ax, [bp+12]
    push    ax
    mov     ax, [bp+10]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "ExprTypeSynPtr *u 0 = "
; Expanded expression: "(@8) *(2) 0 =(2) "
; Fused expression:    "*(2) (@8) =(34) *ax 0 "
    mov     ax, [bp+8]
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; if
; RPN'ized expression: "ExprLevel ++p 0 == "
; Expanded expression: "ExprLevel ++p(2) 0 == "
; Fused expression:    "++p(2) *ExprLevel == ax 0 IF! "
    mov     ax, [_ExprLevel]
    inc     word [_ExprLevel]
    cmp     ax, 0
    jne     L3237
; {
; RPN'ized expression: "opsp sp 0 = = "
; Expanded expression: "opsp sp 0 =(2) =(2) "
; Fused expression:    "=(34) *sp 0 =(34) *opsp ax "
    mov     ax, 0
    mov     [_sp], ax
    mov     [_opsp], ax
; RPN'ized expression: "( PurgeStringTable ) "
; Expanded expression: " PurgeStringTable ()0 "
; Fused expression:    "( PurgeStringTable )0 "
    call    _PurgeStringTable
; }
L3237:
; RPN'ized expression: "tok ( GotUnary , tok expr ) = "
; Expanded expression: "(@4)  (@6) *(2)  (@4) *(2)  expr ()4 =(2) "
; Fused expression:    "( *(2) (@6) , *(2) (@4) , expr )4 =(34) *(@4) ax "
    push    word [bp+6]
    push    word [bp+4]
    call    _expr
    sub     sp, -4
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 0 == ( tok , L3241 strchr ) 0 == || "
; Expanded expression: "(@4) *(2) 0 == _Bool [sh||->3243]  (@4) *(2)  L3241  strchr ()4 0 == _Bool ||[3243] "
; SEGMENT _TEXT
SEGMENT _DATA
L3241:
    db  ",;:)]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "== *(@4) 0 _Bool [sh||->3243] ( *(2) (@4) , L3241 , strchr )4 == ax 0 _Bool ||[3243] "
    mov     ax, [bp+4]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3243
    push    word [bp+4]
    push    L3241
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3243:
; JumpIfZero
    test    ax, ax
    je      L3239
; RPN'ized expression: "( ( tok GetTokenName ) , L3244 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L3244  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3244:
    db  "Error: ParseExpr(): Unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L3244 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3244
    call    _error
    sub     sp, -4
L3239:
; if
; RPN'ized expression: "GotUnary *u "
; Expanded expression: "(@6) *(2) *(2) "
; Fused expression:    "*(2) (@6) *(2) ax "
    mov     ax, [bp+6]
    mov     bx, ax
    mov     ax, [bx]
; JumpIfZero
    test    ax, ax
    je      L3246
; {
; loc         j : (@-4): int
    sub     sp, 2
; for
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-4) 0 =(2) "
; Fused expression:    "=(34) *(@-4) 0 "
    mov     ax, 0
    mov     [bp-4], ax
L3248:
; RPN'ized expression: "j 2 < "
; Expanded expression: "(@-4) *(2) 2 < "
; Fused expression:    "< *(@-4) 2 IF! "
    mov     ax, [bp-4]
    cmp     ax, 2
    jge     L3251
    jmp     L3250
L3249:
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
    jmp     L3248
L3250:
; {
; if
; RPN'ized expression: "j "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
; JumpIfZero
    test    ax, ax
    je      L3252
; RPN'ized expression: "( L3254 printf ) "
; Expanded expression: " L3254  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3254:
    db  "; Expanded",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3254 , printf )2 "
    push    L3254
    call    _printf
    sub     sp, -2
    jmp     L3253
L3252:
; else
; RPN'ized expression: "( L3256 printf ) "
; Expanded expression: " L3256  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3256:
    db  "; RPN'ized",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3256 , printf )2 "
    push    L3256
    call    _printf
    sub     sp, -2
L3253:
; RPN'ized expression: "( L3258 printf ) "
; Expanded expression: " L3258  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3258:
    db  " expression: ",34,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3258 , printf )2 "
    push    L3258
    call    _printf
    sub     sp, -2
; for
; RPN'ized expression: "i 0 = "
; Expanded expression: "(@-2) 0 =(2) "
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
L3260:
; RPN'ized expression: "i sp < "
; Expanded expression: "(@-2) *(2) sp *(2) < "
; Fused expression:    "< *(@-2) *sp IF! "
    mov     ax, [bp-2]
    cmp     ax, [_sp]
    jge     L3263
    jmp     L3262
L3261:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
    jmp     L3260
L3262:
; {
; loc                 tok : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "stack i + *u 0 + *u "
; Expanded expression: "stack (@-2) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-2) 4 + stack ax + ax 0 =(34) *(@-6) *ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-6], ax
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L3266
; {
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L3267
L3266:
    cmp     ax, 1
    jne     L3268
L3267:
; case
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
    jmp     L3269
L3268:
    cmp     ax, 2
    jne     L3270
L3269:
; RPN'ized expression: "( stack i + *u 1 + *u , L3272 printf ) "
; Expanded expression: " stack (@-2) *(2) 4 * + 2 + *(2)  L3272  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3272:
    db  "%d",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-2) 4 + stack ax + ax 2 *(2) ax , L3272 , printf )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L3272
    call    _printf
    sub     sp, -4
; break
    jmp     L3264
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L3271
L3270:
    cmp     ax, 16
    jne     L3274
L3271:
; {
; loc                         p : (@-8): * char
    sub     sp, 2
; =
; RPN'ized expression: "IdentTable stack i + *u 1 + *u + "
; Expanded expression: "IdentTable stack (@-2) *(2) 4 * + 2 + *(2) + "
; Fused expression:    "* *(@-2) 4 + stack ax + ax 2 + IdentTable *ax =(34) *(@-8) ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    mov     [bp-8], ax
; if
; RPN'ized expression: "( p *u isdigit ) "
; Expanded expression: " (@-8) *(2) *(1)  isdigit ()2 "
; Fused expression:    "( *(2) (@-8) *(1) ax , isdigit )2 "
    mov     ax, [bp-8]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isdigit
    sub     sp, -2
; JumpIfZero
    test    ax, ax
    je      L3276
; RPN'ized expression: "( L3278 printf ) "
; Expanded expression: " L3278  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3278:
    db  "L",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3278 , printf )2 "
    push    L3278
    call    _printf
    sub     sp, -2
L3276:
; RPN'ized expression: "( p , L3280 printf ) "
; Expanded expression: " (@-8) *(2)  L3280  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3280:
    db  "%s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-8) , L3280 , printf )4 "
    push    word [bp-8]
    push    L3280
    call    _printf
    sub     sp, -4
    sub     sp, -2
; }
; break
    jmp     L3264
; case
; RPN'ized expression: "90 "
; Expanded expression: "90 "
; Expression value: 90
    jmp     L3275
L3274:
    cmp     ax, 90
    jne     L3282
L3275:
; if
; RPN'ized expression: "stack i + *u 1 + *u 0 >= "
; Expanded expression: "stack (@-2) *(2) 4 * + 2 + *(2) 0 >= "
; Fused expression:    "* *(@-2) 4 + stack ax + ax 2 >= *ax 0 IF! "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jl      L3284
; RPN'ized expression: "( stack i + *u 1 + *u , L3286 printf ) "
; Expanded expression: " stack (@-2) *(2) 4 * + 2 + *(2)  L3286  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3286:
    db  "[sh&&->%d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-2) 4 + stack ax + ax 2 *(2) ax , L3286 , printf )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L3286
    call    _printf
    sub     sp, -4
    jmp     L3285
L3284:
; else
; RPN'ized expression: "( stack i + *u 1 + *u -u , L3288 printf ) "
; Expanded expression: " stack (@-2) *(2) 4 * + 2 + *(2) -u  L3288  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3288:
    db  "[sh||->%d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-2) 4 + stack ax + ax 2 *(2) ax -u , L3288 , printf )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    push    ax
    push    L3288
    call    _printf
    sub     sp, -4
L3285:
; break
    jmp     L3264
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L3283
L3282:
    cmp     ax, 89
    jne     L3290
L3283:
; RPN'ized expression: "( stack i + *u 1 + *u , L3292 printf ) "
; Expanded expression: " stack (@-2) *(2) 4 * + 2 + *(2)  L3292  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3292:
    db  "(@%d)",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-2) 4 + stack ax + ax 2 *(2) ax , L3292 , printf )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L3292
    call    _printf
    sub     sp, -4
; break
    jmp     L3264
; case
; RPN'ized expression: "78 "
; Expanded expression: "78 "
; Expression value: 78
    jmp     L3291
L3290:
    cmp     ax, 78
    jne     L3294
L3291:
; if
; RPN'ized expression: "j "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
; JumpIfZero
    test    ax, ax
    je      L3296
; RPN'ized expression: "( stack i + *u 1 + *u , L3298 printf ) "
; Expanded expression: " stack (@-2) *(2) 4 * + 2 + *(2)  L3298  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3298:
    db  "*(%d)",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-2) 4 + stack ax + ax 2 *(2) ax , L3298 , printf )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L3298
    call    _printf
    sub     sp, -4
    jmp     L3297
L3296:
; else
; RPN'ized expression: "( L3300 printf ) "
; Expanded expression: " L3300  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3300:
    db  "*u",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3300 , printf )2 "
    push    L3300
    call    _printf
    sub     sp, -2
L3297:
; break
    jmp     L3264
; case
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
    jmp     L3295
L3294:
    cmp     ax, 40
    jne     L3302
L3295:
; case
; RPN'ized expression: "44 "
; Expanded expression: "44 "
; Expression value: 44
    jmp     L3303
L3302:
    cmp     ax, 44
    jne     L3304
L3303:
; if
; RPN'ized expression: "j 0 == "
; Expanded expression: "(@-4) *(2) 0 == "
; Fused expression:    "== *(@-4) 0 IF! "
    mov     ax, [bp-4]
    cmp     ax, 0
    jne     L3306
; RPN'ized expression: "( tok , L3308 printf ) "
; Expanded expression: " (@-6) *(2)  L3308  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3308:
    db  "%c",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-6) , L3308 , printf )4 "
    push    word [bp-6]
    push    L3308
    call    _printf
    sub     sp, -4
L3306:
; break
    jmp     L3264
; case
; RPN'ized expression: "41 "
; Expanded expression: "41 "
; Expression value: 41
    jmp     L3305
L3304:
    cmp     ax, 41
    jne     L3310
L3305:
; if
; RPN'ized expression: "j "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
; JumpIfZero
    test    ax, ax
    je      L3312
; RPN'ized expression: "( L3314 printf ) "
; Expanded expression: " L3314  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3314:
    db  "(",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3314 , printf )2 "
    push    L3314
    call    _printf
    sub     sp, -2
L3312:
; RPN'ized expression: "( tok , L3316 printf ) "
; Expanded expression: " (@-6) *(2)  L3316  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3316:
    db  "%c",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-6) , L3316 , printf )4 "
    push    word [bp-6]
    push    L3316
    call    _printf
    sub     sp, -4
; if
; RPN'ized expression: "j "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
; JumpIfZero
    test    ax, ax
    je      L3318
; RPN'ized expression: "( stack i + *u 1 + *u , L3320 printf ) "
; Expanded expression: " stack (@-2) *(2) 4 * + 2 + *(2)  L3320  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3320:
    db  "%d",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-2) 4 + stack ax + ax 2 *(2) ax , L3320 , printf )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L3320
    call    _printf
    sub     sp, -4
L3318:
; break
    jmp     L3264
; default
L3265:
; RPN'ized expression: "( ( tok GetTokenName ) , L3322 printf ) "
; Expanded expression: "  (@-6) *(2)  GetTokenName ()2  L3322  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3322:
    db  "%s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-6) , GetTokenName )2 , L3322 , printf )4 "
    push    word [bp-6]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3322
    call    _printf
    sub     sp, -4
; if
; RPN'ized expression: "j "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
; JumpIfZero
    test    ax, ax
    je      L3324
; {
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L3328
; {
; case
; RPN'ized expression: "7 "
; Expanded expression: "7 "
; Expression value: 7
    jmp     L3329
L3328:
    cmp     ax, 7
    jne     L3330
L3329:
; case
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
    jmp     L3331
L3330:
    cmp     ax, 6
    jne     L3332
L3331:
; RPN'ized expression: "( stack i + *u 1 + *u , L3334 printf ) "
; Expanded expression: " stack (@-2) *(2) 4 * + 2 + *(2)  L3334  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3334:
    db  "[%d]",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-2) 4 + stack ax + ax 2 *(2) ax , L3334 , printf )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L3334
    call    _printf
    sub     sp, -4
; break
    jmp     L3326
; case
; RPN'ized expression: "61 "
; Expanded expression: "61 "
; Expression value: 61
    jmp     L3333
L3332:
    cmp     ax, 61
    jne     L3336
L3333:
; case
; RPN'ized expression: "12 "
; Expanded expression: "12 "
; Expression value: 12
    jmp     L3337
L3336:
    cmp     ax, 12
    jne     L3338
L3337:
; case
; RPN'ized expression: "13 "
; Expanded expression: "13 "
; Expression value: 13
    jmp     L3339
L3338:
    cmp     ax, 13
    jne     L3340
L3339:
; case
; RPN'ized expression: "81 "
; Expanded expression: "81 "
; Expression value: 81
    jmp     L3341
L3340:
    cmp     ax, 81
    jne     L3342
L3341:
; case
; RPN'ized expression: "82 "
; Expanded expression: "82 "
; Expression value: 82
    jmp     L3343
L3342:
    cmp     ax, 82
    jne     L3344
L3343:
; case
; RPN'ized expression: "68 "
; Expanded expression: "68 "
; Expression value: 68
    jmp     L3345
L3344:
    cmp     ax, 68
    jne     L3346
L3345:
; case
; RPN'ized expression: "69 "
; Expanded expression: "69 "
; Expression value: 69
    jmp     L3347
L3346:
    cmp     ax, 69
    jne     L3348
L3347:
; case
; RPN'ized expression: "83 "
; Expanded expression: "83 "
; Expression value: 83
    jmp     L3349
L3348:
    cmp     ax, 83
    jne     L3350
L3349:
; case
; RPN'ized expression: "84 "
; Expanded expression: "84 "
; Expression value: 84
    jmp     L3351
L3350:
    cmp     ax, 84
    jne     L3352
L3351:
; case
; RPN'ized expression: "65 "
; Expanded expression: "65 "
; Expression value: 65
    jmp     L3353
L3352:
    cmp     ax, 65
    jne     L3354
L3353:
; case
; RPN'ized expression: "66 "
; Expanded expression: "66 "
; Expression value: 66
    jmp     L3355
L3354:
    cmp     ax, 66
    jne     L3356
L3355:
; case
; RPN'ized expression: "67 "
; Expanded expression: "67 "
; Expression value: 67
    jmp     L3357
L3356:
    cmp     ax, 67
    jne     L3358
L3357:
; case
; RPN'ized expression: "70 "
; Expanded expression: "70 "
; Expression value: 70
    jmp     L3359
L3358:
    cmp     ax, 70
    jne     L3360
L3359:
; case
; RPN'ized expression: "71 "
; Expanded expression: "71 "
; Expression value: 71
    jmp     L3361
L3360:
    cmp     ax, 71
    jne     L3362
L3361:
; case
; RPN'ized expression: "72 "
; Expanded expression: "72 "
; Expression value: 72
    jmp     L3363
L3362:
    cmp     ax, 72
    jne     L3364
L3363:
; case
; RPN'ized expression: "73 "
; Expanded expression: "73 "
; Expression value: 73
    jmp     L3365
L3364:
    cmp     ax, 73
    jne     L3366
L3365:
; case
; RPN'ized expression: "74 "
; Expanded expression: "74 "
; Expression value: 74
    jmp     L3367
L3366:
    cmp     ax, 74
    jne     L3368
L3367:
; RPN'ized expression: "( stack i + *u 1 + *u , L3370 printf ) "
; Expanded expression: " stack (@-2) *(2) 4 * + 2 + *(2)  L3370  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3370:
    db  "(%d)",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-2) 4 + stack ax + ax 2 *(2) ax , L3370 , printf )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    L3370
    call    _printf
    sub     sp, -4
; break
    jmp     L3326
; }
    jmp     L3326
L3368:
L3326:
; }
L3324:
; break
    jmp     L3264
; }
    jmp     L3264
L3310:
    jmp     L3265
L3264:
; RPN'ized expression: "( L3372 printf ) "
; Expanded expression: " L3372  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3372:
    db  " ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3372 , printf )2 "
    push    L3372
    call    _printf
    sub     sp, -2
    sub     sp, -2
; }
    jmp     L3261
L3263:
; RPN'ized expression: "( L3374 printf ) "
; Expanded expression: " L3374  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3374:
    db  34,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3374 , printf )2 "
    push    L3374
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "j 0 == "
; Expanded expression: "(@-4) *(2) 0 == "
; Fused expression:    "== *(@-4) 0 IF! "
    mov     ax, [bp-4]
    cmp     ax, 0
    jne     L3376
; {
; loc                 idx : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "sp 1 - "
; Expanded expression: "sp *(2) 1 - "
; Fused expression:    "- *sp 1 =(34) *(@-6) ax "
    mov     ax, [_sp]
    sub     ax, 1
    mov     [bp-6], ax
; RPN'ized expression: "ConstVal *u ( ConstExpr , ExprTypeSynPtr , idx &u exprval ) = "
; Expanded expression: "(@12) *(2)  (@10) *(2)  (@8) *(2)  (@-6)  exprval ()6 =(2) "
; Fused expression:    "*(2) (@12) push-ax ( *(2) (@10) , *(2) (@8) , (@-6) , exprval )6 =(34) **sp ax "
    mov     ax, [bp+12]
    push    ax
    push    word [bp+10]
    push    word [bp+8]
    lea     ax, [bp-6]
    push    ax
    call    _exprval
    sub     sp, -6
    pop     bx
    mov     [bx], ax
    sub     sp, -2
; }
    jmp     L3377
L3376:
; else
; if
; RPN'ized expression: "ConstExpr *u "
; Expanded expression: "(@10) *(2) *(2) "
; Fused expression:    "*(2) (@10) *(2) ax "
    mov     ax, [bp+10]
    mov     bx, ax
    mov     ax, [bx]
; JumpIfZero
    test    ax, ax
    je      L3378
; RPN'ized expression: "( ConstVal *u , L3380 printf ) "
; Expanded expression: " (@12) *(2) *(2)  L3380  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3380:
    db  "; Expression value: %d",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@12) *(2) ax , L3380 , printf )4 "
    mov     ax, [bp+12]
    mov     bx, ax
    push    word [bx]
    push    L3380
    call    _printf
    sub     sp, -4
L3378:
L3377:
; }
    jmp     L3249
L3251:
    sub     sp, -2
; }
L3246:
; RPN'ized expression: "ExprLevel --p "
; Expanded expression: "ExprLevel --p(2) "
; Fused expression:    "--p(2) *ExprLevel "
    mov     ax, [_ExprLevel]
    dec     word [_ExprLevel]
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L3236
L3236:
    leave
    ret
; SEGMENT _TEXT
; glb error : (
; prm     format : * char
; prm     ...
;     ) void
SEGMENT _TEXT
    global  _error
_error:
    push    bp
    mov     bp, sp
; loc     format : (@4): * char
; RPN'ized expression: "( L3383 printf ) "
; Expanded expression: " L3383  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3383:
    db  10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3383 , printf )2 "
    push    L3383
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( DumpSynDecls ) "
; Expanded expression: " DumpSynDecls ()0 "
; Fused expression:    "( DumpSynDecls )0 "
    call    _DumpSynDecls
; RPN'ized expression: "( DumpMacroTable ) "
; Expanded expression: " DumpMacroTable ()0 "
; Fused expression:    "( DumpMacroTable )0 "
    call    _DumpMacroTable
; RPN'ized expression: "( DumpIdentTable ) "
; Expanded expression: " DumpIdentTable ()0 "
; Fused expression:    "( DumpIdentTable )0 "
    call    _DumpIdentTable
; RPN'ized expression: "( LinePos , LineNo , CurFileName , L3385 printf ) "
; Expanded expression: " LinePos *(2)  LineNo *(2)  CurFileName *(2)  L3385  printf ()8 "
; SEGMENT _TEXT
SEGMENT _DATA
L3385:
    db  "Error in ",34,"%s",34," (%d:%d)",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) LinePos , *(2) LineNo , *(2) CurFileName , L3385 , printf )8 "
    push    word [_LinePos]
    push    word [_LineNo]
    push    word [_CurFileName]
    push    L3385
    call    _printf
    sub     sp, -8
; RPN'ized expression: "( format , L3387 printf ) "
; Expanded expression: " (@4) *(2)  L3387  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3387:
    db  "%s",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@4) , L3387 , printf )4 "
    push    word [bp+4]
    push    L3387
    call    _printf
    sub     sp, -4
; RPN'ized expression: "( 1 -u exit ) "
; Expanded expression: " -1  exit ()2 "
; Fused expression:    "( -1 , exit )2 "
    push    -1
    call    _exit
    sub     sp, -2
L3382:
    leave
    ret
; SEGMENT _TEXT
; glb TokenStartsDeclaration : (
; prm     t : int
; prm     params : int
;     ) int
SEGMENT _TEXT
    global  _TokenStartsDeclaration
_TokenStartsDeclaration:
    push    bp
    mov     bp, sp
; loc     t : (@4): int
; loc     params : (@6): int
; return
; RPN'ized expression: "t 17 == t 18 == || t 19 == || params 0 == t 108 == && || "
; Expanded expression: "(@4) *(2) 17 == _Bool [sh||->3393] (@4) *(2) 18 == _Bool ||[3393] _Bool [sh||->3392] (@4) *(2) 19 == _Bool ||[3392] _Bool [sh||->3390] (@6) *(2) 0 == _Bool [sh&&->3391] (@4) *(2) 108 == _Bool &&[3391] _Bool ||[3390] "
; Fused expression:    "== *(@4) 17 _Bool [sh||->3393] == *(@4) 18 _Bool ||[3393] _Bool [sh||->3392] == *(@4) 19 _Bool ||[3392] _Bool [sh||->3390] == *(@6) 0 _Bool [sh&&->3391] == *(@4) 108 _Bool &&[3391] _Bool ||[3390] "
    mov     ax, [bp+4]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3393
    mov     ax, [bp+4]
    cmp     ax, 18
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3393:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3392
    mov     ax, [bp+4]
    cmp     ax, 19
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3392:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3390
    mov     ax, [bp+6]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3391
    mov     ax, [bp+4]
    cmp     ax, 108
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3391:
    test    ax, ax
    setne   al
    cbw
L3390:
    jmp     L3389
L3389:
    leave
    ret
; SEGMENT _TEXT
; glb PushSyntax2 : (
; prm     t : int
; prm     v : int
;     ) void
SEGMENT _TEXT
    global  _PushSyntax2
_PushSyntax2:
    push    bp
    mov     bp, sp
; loc     t : (@4): int
; loc     v : (@6): int
; if
; RPN'ized expression: "SyntaxStackCnt 2048 >= "
; Expanded expression: "SyntaxStackCnt *(2) 2048 >= "
; Fused expression:    ">= *SyntaxStackCnt 2048 IF! "
    mov     ax, [_SyntaxStackCnt]
    cmp     ax, 2048
    jl      L3395
; RPN'ized expression: "( L3397 error ) "
; Expanded expression: " L3397  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3397:
    db  "Internal error: Too many declarations",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3397 , error )2 "
    push    L3397
    call    _error
    sub     sp, -2
L3395:
; RPN'ized expression: "SyntaxStack SyntaxStackCnt + *u 0 + *u t = "
; Expanded expression: "SyntaxStack SyntaxStackCnt *(2) 4 * + 0 + (@4) *(2) =(2) "
; Fused expression:    "* *SyntaxStackCnt 4 + SyntaxStack ax + ax 0 =(34) *ax *(@4) "
    mov     ax, [_SyntaxStackCnt]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp+4]
    mov     [bx], ax
; RPN'ized expression: "SyntaxStack SyntaxStackCnt ++p + *u 1 + *u v = "
; Expanded expression: "SyntaxStack SyntaxStackCnt ++p(2) 4 * + 2 + (@6) *(2) =(2) "
; Fused expression:    "++p(2) *SyntaxStackCnt * ax 4 + SyntaxStack ax + ax 2 =(34) *ax *(@6) "
    mov     ax, [_SyntaxStackCnt]
    inc     word [_SyntaxStackCnt]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp+6]
    mov     [bx], ax
L3394:
    leave
    ret
; SEGMENT _TEXT
; glb PushSyntax : (
; prm     t : int
;     ) void
SEGMENT _TEXT
    global  _PushSyntax
_PushSyntax:
    push    bp
    mov     bp, sp
; loc     t : (@4): int
; RPN'ized expression: "( 0 , t PushSyntax2 ) "
; Expanded expression: " 0  (@4) *(2)  PushSyntax2 ()4 "
; Fused expression:    "( 0 , *(2) (@4) , PushSyntax2 )4 "
    push    0
    push    word [bp+4]
    call    _PushSyntax2
    sub     sp, -4
L3399:
    leave
    ret
; SEGMENT _TEXT
; glb InsertSyntax2 : (
; prm     pos : int
; prm     t : int
; prm     v : int
;     ) void
SEGMENT _TEXT
    global  _InsertSyntax2
_InsertSyntax2:
    push    bp
    mov     bp, sp
; loc     pos : (@4): int
; loc     t : (@6): int
; loc     v : (@8): int
; if
; RPN'ized expression: "SyntaxStackCnt 2048 >= "
; Expanded expression: "SyntaxStackCnt *(2) 2048 >= "
; Fused expression:    ">= *SyntaxStackCnt 2048 IF! "
    mov     ax, [_SyntaxStackCnt]
    cmp     ax, 2048
    jl      L3401
; RPN'ized expression: "( L3403 error ) "
; Expanded expression: " L3403  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3403:
    db  "Internal error: Too many declarations",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3403 , error )2 "
    push    L3403
    call    _error
    sub     sp, -2
L3401:
; RPN'ized expression: "( SyntaxStack 0 + *u sizeof SyntaxStackCnt pos - * , SyntaxStack pos + *u , SyntaxStack pos 1 + + *u memmove ) "
; Expanded expression: " 4 SyntaxStackCnt *(2) (@4) *(2) - *  SyntaxStack (@4) *(2) 4 * +  SyntaxStack (@4) *(2) 1 + 4 * +  memmove ()6 "
; Fused expression:    "( - *SyntaxStackCnt *(@4) * 4 ax , * *(@4) 4 + SyntaxStack ax , + *(@4) 1 * ax 4 + SyntaxStack ax , memmove )6 "
    mov     ax, [_SyntaxStackCnt]
    sub     ax, [bp+4]
    mov     cx, ax
    mov     ax, 4
    mul     cx
    push    ax
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    push    ax
    mov     ax, [bp+4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    push    ax
    call    _memmove
    sub     sp, -6
; RPN'ized expression: "SyntaxStack pos + *u 0 + *u t = "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 0 + (@6) *(2) =(2) "
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 =(34) *ax *(@6) "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp+6]
    mov     [bx], ax
; RPN'ized expression: "SyntaxStack pos + *u 1 + *u v = "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 2 + (@8) *(2) =(2) "
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 2 =(34) *ax *(@8) "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp+8]
    mov     [bx], ax
; RPN'ized expression: "SyntaxStackCnt ++p "
; Expanded expression: "SyntaxStackCnt ++p(2) "
; Fused expression:    "++p(2) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    inc     word [_SyntaxStackCnt]
L3400:
    leave
    ret
; SEGMENT _TEXT
; glb InsertSyntax : (
; prm     pos : int
; prm     t : int
;     ) void
SEGMENT _TEXT
    global  _InsertSyntax
_InsertSyntax:
    push    bp
    mov     bp, sp
; loc     pos : (@4): int
; loc     t : (@6): int
; RPN'ized expression: "( 0 , t , pos InsertSyntax2 ) "
; Expanded expression: " 0  (@6) *(2)  (@4) *(2)  InsertSyntax2 ()6 "
; Fused expression:    "( 0 , *(2) (@6) , *(2) (@4) , InsertSyntax2 )6 "
    push    0
    push    word [bp+6]
    push    word [bp+4]
    call    _InsertSyntax2
    sub     sp, -6
L3405:
    leave
    ret
; SEGMENT _TEXT
; glb DeleteSyntax : (
; prm     pos : int
; prm     cnt : int
;     ) void
SEGMENT _TEXT
    global  _DeleteSyntax
_DeleteSyntax:
    push    bp
    mov     bp, sp
; loc     pos : (@4): int
; loc     cnt : (@6): int
; RPN'ized expression: "( SyntaxStack 0 + *u sizeof SyntaxStackCnt pos cnt + - * , SyntaxStack pos cnt + + *u , SyntaxStack pos + *u memmove ) "
; Expanded expression: " 4 SyntaxStackCnt *(2) (@4) *(2) (@6) *(2) + - *  SyntaxStack (@4) *(2) (@6) *(2) + 4 * +  SyntaxStack (@4) *(2) 4 * +  memmove ()6 "
; Fused expression:    "( + *(@4) *(@6) - *SyntaxStackCnt ax * 4 ax , + *(@4) *(@6) * ax 4 + SyntaxStack ax , * *(@4) 4 + SyntaxStack ax , memmove )6 "
    mov     ax, [bp+4]
    add     ax, [bp+6]
    mov     cx, ax
    mov     ax, [_SyntaxStackCnt]
    sub     ax, cx
    mov     cx, ax
    mov     ax, 4
    mul     cx
    push    ax
    mov     ax, [bp+4]
    add     ax, [bp+6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    push    ax
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    push    ax
    call    _memmove
    sub     sp, -6
; RPN'ized expression: "SyntaxStackCnt cnt -= "
; Expanded expression: "SyntaxStackCnt (@6) *(2) -=(2) "
; Fused expression:    "-=(34) *SyntaxStackCnt *(@6) "
    mov     ax, [_SyntaxStackCnt]
    sub     ax, [bp+6]
    mov     [_SyntaxStackCnt], ax
L3406:
    leave
    ret
; SEGMENT _TEXT
; glb FindSymbol : (
; prm     s : * char
;     ) int
SEGMENT _TEXT
    global  _FindSymbol
_FindSymbol:
    push    bp
    mov     bp, sp
; loc     s : (@4): * char
; loc     i : (@-2): int
    sub     sp, 2
; for
; RPN'ized expression: "i SyntaxStackCnt 1 - = "
; Expanded expression: "(@-2) SyntaxStackCnt *(2) 1 - =(2) "
; Fused expression:    "- *SyntaxStackCnt 1 =(34) *(@-2) ax "
    mov     ax, [_SyntaxStackCnt]
    sub     ax, 1
    mov     [bp-2], ax
L3408:
; RPN'ized expression: "i 0 >= "
; Expanded expression: "(@-2) *(2) 0 >= "
; Fused expression:    ">= *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jl      L3411
    jmp     L3410
L3409:
; RPN'ized expression: "i --p "
; Expanded expression: "(@-2) --p(2) "
; Fused expression:    "--p(2) *(@-2) "
    mov     ax, [bp-2]
    dec     word [bp-2]
    jmp     L3408
L3410:
; {
; if
; RPN'ized expression: "SyntaxStack i + *u 0 + *u 16 == ( s , IdentTable SyntaxStack i + *u 1 + *u + strcmp ) 0 == && "
; Expanded expression: "SyntaxStack (@-2) *(2) 4 * + 0 + *(2) 16 == _Bool [sh&&->3414]  (@4) *(2)  IdentTable SyntaxStack (@-2) *(2) 4 * + 2 + *(2) +  strcmp ()4 0 == _Bool &&[3414] "
; Fused expression:    "* *(@-2) 4 + SyntaxStack ax + ax 0 == *ax 16 _Bool [sh&&->3414] ( *(2) (@4) , * *(@-2) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , strcmp )4 == ax 0 _Bool &&[3414] "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3414
    push    word [bp+4]
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3414:
; JumpIfZero
    test    ax, ax
    je      L3412
; {
; return
; RPN'ized expression: "i "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L3407
; }
    jmp     L3413
L3412:
; else
; if
; RPN'ized expression: "SyntaxStack i + *u 0 + *u 41 == "
; Expanded expression: "SyntaxStack (@-2) *(2) 4 * + 0 + *(2) 41 == "
; Fused expression:    "* *(@-2) 4 + SyntaxStack ax + ax 0 == *ax 41 IF! "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 41
    jne     L3415
; {
; loc             c : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "=(34) *(@-4) -1 "
    mov     ax, -1
    mov     [bp-4], ax
; while
; RPN'ized expression: "c "
; Expanded expression: "(@-4) *(2) "
L3417:
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
; JumpIfZero
    test    ax, ax
    je      L3418
; {
; loc                 t : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack i -- + *u 0 + *u "
; Expanded expression: "SyntaxStack (@-2) --(2) 4 * + 0 + *(2) "
; Fused expression:    "--(2) *(@-2) * ax 4 + SyntaxStack ax + ax 0 =(34) *(@-6) *ax "
    dec     word [bp-2]
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-6], ax
; RPN'ized expression: "c t 40 == t 41 == - += "
; Expanded expression: "(@-4) (@-6) *(2) 40 == (@-6) *(2) 41 == - +=(2) "
; Fused expression:    "== *(@-6) 40 push-ax == *(@-6) 41 - *sp ax +=(34) *(@-4) ax "
    mov     ax, [bp-6]
    cmp     ax, 40
    sete    al
    cbw
    push    ax
    mov     ax, [bp-6]
    cmp     ax, 41
    sete    al
    cbw
    mov     cx, ax
    pop     ax
    sub     ax, cx
    mov     cx, ax
    mov     ax, [bp-4]
    add     ax, cx
    mov     [bp-4], ax
    sub     sp, -2
; }
    jmp     L3417
L3418:
    sub     sp, -2
; }
L3415:
L3413:
; }
    jmp     L3409
L3411:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1 "
    mov     ax, -1
    jmp     L3407
L3407:
    leave
    ret
; SEGMENT _TEXT
; glb SymType : (
; prm     SynPtr : int
;     ) int
SEGMENT _TEXT
    global  _SymType
_SymType:
    push    bp
    mov     bp, sp
; loc     SynPtr : (@4): int
; loc     local : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-2) 0 "
    mov     ax, 0
    mov     [bp-2], ax
; if
; RPN'ized expression: "SyntaxStack SynPtr + *u 0 + *u 16 == "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 0 + *(2) 16 == "
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 == *ax 16 IF! "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    jne     L3420
; RPN'ized expression: "SynPtr ++p "
; Expanded expression: "(@4) ++p(2) "
; Fused expression:    "++p(2) *(@4) "
    mov     ax, [bp+4]
    inc     word [bp+4]
L3420:
; if
; RPN'ized expression: "local SyntaxStack SynPtr + *u 0 + *u 89 == = 0 != "
; Expanded expression: "(@-2) SyntaxStack (@4) *(2) 4 * + 0 + *(2) 89 == =(2) 0 != "
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 == *ax 89 =(34) *(@-2) ax != ax 0 IF! "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 89
    sete    al
    cbw
    mov     [bp-2], ax
    cmp     ax, 0
    je      L3422
; RPN'ized expression: "SynPtr ++p "
; Expanded expression: "(@4) ++p(2) "
; Fused expression:    "++p(2) *(@4) "
    mov     ax, [bp+4]
    inc     word [bp+4]
L3422:
; switch
; RPN'ized expression: "SyntaxStack SynPtr + *u 0 + *u "
; Expanded expression: "SyntaxStack (@4) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@4) 4 + SyntaxStack ax + ax 0 *(2) ax "
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L3426
; {
; case
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
    jmp     L3427
L3426:
    cmp     ax, 40
    jne     L3428
L3427:
; return
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "1 "
    mov     ax, 1
    jmp     L3419
; case
; RPN'ized expression: "91 "
; Expanded expression: "91 "
; Expression value: 91
    jmp     L3429
L3428:
    cmp     ax, 91
    jne     L3430
L3429:
; if
; RPN'ized expression: "local "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L3432
; return
; RPN'ized expression: "5 "
; Expanded expression: "5 "
; Expression value: 5
; Fused expression:    "5 "
    mov     ax, 5
    jmp     L3419
L3432:
; return
; RPN'ized expression: "3 "
; Expanded expression: "3 "
; Expression value: 3
; Fused expression:    "3 "
    mov     ax, 3
    jmp     L3419
; default
L3425:
; if
; RPN'ized expression: "local "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L3434
; return
; RPN'ized expression: "4 "
; Expanded expression: "4 "
; Expression value: 4
; Fused expression:    "4 "
    mov     ax, 4
    jmp     L3419
L3434:
; return
; RPN'ized expression: "2 "
; Expanded expression: "2 "
; Expression value: 2
; Fused expression:    "2 "
    mov     ax, 2
    jmp     L3419
; }
    jmp     L3424
L3430:
    jmp     L3425
L3424:
L3419:
    leave
    ret
; SEGMENT _TEXT
; glb GetDeclSize : (
; prm     SyntaxPtr : int
;     ) int
SEGMENT _TEXT
    global  _GetDeclSize
_GetDeclSize:
    push    bp
    mov     bp, sp
; loc     SyntaxPtr : (@4): int
; loc     i : (@-2): int
    sub     sp, 2
; loc     size : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "=(34) *(@-4) 1 "
    mov     ax, 1
    mov     [bp-4], ax
; if
; RPN'ized expression: "SyntaxPtr 0 < "
; Expanded expression: "(@4) *(2) 0 < "
; Fused expression:    "< *(@4) 0 IF! "
    mov     ax, [bp+4]
    cmp     ax, 0
    jge     L3437
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1 "
    mov     ax, -1
    jmp     L3436
L3437:
; for
; RPN'ized expression: "i SyntaxPtr = "
; Expanded expression: "(@-2) (@4) *(2) =(2) "
; Fused expression:    "=(34) *(@-2) *(@4) "
    mov     ax, [bp+4]
    mov     [bp-2], ax
L3439:
; RPN'ized expression: "i SyntaxStackCnt < "
; Expanded expression: "(@-2) *(2) SyntaxStackCnt *(2) < "
; Fused expression:    "< *(@-2) *SyntaxStackCnt IF! "
    mov     ax, [bp-2]
    cmp     ax, [_SyntaxStackCnt]
    jge     L3442
    jmp     L3441
L3440:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
    jmp     L3439
L3441:
; {
; loc         tok : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack i + *u 0 + *u "
; Expanded expression: "SyntaxStack (@-2) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-2) 4 + SyntaxStack ax + ax 0 =(34) *(@-6) *ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-6], ax
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L3445
; {
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L3446
L3445:
    cmp     ax, 16
    jne     L3447
L3446:
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L3448
L3447:
    cmp     ax, 89
    jne     L3449
L3448:
; break
    jmp     L3443
; case
; RPN'ized expression: "18 "
; Expanded expression: "18 "
; Expression value: 18
    jmp     L3450
L3449:
    cmp     ax, 18
    jne     L3451
L3450:
; return
; RPN'ized expression: "size "
; Expanded expression: "(@-4) *(2) "
; Fused expression:    "*(2) (@-4) "
    mov     ax, [bp-4]
    jmp     L3436
; case
; RPN'ized expression: "19 "
; Expanded expression: "19 "
; Expression value: 19
    jmp     L3452
L3451:
    cmp     ax, 19
    jne     L3453
L3452:
; return
; RPN'ized expression: "size SizeOfWord * "
; Expanded expression: "(@-4) *(2) SizeOfWord *(2) * "
; Fused expression:    "* *(@-4) *SizeOfWord "
    mov     ax, [bp-4]
    mul     word [_SizeOfWord]
    jmp     L3436
; case
; RPN'ized expression: "42 "
; Expanded expression: "42 "
; Expression value: 42
    jmp     L3454
L3453:
    cmp     ax, 42
    jne     L3455
L3454:
; return
; RPN'ized expression: "size SizeOfWord * "
; Expanded expression: "(@-4) *(2) SizeOfWord *(2) * "
; Fused expression:    "* *(@-4) *SizeOfWord "
    mov     ax, [bp-4]
    mul     word [_SizeOfWord]
    jmp     L3436
; case
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
    jmp     L3456
L3455:
    cmp     ax, 40
    jne     L3457
L3456:
; return
; RPN'ized expression: "size SizeOfWord * "
; Expanded expression: "(@-4) *(2) SizeOfWord *(2) * "
; Fused expression:    "* *(@-4) *SizeOfWord "
    mov     ax, [bp-4]
    mul     word [_SizeOfWord]
    jmp     L3436
; case
; RPN'ized expression: "91 "
; Expanded expression: "91 "
; Expression value: 91
    jmp     L3458
L3457:
    cmp     ax, 91
    jne     L3459
L3458:
; if
; RPN'ized expression: "SyntaxStack i 1 + + *u 0 + *u 1 != "
; Expanded expression: "SyntaxStack (@-2) *(2) 1 + 4 * + 0 + *(2) 1 != "
; Fused expression:    "+ *(@-2) 1 * ax 4 + SyntaxStack ax + ax 0 != *ax 1 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 1
    je      L3461
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1 "
    mov     ax, -1
    jmp     L3436
L3461:
; RPN'ized expression: "size SyntaxStack i 1 + + *u 1 + *u *= "
; Expanded expression: "(@-4) SyntaxStack (@-2) *(2) 1 + 4 * + 2 + *(2) *=(2) "
; Fused expression:    "+ *(@-2) 1 * ax 4 + SyntaxStack ax + ax 2 *=(34) *(@-4) *ax "
    mov     ax, [bp-2]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, [bp-4]
    mul     cx
    mov     [bp-4], ax
; RPN'ized expression: "i 2 += "
; Expanded expression: "(@-2) 2 +=(2) "
; Fused expression:    "+=(34) *(@-2) 2 "
    mov     ax, [bp-2]
    add     ax, 2
    mov     [bp-2], ax
; break
    jmp     L3443
; default
L3444:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1 "
    mov     ax, -1
    jmp     L3436
; }
    jmp     L3443
L3459:
    jmp     L3444
L3443:
    sub     sp, -2
; }
    jmp     L3440
L3442:
; return
; RPN'ized expression: "1 -u "
; Expanded expression: "-1 "
; Expression value: -1
; Fused expression:    "-1 "
    mov     ax, -1
    jmp     L3436
L3436:
    leave
    ret
; SEGMENT _TEXT
; glb ShowDecl : (
; prm     SyntaxPtr : int
; prm     IsParam : int
;     ) void
SEGMENT _TEXT
    global  _ShowDecl
_ShowDecl:
    push    bp
    mov     bp, sp
; loc     SyntaxPtr : (@4): int
; loc     IsParam : (@6): int
; loc     i : (@-2): int
    sub     sp, 2
; loc     icnt : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-4) 0 "
    mov     ax, 0
    mov     [bp-4], ax
; if
; RPN'ized expression: "SyntaxPtr 0 < "
; Expanded expression: "(@4) *(2) 0 < "
; Fused expression:    "< *(@4) 0 IF! "
    mov     ax, [bp+4]
    cmp     ax, 0
    jge     L3464
; return
    jmp     L3463
L3464:
; for
; RPN'ized expression: "i SyntaxPtr = "
; Expanded expression: "(@-2) (@4) *(2) =(2) "
; Fused expression:    "=(34) *(@-2) *(@4) "
    mov     ax, [bp+4]
    mov     [bp-2], ax
L3466:
; RPN'ized expression: "i SyntaxStackCnt < "
; Expanded expression: "(@-2) *(2) SyntaxStackCnt *(2) < "
; Fused expression:    "< *(@-2) *SyntaxStackCnt IF! "
    mov     ax, [bp-2]
    cmp     ax, [_SyntaxStackCnt]
    jge     L3469
    jmp     L3468
L3467:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
    jmp     L3466
L3468:
; {
; loc         tok : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack i + *u 0 + *u "
; Expanded expression: "SyntaxStack (@-2) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-2) 4 + SyntaxStack ax + ax 0 =(34) *(@-6) *ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-6], ax
; loc         v : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack i + *u 1 + *u "
; Expanded expression: "SyntaxStack (@-2) *(2) 4 * + 2 + *(2) "
; Fused expression:    "* *(@-2) 4 + SyntaxStack ax + ax 2 =(34) *(@-8) *ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-8], ax
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L3472
; {
; case
; RPN'ized expression: "89 "
; Expanded expression: "89 "
; Expression value: 89
    jmp     L3473
L3472:
    cmp     ax, 89
    jne     L3474
L3473:
; RPN'ized expression: "( v , L3476 printf ) "
; Expanded expression: " (@-8) *(2)  L3476  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3476:
    db  "(@%d): ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-8) , L3476 , printf )4 "
    push    word [bp-8]
    push    L3476
    call    _printf
    sub     sp, -4
; break
    jmp     L3470
; case
; RPN'ized expression: "16 "
; Expanded expression: "16 "
; Expression value: 16
    jmp     L3475
L3474:
    cmp     ax, 16
    jne     L3478
L3475:
; if
; RPN'ized expression: "icnt ++ 1 > IsParam 0 == && "
; Expanded expression: "(@-4) ++(2) 1 > _Bool [sh&&->3482] (@6) *(2) 0 == _Bool &&[3482] "
; Fused expression:    "++(2) *(@-4) > ax 1 _Bool [sh&&->3482] == *(@6) 0 _Bool &&[3482] "
    inc     word [bp-4]
    mov     ax, [bp-4]
    cmp     ax, 1
    setg    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3482
    mov     ax, [bp+6]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3482:
; JumpIfZero
    test    ax, ax
    je      L3480
; return
    jmp     L3463
L3480:
; RPN'ized expression: "( L3483 printf ) "
; Expanded expression: " L3483  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3483:
    db  "; ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3483 , printf )2 "
    push    L3483
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "ParseLevel 0 == "
; Expanded expression: "ParseLevel *(2) 0 == "
; Fused expression:    "== *ParseLevel 0 IF! "
    mov     ax, [_ParseLevel]
    cmp     ax, 0
    jne     L3485
; RPN'ized expression: "( L3487 printf ) "
; Expanded expression: " L3487  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3487:
    db  "glb ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3487 , printf )2 "
    push    L3487
    call    _printf
    sub     sp, -2
    jmp     L3486
L3485:
; else
; if
; RPN'ized expression: "IsParam "
; Expanded expression: "(@6) *(2) "
; Fused expression:    "*(2) (@6) "
    mov     ax, [bp+6]
; JumpIfZero
    test    ax, ax
    je      L3489
; RPN'ized expression: "( L3491 printf ) "
; Expanded expression: " L3491  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3491:
    db  "prm ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3491 , printf )2 "
    push    L3491
    call    _printf
    sub     sp, -2
    jmp     L3490
L3489:
; else
; RPN'ized expression: "( L3493 printf ) "
; Expanded expression: " L3493  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3493:
    db  "loc ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3493 , printf )2 "
    push    L3493
    call    _printf
    sub     sp, -2
L3490:
L3486:
; {
; loc                 j : (@-10): int
    sub     sp, 2
; for
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-10) 0 =(2) "
; Fused expression:    "=(34) *(@-10) 0 "
    mov     ax, 0
    mov     [bp-10], ax
L3495:
; RPN'ized expression: "j ParseLevel 4 * < "
; Expanded expression: "(@-10) *(2) ParseLevel *(2) 4 * < "
; Fused expression:    "* *ParseLevel 4 < *(@-10) ax IF! "
    mov     ax, [_ParseLevel]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, [bp-10]
    cmp     ax, cx
    jge     L3498
    jmp     L3497
L3496:
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-10) ++p(2) "
; Fused expression:    "++p(2) *(@-10) "
    mov     ax, [bp-10]
    inc     word [bp-10]
    jmp     L3495
L3497:
; RPN'ized expression: "( L3499 printf ) "
; Expanded expression: " L3499  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3499:
    db  " ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3499 , printf )2 "
    push    L3499
    call    _printf
    sub     sp, -2
    jmp     L3496
L3498:
    sub     sp, -2
; }
; if
; RPN'ized expression: "IsParam ( L3503 , IdentTable v + strcmp ) 0 == && i 1 + SyntaxStackCnt < && "
; Expanded expression: "(@6) *(2) _Bool [sh&&->3506]  L3503  IdentTable (@-8) *(2) +  strcmp ()4 0 == _Bool &&[3506] _Bool [sh&&->3505] (@-2) *(2) 1 + SyntaxStackCnt *(2) < _Bool &&[3505] "
; SEGMENT _TEXT
SEGMENT _DATA
L3503:
    db  "<something>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "*(2) (@6) _Bool [sh&&->3506] ( L3503 , + IdentTable *(@-8) , strcmp )4 == ax 0 _Bool &&[3506] _Bool [sh&&->3505] + *(@-2) 1 < ax *SyntaxStackCnt _Bool &&[3505] "
    mov     ax, [bp+6]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3506
    push    L3503
    mov     ax, _IdentTable
    add     ax, [bp-8]
    push    ax
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3506:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3505
    mov     ax, [bp-2]
    add     ax, 1
    cmp     ax, [_SyntaxStackCnt]
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3505:
; JumpIfZero
    test    ax, ax
    je      L3501
; {
; if
; RPN'ized expression: "SyntaxStack i 1 + + *u 0 + *u 15 == "
; Expanded expression: "SyntaxStack (@-2) *(2) 1 + 4 * + 0 + *(2) 15 == "
; Fused expression:    "+ *(@-2) 1 * ax 4 + SyntaxStack ax + ax 0 == *ax 15 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 15
    jne     L3507
; continue
    sub     sp, -4
    jmp     L3467
L3507:
; }
L3501:
; RPN'ized expression: "( IdentTable v + , L3509 printf ) "
; Expanded expression: " IdentTable (@-8) *(2) +  L3509  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3509:
    db  "%s : ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( + IdentTable *(@-8) , L3509 , printf )4 "
    mov     ax, _IdentTable
    add     ax, [bp-8]
    push    ax
    push    L3509
    call    _printf
    sub     sp, -4
; break
    jmp     L3470
; case
; RPN'ized expression: "91 "
; Expanded expression: "91 "
; Expression value: 91
    jmp     L3479
L3478:
    cmp     ax, 91
    jne     L3511
L3479:
; RPN'ized expression: "( L3513 printf ) "
; Expanded expression: " L3513  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3513:
    db  "[",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3513 , printf )2 "
    push    L3513
    call    _printf
    sub     sp, -2
; break
    jmp     L3470
; case
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
    jmp     L3512
L3511:
    cmp     ax, 1
    jne     L3515
L3512:
; RPN'ized expression: "( v , L3517 printf ) "
; Expanded expression: " (@-8) *(2)  L3517  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3517:
    db  "%d",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( *(2) (@-8) , L3517 , printf )4 "
    push    word [bp-8]
    push    L3517
    call    _printf
    sub     sp, -4
; break
    jmp     L3470
; case
; RPN'ized expression: "93 "
; Expanded expression: "93 "
; Expression value: 93
    jmp     L3516
L3515:
    cmp     ax, 93
    jne     L3519
L3516:
; RPN'ized expression: "( L3521 printf ) "
; Expanded expression: " L3521  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3521:
    db  "] ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3521 , printf )2 "
    push    L3521
    call    _printf
    sub     sp, -2
; break
    jmp     L3470
; case
; RPN'ized expression: "40 "
; Expanded expression: "40 "
; Expression value: 40
    jmp     L3520
L3519:
    cmp     ax, 40
    jne     L3523
L3520:
; {
; loc                 noparams : (@-10): int
    sub     sp, 2
; loc                 j : (@-12): int
    sub     sp, 2
; =
; RPN'ized expression: "i ++ "
; Expanded expression: "(@-2) ++(2) "
; Fused expression:    "++(2) *(@-2) =(34) *(@-12) ax "
    inc     word [bp-2]
    mov     ax, [bp-2]
    mov     [bp-12], ax
; loc                 c : (@-14): int
    sub     sp, 2
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "=(34) *(@-14) 1 "
    mov     ax, 1
    mov     [bp-14], ax
; while
; RPN'ized expression: "c "
; Expanded expression: "(@-14) *(2) "
L3525:
; Fused expression:    "*(2) (@-14) "
    mov     ax, [bp-14]
; JumpIfZero
    test    ax, ax
    je      L3526
; {
; loc                     t : (@-16): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack j ++p + *u 0 + *u "
; Expanded expression: "SyntaxStack (@-12) ++p(2) 4 * + 0 + *(2) "
; Fused expression:    "++p(2) *(@-12) * ax 4 + SyntaxStack ax + ax 0 =(34) *(@-16) *ax "
    mov     ax, [bp-12]
    inc     word [bp-12]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-16], ax
; RPN'ized expression: "c t 40 == t 41 == - += "
; Expanded expression: "(@-14) (@-16) *(2) 40 == (@-16) *(2) 41 == - +=(2) "
; Fused expression:    "== *(@-16) 40 push-ax == *(@-16) 41 - *sp ax +=(34) *(@-14) ax "
    mov     ax, [bp-16]
    cmp     ax, 40
    sete    al
    cbw
    push    ax
    mov     ax, [bp-16]
    cmp     ax, 41
    sete    al
    cbw
    mov     cx, ax
    pop     ax
    sub     ax, cx
    mov     cx, ax
    mov     ax, [bp-14]
    add     ax, cx
    mov     [bp-14], ax
    sub     sp, -2
; }
    jmp     L3525
L3526:
; RPN'ized expression: "noparams i 1 + j == SyntaxStack i 1 + + *u 0 + *u 17 == || = "
; Expanded expression: "(@-10) (@-2) *(2) 1 + (@-12) *(2) == _Bool [sh||->3527] SyntaxStack (@-2) *(2) 1 + 4 * + 0 + *(2) 17 == _Bool ||[3527] =(2) "
; Fused expression:    "+ *(@-2) 1 == ax *(@-12) _Bool [sh||->3527] + *(@-2) 1 * ax 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool ||[3527] =(34) *(@-10) ax "
    mov     ax, [bp-2]
    add     ax, 1
    cmp     ax, [bp-12]
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3527
    mov     ax, [bp-2]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3527:
    mov     [bp-10], ax
; RPN'ized expression: "( L3528 printf ) "
; Expanded expression: " L3528  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3528:
    db  "(",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3528 , printf )2 "
    push    L3528
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "noparams "
; Expanded expression: "(@-10) *(2) "
; Fused expression:    "*(2) (@-10) "
    mov     ax, [bp-10]
; JumpIfZero
    test    ax, ax
    je      L3530
; {
; if
; RPN'ized expression: "i 1 + j != "
; Expanded expression: "(@-2) *(2) 1 + (@-12) *(2) != "
; Fused expression:    "+ *(@-2) 1 != ax *(@-12) IF! "
    mov     ax, [bp-2]
    add     ax, 1
    cmp     ax, [bp-12]
    je      L3532
; RPN'ized expression: "( L3534 printf ) "
; Expanded expression: " L3534  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3534:
    db  "void",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3534 , printf )2 "
    push    L3534
    call    _printf
    sub     sp, -2
L3532:
; }
    jmp     L3531
L3530:
; else
; {
; RPN'ized expression: "( L3536 printf ) "
; Expanded expression: " L3536  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3536:
    db  10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3536 , printf )2 "
    push    L3536
    call    _printf
    sub     sp, -2
; RPN'ized expression: "ParseLevel ++p "
; Expanded expression: "ParseLevel ++p(2) "
; Fused expression:    "++p(2) *ParseLevel "
    mov     ax, [_ParseLevel]
    inc     word [_ParseLevel]
; RPN'ized expression: "( 1 , i ShowDecl ) "
; Expanded expression: " 1  (@-2) *(2)  ShowDecl ()4 "
; Fused expression:    "( 1 , *(2) (@-2) , ShowDecl )4 "
    push    1
    push    word [bp-2]
    call    _ShowDecl
    sub     sp, -4
; RPN'ized expression: "ParseLevel --p "
; Expanded expression: "ParseLevel --p(2) "
; Fused expression:    "--p(2) *ParseLevel "
    mov     ax, [_ParseLevel]
    dec     word [_ParseLevel]
; }
L3531:
; RPN'ized expression: "i j 1 - = "
; Expanded expression: "(@-2) (@-12) *(2) 1 - =(2) "
; Fused expression:    "- *(@-12) 1 =(34) *(@-2) ax "
    mov     ax, [bp-12]
    sub     ax, 1
    mov     [bp-2], ax
; if
; RPN'ized expression: "noparams 0 == "
; Expanded expression: "(@-10) *(2) 0 == "
; Fused expression:    "== *(@-10) 0 IF! "
    mov     ax, [bp-10]
    cmp     ax, 0
    jne     L3538
; {
; RPN'ized expression: "( L3540 printf ) "
; Expanded expression: " L3540  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3540:
    db  "; ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3540 , printf )2 "
    push    L3540
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( L3542 printf ) "
; Expanded expression: " L3542  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3542:
    db  "    ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3542 , printf )2 "
    push    L3542
    call    _printf
    sub     sp, -2
; {
; loc                         j : (@-16): int
    sub     sp, 2
; for
; RPN'ized expression: "j 0 = "
; Expanded expression: "(@-16) 0 =(2) "
; Fused expression:    "=(34) *(@-16) 0 "
    mov     ax, 0
    mov     [bp-16], ax
L3544:
; RPN'ized expression: "j ParseLevel 4 * < "
; Expanded expression: "(@-16) *(2) ParseLevel *(2) 4 * < "
; Fused expression:    "* *ParseLevel 4 < *(@-16) ax IF! "
    mov     ax, [_ParseLevel]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, [bp-16]
    cmp     ax, cx
    jge     L3547
    jmp     L3546
L3545:
; RPN'ized expression: "j ++p "
; Expanded expression: "(@-16) ++p(2) "
; Fused expression:    "++p(2) *(@-16) "
    mov     ax, [bp-16]
    inc     word [bp-16]
    jmp     L3544
L3546:
; RPN'ized expression: "( L3548 printf ) "
; Expanded expression: " L3548  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3548:
    db  " ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3548 , printf )2 "
    push    L3548
    call    _printf
    sub     sp, -2
    jmp     L3545
L3547:
    sub     sp, -2
; }
; }
L3538:
; RPN'ized expression: "( L3550 printf ) "
; Expanded expression: " L3550  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3550:
    db  ") ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3550 , printf )2 "
    push    L3550
    call    _printf
    sub     sp, -2
    sub     sp, -6
; }
; break
    jmp     L3470
; case
; RPN'ized expression: "41 "
; Expanded expression: "41 "
; Expression value: 41
    jmp     L3524
L3523:
    cmp     ax, 41
    jne     L3552
L3524:
; return
    jmp     L3463
; default
L3471:
; switch
; RPN'ized expression: "tok "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
    jmp     L3556
; {
; case
; RPN'ized expression: "17 "
; Expanded expression: "17 "
; Expression value: 17
    jmp     L3557
L3556:
    cmp     ax, 17
    jne     L3558
L3557:
; case
; RPN'ized expression: "18 "
; Expanded expression: "18 "
; Expression value: 18
    jmp     L3559
L3558:
    cmp     ax, 18
    jne     L3560
L3559:
; case
; RPN'ized expression: "19 "
; Expanded expression: "19 "
; Expression value: 19
    jmp     L3561
L3560:
    cmp     ax, 19
    jne     L3562
L3561:
; case
; RPN'ized expression: "15 "
; Expanded expression: "15 "
; Expression value: 15
    jmp     L3563
L3562:
    cmp     ax, 15
    jne     L3564
L3563:
; RPN'ized expression: "( ( tok GetTokenName ) , L3566 printf ) "
; Expanded expression: "  (@-6) *(2)  GetTokenName ()2  L3566  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3566:
    db  "%s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-6) , GetTokenName )2 , L3566 , printf )4 "
    push    word [bp-6]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3566
    call    _printf
    sub     sp, -4
; break
    jmp     L3554
; default
L3555:
; RPN'ized expression: "( ( tok GetTokenName ) , L3568 printf ) "
; Expanded expression: "  (@-6) *(2)  GetTokenName ()2  L3568  printf ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3568:
    db  "%s ",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-6) , GetTokenName )2 , L3568 , printf )4 "
    push    word [bp-6]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3568
    call    _printf
    sub     sp, -4
; break
    jmp     L3554
; }
    jmp     L3554
L3564:
    jmp     L3555
L3554:
; break
    jmp     L3470
; }
    jmp     L3470
L3552:
    jmp     L3471
L3470:
    sub     sp, -4
; }
    jmp     L3467
L3469:
L3463:
    leave
    ret
; SEGMENT _TEXT
; glb DumpSynDecls : (void) void
SEGMENT _TEXT
    global  _DumpSynDecls
_DumpSynDecls:
    push    bp
    mov     bp, sp
; RPN'ized expression: "( L3571 printf ) "
; Expanded expression: " L3571  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3571:
    db  10,"; Syntax/declaration table/stack:",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3571 , printf )2 "
    push    L3571
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( 2048 SyntaxStack 0 + *u sizeof * , SyntaxStackCnt SyntaxStack 0 + *u sizeof * , L3573 printf ) "
; Expanded expression: " 8192  SyntaxStackCnt *(2) 4 *  L3573  printf ()6 "
; SEGMENT _TEXT
SEGMENT _DATA
L3573:
    db  "; Bytes used: %d/%d",10,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( 8192 , * *SyntaxStackCnt 4 , L3573 , printf )6 "
    push    8192
    mov     ax, [_SyntaxStackCnt]
    imul    ax, ax, 4
    push    ax
    push    L3573
    call    _printf
    sub     sp, -6
L3570:
    leave
    ret
; SEGMENT _TEXT
; glb ParseArrayDimension : (void) int
SEGMENT _TEXT
    global  _ParseArrayDimension
_ParseArrayDimension:
    push    bp
    mov     bp, sp
; loc     tok : (@-2): int
    sub     sp, 2
; loc     gotUnary : (@-4): int
    sub     sp, 2
; loc     synPtr : (@-6): int
    sub     sp, 2
; loc     constExpr : (@-8): int
    sub     sp, 2
; loc     exprVal : (@-10): int
    sub     sp, 2
; loc     oldssp : (@-12): int
    sub     sp, 2
; loc     oldesp : (@-14): int
    sub     sp, 2
; loc     undoIdents : (@-16): int
    sub     sp, 2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@-2)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@-2) ax "
    call    _GetToken
    mov     [bp-2], ax
; RPN'ized expression: "oldssp SyntaxStackCnt = "
; Expanded expression: "(@-12) SyntaxStackCnt *(2) =(2) "
; Fused expression:    "=(34) *(@-12) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-12], ax
; RPN'ized expression: "oldesp sp = "
; Expanded expression: "(@-14) sp *(2) =(2) "
; Fused expression:    "=(34) *(@-14) *sp "
    mov     ax, [_sp]
    mov     [bp-14], ax
; RPN'ized expression: "undoIdents IdentTableLen = "
; Expanded expression: "(@-16) IdentTableLen *(2) =(2) "
; Fused expression:    "=(34) *(@-16) *IdentTableLen "
    mov     ax, [_IdentTableLen]
    mov     [bp-16], ax
; RPN'ized expression: "tok ( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) = "
; Expanded expression: "(@-2)  (@-10)  (@-8)  (@-6)  (@-4)  (@-2) *(2)  ParseExpr ()10 =(2) "
; Fused expression:    "( (@-10) , (@-8) , (@-6) , (@-4) , *(2) (@-2) , ParseExpr )10 =(34) *(@-2) ax "
    lea     ax, [bp-10]
    push    ax
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    push    word [bp-2]
    call    _ParseExpr
    sub     sp, -10
    mov     [bp-2], ax
; RPN'ized expression: "IdentTableLen undoIdents = "
; Expanded expression: "IdentTableLen (@-16) *(2) =(2) "
; Fused expression:    "=(34) *IdentTableLen *(@-16) "
    mov     ax, [bp-16]
    mov     [_IdentTableLen], ax
; RPN'ized expression: "SyntaxStackCnt oldssp = "
; Expanded expression: "SyntaxStackCnt (@-12) *(2) =(2) "
; Fused expression:    "=(34) *SyntaxStackCnt *(@-12) "
    mov     ax, [bp-12]
    mov     [_SyntaxStackCnt], ax
; RPN'ized expression: "sp oldesp = "
; Expanded expression: "sp (@-14) *(2) =(2) "
; Fused expression:    "=(34) *sp *(@-14) "
    mov     ax, [bp-14]
    mov     [_sp], ax
; if
; RPN'ized expression: "tok 93 != "
; Expanded expression: "(@-2) *(2) 93 != "
; Fused expression:    "!= *(@-2) 93 IF! "
    mov     ax, [bp-2]
    cmp     ax, 93
    je      L3576
; RPN'ized expression: "( ( tok GetTokenName ) , L3578 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L3578  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3578:
    db  "Error: ParseArrayDimension(): Unsupported or invalid array dimension (token %s)",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L3578 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3578
    call    _error
    sub     sp, -4
L3576:
; if
; RPN'ized expression: "constExpr 0 == "
; Expanded expression: "(@-8) *(2) 0 == "
; Fused expression:    "== *(@-8) 0 IF! "
    mov     ax, [bp-8]
    cmp     ax, 0
    jne     L3580
; RPN'ized expression: "( L3582 error ) "
; Expanded expression: " L3582  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3582:
    db  "Error: ParseArrayDimension(): non-constant array dimension",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3582 , error )2 "
    push    L3582
    call    _error
    sub     sp, -2
L3580:
; if
; RPN'ized expression: "exprVal 1 < "
; Expanded expression: "(@-10) *(2) 1 < "
; Fused expression:    "< *(@-10) 1 IF! "
    mov     ax, [bp-10]
    cmp     ax, 1
    jge     L3584
; RPN'ized expression: "( L3586 error ) "
; Expanded expression: " L3586  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3586:
    db  "Error: ParseArrayDimension(): array dimension less than 1",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3586 , error )2 "
    push    L3586
    call    _error
    sub     sp, -2
L3584:
; RPN'ized expression: "( exprVal , 1 PushSyntax2 ) "
; Expanded expression: " (@-10) *(2)  1  PushSyntax2 ()4 "
; Fused expression:    "( *(2) (@-10) , 1 , PushSyntax2 )4 "
    push    word [bp-10]
    push    1
    call    _PushSyntax2
    sub     sp, -4
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L3575
L3575:
    leave
    ret
; SEGMENT _TEXT
; glb ParseFxnParams : (void) void
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
; glb ParseBlock : (
; prm     BrkCntSwchTarget : * int
; prm     switchBody : int
;     ) int
; glb AddFxnParamSymbols : (
; prm     SyntaxPtr : int
;     ) void
; glb ParseDerived : (void) int
SEGMENT _TEXT
    global  _ParseDerived
_ParseDerived:
    push    bp
    mov     bp, sp
; loc     tok : (@-2): int
    sub     sp, 2
; loc     stars : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-4) 0 "
    mov     ax, 0
    mov     [bp-4], ax
; loc     lastSyntaxPtr : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStackCnt "
; Expanded expression: "SyntaxStackCnt *(2) "
; Fused expression:    "=(34) *(@-6) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-6], ax
; while
; RPN'ized expression: "tok ( GetToken ) = 42 == "
; Expanded expression: "(@-2)  GetToken ()0 =(2) 42 == "
L3589:
; Fused expression:    "( GetToken )0 =(34) *(@-2) ax == ax 42 IF! "
    call    _GetToken
    mov     [bp-2], ax
    cmp     ax, 42
    jne     L3590
; RPN'ized expression: "stars ++p "
; Expanded expression: "(@-4) ++p(2) "
; Fused expression:    "++p(2) *(@-4) "
    mov     ax, [bp-4]
    inc     word [bp-4]
    jmp     L3589
L3590:
; if
; RPN'ized expression: "tok 40 == "
; Expanded expression: "(@-2) *(2) 40 == "
; Fused expression:    "== *(@-2) 40 IF! "
    mov     ax, [bp-2]
    cmp     ax, 40
    jne     L3591
; {
; RPN'ized expression: "tok ( ParseDerived ) = "
; Expanded expression: "(@-2)  ParseDerived ()0 =(2) "
; Fused expression:    "( ParseDerived )0 =(34) *(@-2) ax "
    call    _ParseDerived
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 41 != "
; Expanded expression: "(@-2) *(2) 41 != "
; Fused expression:    "!= *(@-2) 41 IF! "
    mov     ax, [bp-2]
    cmp     ax, 41
    je      L3593
; RPN'ized expression: "( L3595 error ) "
; Expanded expression: " L3595  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3595:
    db  "Error: ParseDerived(): ')' expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3595 , error )2 "
    push    L3595
    call    _error
    sub     sp, -2
L3593:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@-2)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@-2) ax "
    call    _GetToken
    mov     [bp-2], ax
; }
    jmp     L3592
L3591:
; else
; if
; RPN'ized expression: "tok 16 == "
; Expanded expression: "(@-2) *(2) 16 == "
; Fused expression:    "== *(@-2) 16 IF! "
    mov     ax, [bp-2]
    cmp     ax, 16
    jne     L3597
; {
; RPN'ized expression: "( ( ( GetTokenIdentName ) AddIdent ) , tok PushSyntax2 ) "
; Expanded expression: "   GetTokenIdentName ()0  AddIdent ()2  (@-2) *(2)  PushSyntax2 ()4 "
; Fused expression:    "( ( ( GetTokenIdentName )0 , AddIdent )2 , *(2) (@-2) , PushSyntax2 )4 "
    call    _GetTokenIdentName
    push    ax
    call    _AddIdent
    sub     sp, -2
    push    ax
    push    word [bp-2]
    call    _PushSyntax2
    sub     sp, -4
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@-2)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@-2) ax "
    call    _GetToken
    mov     [bp-2], ax
; }
    jmp     L3598
L3597:
; else
; {
; RPN'ized expression: "( ( L3599 AddIdent ) , 16 PushSyntax2 ) "
; Expanded expression: "  L3599  AddIdent ()2  16  PushSyntax2 ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3599:
    db  "<something>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( L3599 , AddIdent )2 , 16 , PushSyntax2 )4 "
    push    L3599
    call    _AddIdent
    sub     sp, -2
    push    ax
    push    16
    call    _PushSyntax2
    sub     sp, -4
; }
L3598:
L3592:
; if
; RPN'ized expression: "tok 91 == "
; Expanded expression: "(@-2) *(2) 91 == "
; Fused expression:    "== *(@-2) 91 IF! "
    mov     ax, [bp-2]
    cmp     ax, 91
    jne     L3601
; {
; while
; RPN'ized expression: "tok 91 == "
; Expanded expression: "(@-2) *(2) 91 == "
L3603:
; Fused expression:    "== *(@-2) 91 IF! "
    mov     ax, [bp-2]
    cmp     ax, 91
    jne     L3604
; {
; loc             oldsp : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStackCnt "
; Expanded expression: "SyntaxStackCnt *(2) "
; Fused expression:    "=(34) *(@-8) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-8], ax
; RPN'ized expression: "( 17 PushSyntax ) "
; Expanded expression: " 17  PushSyntax ()2 "
; Fused expression:    "( 17 , PushSyntax )2 "
    push    17
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "( tok PushSyntax ) "
; Expanded expression: " (@-2) *(2)  PushSyntax ()2 "
; Fused expression:    "( *(2) (@-2) , PushSyntax )2 "
    push    word [bp-2]
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "tok ( ParseArrayDimension ) = "
; Expanded expression: "(@-2)  ParseArrayDimension ()0 =(2) "
; Fused expression:    "( ParseArrayDimension )0 =(34) *(@-2) ax "
    call    _ParseArrayDimension
    mov     [bp-2], ax
; if
; RPN'ized expression: "tok 93 != "
; Expanded expression: "(@-2) *(2) 93 != "
; Fused expression:    "!= *(@-2) 93 IF! "
    mov     ax, [bp-2]
    cmp     ax, 93
    je      L3605
; RPN'ized expression: "( L3607 error ) "
; Expanded expression: " L3607  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3607:
    db  "Error: ParseDerived(): ']' expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3607 , error )2 "
    push    L3607
    call    _error
    sub     sp, -2
L3605:
; RPN'ized expression: "( 93 PushSyntax ) "
; Expanded expression: " 93  PushSyntax ()2 "
; Fused expression:    "( 93 , PushSyntax )2 "
    push    93
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@-2)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@-2) ax "
    call    _GetToken
    mov     [bp-2], ax
; RPN'ized expression: "( 1 , oldsp DeleteSyntax ) "
; Expanded expression: " 1  (@-8) *(2)  DeleteSyntax ()4 "
; Fused expression:    "( 1 , *(2) (@-8) , DeleteSyntax )4 "
    push    1
    push    word [bp-8]
    call    _DeleteSyntax
    sub     sp, -4
    sub     sp, -2
; }
    jmp     L3603
L3604:
; }
    jmp     L3602
L3601:
; else
; if
; RPN'ized expression: "tok 40 == "
; Expanded expression: "(@-2) *(2) 40 == "
; Fused expression:    "== *(@-2) 40 IF! "
    mov     ax, [bp-2]
    cmp     ax, 40
    jne     L3609
; {
; RPN'ized expression: "( tok PushSyntax ) "
; Expanded expression: " (@-2) *(2)  PushSyntax ()2 "
; Fused expression:    "( *(2) (@-2) , PushSyntax )2 "
    push    word [bp-2]
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "ParseLevel ++p "
; Expanded expression: "ParseLevel ++p(2) "
; Fused expression:    "++p(2) *ParseLevel "
    mov     ax, [_ParseLevel]
    inc     word [_ParseLevel]
; RPN'ized expression: "( ParseFxnParams ) "
; Expanded expression: " ParseFxnParams ()0 "
; Fused expression:    "( ParseFxnParams )0 "
    call    _ParseFxnParams
; RPN'ized expression: "ParseLevel --p "
; Expanded expression: "ParseLevel --p(2) "
; Fused expression:    "--p(2) *ParseLevel "
    mov     ax, [_ParseLevel]
    dec     word [_ParseLevel]
; RPN'ized expression: "( 41 PushSyntax ) "
; Expanded expression: " 41  PushSyntax ()2 "
; Fused expression:    "( 41 , PushSyntax )2 "
    push    41
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@-2)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@-2) ax "
    call    _GetToken
    mov     [bp-2], ax
; }
L3609:
L3602:
; while
; RPN'ized expression: "stars --p "
; Expanded expression: "(@-4) --p(2) "
L3611:
; Fused expression:    "--p(2) *(@-4) "
    mov     ax, [bp-4]
    dec     word [bp-4]
; JumpIfZero
    test    ax, ax
    je      L3612
; RPN'ized expression: "( 42 PushSyntax ) "
; Expanded expression: " 42  PushSyntax ()2 "
; Fused expression:    "( 42 , PushSyntax )2 "
    push    42
    call    _PushSyntax
    sub     sp, -2
    jmp     L3611
L3612:
; if
; RPN'ized expression: "tok 41 == "
; Expanded expression: "(@-2) *(2) 41 == "
; Fused expression:    "== *(@-2) 41 IF! "
    mov     ax, [bp-2]
    cmp     ax, 41
    jne     L3613
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L3588
L3613:
; if
; RPN'ized expression: "tok 123 == "
; Expanded expression: "(@-2) *(2) 123 == "
; Fused expression:    "== *(@-2) 123 IF! "
    mov     ax, [bp-2]
    cmp     ax, 123
    jne     L3615
; {
; loc         fxn : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "lastSyntaxPtr 1 + SyntaxStackCnt < SyntaxStack lastSyntaxPtr 1 + + *u 0 + *u 40 == && "
; Expanded expression: "(@-6) *(2) 1 + SyntaxStackCnt *(2) < _Bool [sh&&->3617] SyntaxStack (@-6) *(2) 1 + 4 * + 0 + *(2) 40 == _Bool &&[3617] "
; Fused expression:    "+ *(@-6) 1 < ax *SyntaxStackCnt _Bool [sh&&->3617] + *(@-6) 1 * ax 4 + SyntaxStack ax + ax 0 == *ax 40 _Bool &&[3617] =(34) *(@-8) ax "
    mov     ax, [bp-6]
    add     ax, 1
    cmp     ax, [_SyntaxStackCnt]
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3617
    mov     ax, [bp-6]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3617:
    mov     [bp-8], ax
; if
; RPN'ized expression: "fxn 0 == ExprLevel || "
; Expanded expression: "(@-8) *(2) 0 == _Bool [sh||->3620] ExprLevel *(2) _Bool ||[3620] "
; Fused expression:    "== *(@-8) 0 _Bool [sh||->3620] *(2) ExprLevel _Bool ||[3620] "
    mov     ax, [bp-8]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3620
    mov     ax, [_ExprLevel]
    test    ax, ax
    setne   al
    cbw
L3620:
; JumpIfZero
    test    ax, ax
    je      L3618
; RPN'ized expression: "( L3621 error ) "
; Expanded expression: " L3621  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3621:
    db  "Error: ParseDerived(): '{' unexpected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3621 , error )2 "
    push    L3621
    call    _error
    sub     sp, -2
L3618:
; if
; RPN'ized expression: "ParseLevel "
; Expanded expression: "ParseLevel *(2) "
; Fused expression:    "*(2) ParseLevel "
    mov     ax, [_ParseLevel]
; JumpIfZero
    test    ax, ax
    je      L3623
; RPN'ized expression: "( L3625 error ) "
; Expanded expression: " L3625  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3625:
    db  "Error: ParseDerived(): Cannot define a nested function",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3625 , error )2 "
    push    L3625
    call    _error
    sub     sp, -2
L3623:
    sub     sp, -2
; }
L3615:
; if
; RPN'ized expression: "tok 0 == ( tok , L3629 strchr ) 0 == || "
; Expanded expression: "(@-2) *(2) 0 == _Bool [sh||->3631]  (@-2) *(2)  L3629  strchr ()4 0 == _Bool ||[3631] "
; SEGMENT _TEXT
SEGMENT _DATA
L3629:
    db  ",;{=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "== *(@-2) 0 _Bool [sh||->3631] ( *(2) (@-2) , L3629 , strchr )4 == ax 0 _Bool ||[3631] "
    mov     ax, [bp-2]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3631
    push    word [bp-2]
    push    L3629
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3631:
; JumpIfZero
    test    ax, ax
    je      L3627
; RPN'ized expression: "( ( tok GetTokenName ) , L3632 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L3632  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3632:
    db  "Error: ParseDerived(): unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L3632 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3632
    call    _error
    sub     sp, -4
L3627:
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L3588
L3588:
    leave
    ret
; SEGMENT _TEXT
; glb ParseDecl : (
; prm     tok : int
;     ) int
SEGMENT _TEXT
    global  _ParseDecl
_ParseDecl:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; loc     base : (@-2): int
    sub     sp, 2
; loc     lastSyntaxPtr : (@-4): int
    sub     sp, 2
; loc     external : (@-6): int
    sub     sp, 2
; =
; RPN'ized expression: "tok 108 == "
; Expanded expression: "(@4) *(2) 108 == "
; Fused expression:    "== *(@4) 108 =(34) *(@-6) ax "
    mov     ax, [bp+4]
    cmp     ax, 108
    sete    al
    cbw
    mov     [bp-6], ax
; if
; RPN'ized expression: "external "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
; JumpIfZero
    test    ax, ax
    je      L3635
; {
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( 1 , tok TokenStartsDeclaration ) 0 == "
; Expanded expression: " 1  (@4) *(2)  TokenStartsDeclaration ()4 0 == "
; Fused expression:    "( 1 , *(2) (@4) , TokenStartsDeclaration )4 == ax 0 IF! "
    push    1
    push    word [bp+4]
    call    _TokenStartsDeclaration
    sub     sp, -4
    cmp     ax, 0
    jne     L3637
; RPN'ized expression: "( ( tok GetTokenName ) , L3639 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L3639  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3639:
    db  "Error: ParseDecl(): unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L3639 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3639
    call    _error
    sub     sp, -4
L3637:
; }
L3635:
; RPN'ized expression: "base tok = "
; Expanded expression: "(@-2) (@4) *(2) =(2) "
; Fused expression:    "=(34) *(@-2) *(@4) "
    mov     ax, [bp+4]
    mov     [bp-2], ax
; for
L3641:
    jmp     L3643
L3642:
    jmp     L3641
L3643:
; {
; RPN'ized expression: "lastSyntaxPtr SyntaxStackCnt = "
; Expanded expression: "(@-4) SyntaxStackCnt *(2) =(2) "
; Fused expression:    "=(34) *(@-4) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-4], ax
; RPN'ized expression: "tok ( ParseDerived ) = "
; Expanded expression: "(@4)  ParseDerived ()0 =(2) "
; Fused expression:    "( ParseDerived )0 =(34) *(@4) ax "
    call    _ParseDerived
    mov     [bp+4], ax
; RPN'ized expression: "( base PushSyntax ) "
; Expanded expression: " (@-2) *(2)  PushSyntax ()2 "
; Fused expression:    "( *(2) (@-2) , PushSyntax )2 "
    push    word [bp-2]
    call    _PushSyntax
    sub     sp, -2
; if
; RPN'ized expression: "tok ( tok , L3647 strchr ) && tok 41 == ExprLevel && || "
; Expanded expression: "(@4) *(2) _Bool [sh&&->3651]  (@4) *(2)  L3647  strchr ()4 _Bool &&[3651] _Bool [sh||->3649] (@4) *(2) 41 == _Bool [sh&&->3650] ExprLevel *(2) _Bool &&[3650] _Bool ||[3649] "
; SEGMENT _TEXT
SEGMENT _DATA
L3647:
    db  ",;{=",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "*(2) (@4) _Bool [sh&&->3651] ( *(2) (@4) , L3647 , strchr )4 _Bool &&[3651] _Bool [sh||->3649] == *(@4) 41 _Bool [sh&&->3650] *(2) ExprLevel _Bool &&[3650] _Bool ||[3649] "
    mov     ax, [bp+4]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3651
    push    word [bp+4]
    push    L3647
    call    _strchr
    sub     sp, -4
    test    ax, ax
    setne   al
    cbw
L3651:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3649
    mov     ax, [bp+4]
    cmp     ax, 41
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3650
    mov     ax, [_ExprLevel]
    test    ax, ax
    setne   al
    cbw
L3650:
    test    ax, ax
    setne   al
    cbw
L3649:
; JumpIfZero
    test    ax, ax
    je      L3645
; {
; loc             localAllocSize : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-8) 0 "
    mov     ax, 0
    mov     [bp-8], ax
; loc             globalAllocSize : (@-10): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-10) 0 "
    mov     ax, 0
    mov     [bp-10], ax
; if
; RPN'ized expression: "base 17 == "
; Expanded expression: "(@-2) *(2) 17 == "
; Fused expression:    "== *(@-2) 17 IF! "
    mov     ax, [bp-2]
    cmp     ax, 17
    jne     L3652
; {
; loc                 t : (@-12): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack SyntaxStackCnt 2 - + *u 0 + *u "
; Expanded expression: "SyntaxStack SyntaxStackCnt *(2) 2 - 4 * + 0 + *(2) "
; Fused expression:    "- *SyntaxStackCnt 2 * ax 4 + SyntaxStack ax + ax 0 =(34) *(@-12) *ax "
    mov     ax, [_SyntaxStackCnt]
    sub     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-12], ax
; if
; RPN'ized expression: "t 42 != t 41 != && "
; Expanded expression: "(@-12) *(2) 42 != _Bool [sh&&->3656] (@-12) *(2) 41 != _Bool &&[3656] "
; Fused expression:    "!= *(@-12) 42 _Bool [sh&&->3656] != *(@-12) 41 _Bool &&[3656] "
    mov     ax, [bp-12]
    cmp     ax, 42
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3656
    mov     ax, [bp-12]
    cmp     ax, 41
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L3656:
; JumpIfZero
    test    ax, ax
    je      L3654
; RPN'ized expression: "( IdentTable SyntaxStack lastSyntaxPtr + *u 1 + *u + , L3657 error ) "
; Expanded expression: " IdentTable SyntaxStack (@-4) *(2) 4 * + 2 + *(2) +  L3657  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3657:
    db  "Error: ParseDecl(): Cannot declare a variable ('%s') of type 'void'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-4) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , L3657 , error )4 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    push    L3657
    call    _error
    sub     sp, -4
L3654:
    sub     sp, -2
; }
L3652:
; if
; RPN'ized expression: "SyntaxStack lastSyntaxPtr 1 + + *u 0 + *u 40 != "
; Expanded expression: "SyntaxStack (@-4) *(2) 1 + 4 * + 0 + *(2) 40 != "
; Fused expression:    "+ *(@-4) 1 * ax 4 + SyntaxStack ax + ax 0 != *ax 40 IF! "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    je      L3659
; {
; loc                 sz : (@-12): int
    sub     sp, 2
; =
; RPN'ized expression: "( lastSyntaxPtr GetDeclSize ) "
; Expanded expression: " (@-4) *(2)  GetDeclSize ()2 "
; Fused expression:    "( *(2) (@-4) , GetDeclSize )2 =(34) *(@-12) ax "
    push    word [bp-4]
    call    _GetDeclSize
    sub     sp, -2
    mov     [bp-12], ax
; if
; RPN'ized expression: "sz 0 <= "
; Expanded expression: "(@-12) *(2) 0 <= "
; Fused expression:    "<= *(@-12) 0 IF! "
    mov     ax, [bp-12]
    cmp     ax, 0
    jg      L3661
; RPN'ized expression: "( L3663 error ) "
; Expanded expression: " L3663  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3663:
    db  "Error: ParseDecl(): GetDeclSize() <= 0 (incomplete types aren't supported)",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3663 , error )2 "
    push    L3663
    call    _error
    sub     sp, -2
L3661:
; if
; RPN'ized expression: "ParseLevel external 0 == && ExprLevel 0 == && "
; Expanded expression: "ParseLevel *(2) _Bool [sh&&->3668] (@-6) *(2) 0 == _Bool &&[3668] _Bool [sh&&->3667] ExprLevel *(2) 0 == _Bool &&[3667] "
; Fused expression:    "*(2) ParseLevel _Bool [sh&&->3668] == *(@-6) 0 _Bool &&[3668] _Bool [sh&&->3667] == *ExprLevel 0 _Bool &&[3667] "
    mov     ax, [_ParseLevel]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3668
    mov     ax, [bp-6]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3668:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3667
    mov     ax, [_ExprLevel]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3667:
; JumpIfZero
    test    ax, ax
    je      L3665
; {
; loc                     oldOfs : (@-14): int
    sub     sp, 2
; RPN'ized expression: "oldOfs CurFxnLocalOfs = "
; Expanded expression: "(@-14) CurFxnLocalOfs *(2) =(2) "
; Fused expression:    "=(34) *(@-14) *CurFxnLocalOfs "
    mov     ax, [_CurFxnLocalOfs]
    mov     [bp-14], ax
; RPN'ized expression: "CurFxnLocalOfs sz -= "
; Expanded expression: "CurFxnLocalOfs (@-12) *(2) -=(2) "
; Fused expression:    "-=(34) *CurFxnLocalOfs *(@-12) "
    mov     ax, [_CurFxnLocalOfs]
    sub     ax, [bp-12]
    mov     [_CurFxnLocalOfs], ax
; RPN'ized expression: "CurFxnLocalOfs CurFxnLocalOfs -u SizeOfWord + 1 - SizeOfWord / SizeOfWord * -u = "
; Expanded expression: "CurFxnLocalOfs CurFxnLocalOfs *(2) -u SizeOfWord *(2) + 1 - SizeOfWord *(2) / SizeOfWord *(2) * -u =(2) "
; Fused expression:    "*(2) CurFxnLocalOfs -u + ax *SizeOfWord - ax 1 / ax *SizeOfWord * ax *SizeOfWord -u =(34) *CurFxnLocalOfs ax "
    mov     ax, [_CurFxnLocalOfs]
    neg     ax
    add     ax, [_SizeOfWord]
    sub     ax, 1
    cwd
    idiv    word [_SizeOfWord]
    mul     word [_SizeOfWord]
    neg     ax
    mov     [_CurFxnLocalOfs], ax
; RPN'ized expression: "( CurFxnLocalOfs , 89 , lastSyntaxPtr 1 + InsertSyntax2 ) "
; Expanded expression: " CurFxnLocalOfs *(2)  89  (@-4) *(2) 1 +  InsertSyntax2 ()6 "
; Fused expression:    "( *(2) CurFxnLocalOfs , 89 , + *(@-4) 1 , InsertSyntax2 )6 "
    push    word [_CurFxnLocalOfs]
    push    89
    mov     ax, [bp-4]
    add     ax, 1
    push    ax
    call    _InsertSyntax2
    sub     sp, -6
; RPN'ized expression: "localAllocSize oldOfs CurFxnLocalOfs - = "
; Expanded expression: "(@-8) (@-14) *(2) CurFxnLocalOfs *(2) - =(2) "
; Fused expression:    "- *(@-14) *CurFxnLocalOfs =(34) *(@-8) ax "
    mov     ax, [bp-14]
    sub     ax, [_CurFxnLocalOfs]
    mov     [bp-8], ax
    sub     sp, -2
; }
    jmp     L3666
L3665:
; else
; {
; RPN'ized expression: "globalAllocSize sz = "
; Expanded expression: "(@-10) (@-12) *(2) =(2) "
; Fused expression:    "=(34) *(@-10) *(@-12) "
    mov     ax, [bp-12]
    mov     [bp-10], ax
; }
L3666:
    sub     sp, -2
; }
L3659:
; if
; RPN'ized expression: "( L3671 , IdentTable SyntaxStack lastSyntaxPtr + *u 1 + *u + strcmp ) 0 == "
; Expanded expression: " L3671  IdentTable SyntaxStack (@-4) *(2) 4 * + 2 + *(2) +  strcmp ()4 0 == "
; SEGMENT _TEXT
SEGMENT _DATA
L3671:
    db  "<something>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3671 , * *(@-4) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , strcmp )4 == ax 0 IF! "
    push    L3671
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    jne     L3669
; {
; if
; RPN'ized expression: "ExprLevel 0 == "
; Expanded expression: "ExprLevel *(2) 0 == "
; Fused expression:    "== *ExprLevel 0 IF! "
    mov     ax, [_ExprLevel]
    cmp     ax, 0
    jne     L3673
; RPN'ized expression: "( L3675 error ) "
; Expanded expression: " L3675  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3675:
    db  "Error: ParseDecl(): Identifier name expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3675 , error )2 "
    push    L3675
    call    _error
    sub     sp, -2
L3673:
; }
    jmp     L3670
L3669:
; else
; {
; if
; RPN'ized expression: "ExprLevel "
; Expanded expression: "ExprLevel *(2) "
; Fused expression:    "*(2) ExprLevel "
    mov     ax, [_ExprLevel]
; JumpIfZero
    test    ax, ax
    je      L3677
; RPN'ized expression: "( L3679 error ) "
; Expanded expression: " L3679  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3679:
    db  "Error: ParseDecl(): Identifier name unexpected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3679 , error )2 "
    push    L3679
    call    _error
    sub     sp, -2
L3677:
; }
L3670:
; RPN'ized expression: "( 0 , lastSyntaxPtr ShowDecl ) "
; Expanded expression: " 0  (@-4) *(2)  ShowDecl ()4 "
; Fused expression:    "( 0 , *(2) (@-4) , ShowDecl )4 "
    push    0
    push    word [bp-4]
    call    _ShowDecl
    sub     sp, -4
; if
; RPN'ized expression: "ExprLevel "
; Expanded expression: "ExprLevel *(2) "
; Fused expression:    "*(2) ExprLevel "
    mov     ax, [_ExprLevel]
; JumpIfZero
    test    ax, ax
    je      L3681
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L3634
L3681:
; if
; RPN'ized expression: "localAllocSize "
; Expanded expression: "(@-8) *(2) "
; Fused expression:    "*(2) (@-8) "
    mov     ax, [bp-8]
; JumpIfZero
    test    ax, ax
    je      L3683
; RPN'ized expression: "( localAllocSize GenLocalAlloc ) "
; Expanded expression: " (@-8) *(2)  GenLocalAlloc ()2 "
; Fused expression:    "( *(2) (@-8) , GenLocalAlloc )2 "
    push    word [bp-8]
    call    _GenLocalAlloc
    sub     sp, -2
L3683:
; if
; RPN'ized expression: "globalAllocSize external 0 == && "
; Expanded expression: "(@-10) *(2) _Bool [sh&&->3687] (@-6) *(2) 0 == _Bool &&[3687] "
; Fused expression:    "*(2) (@-10) _Bool [sh&&->3687] == *(@-6) 0 _Bool &&[3687] "
    mov     ax, [bp-10]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3687
    mov     ax, [bp-6]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3687:
; JumpIfZero
    test    ax, ax
    je      L3685
; {
; if
; RPN'ized expression: "OutputFormat 0 != "
; Expanded expression: "OutputFormat *(2) 0 != "
; Fused expression:    "!= *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    je      L3688
; RPN'ized expression: "( DataHeader printf ) "
; Expanded expression: " DataHeader *(2)  printf ()2 "
; Fused expression:    "( *(2) DataHeader , printf )2 "
    push    word [_DataHeader]
    call    _printf
    sub     sp, -2
L3688:
; RPN'ized expression: "( IdentTable SyntaxStack lastSyntaxPtr + *u 1 + *u + GenLabel ) "
; Expanded expression: " IdentTable SyntaxStack (@-4) *(2) 4 * + 2 + *(2) +  GenLabel ()2 "
; Fused expression:    "( * *(@-4) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , GenLabel )2 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    call    _GenLabel
    sub     sp, -2
; }
L3685:
; if
; RPN'ized expression: "external "
; Expanded expression: "(@-6) *(2) "
; Fused expression:    "*(2) (@-6) "
    mov     ax, [bp-6]
; JumpIfZero
    test    ax, ax
    je      L3690
; {
; RPN'ized expression: "( IdentTable SyntaxStack lastSyntaxPtr + *u 1 + *u + GenExtern ) "
; Expanded expression: " IdentTable SyntaxStack (@-4) *(2) 4 * + 2 + *(2) +  GenExtern ()2 "
; Fused expression:    "( * *(@-4) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , GenExtern )2 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    call    _GenExtern
    sub     sp, -2
; }
    jmp     L3691
L3690:
; else
; if
; RPN'ized expression: "tok 61 == "
; Expanded expression: "(@4) *(2) 61 == "
; Fused expression:    "== *(@4) 61 IF! "
    mov     ax, [bp+4]
    cmp     ax, 61
    jne     L3692
; {
; loc                 gotUnary : (@-12): int
    sub     sp, 2
; loc                 synPtr : (@-14): int
    sub     sp, 2
; loc                 constExpr : (@-16): int
    sub     sp, 2
; loc                 exprVal : (@-18): int
    sub     sp, 2
; loc                 p : (@-20): int
    sub     sp, 2
; loc                 oldssp : (@-22): int
    sub     sp, 2
; loc                 undoIdents : (@-24): int
    sub     sp, 2
; RPN'ized expression: "( L3694 printf ) "
; Expanded expression: " L3694  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3694:
    db  "; =",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3694 , printf )2 "
    push    L3694
    call    _printf
    sub     sp, -2
; RPN'ized expression: "p lastSyntaxPtr = "
; Expanded expression: "(@-20) (@-4) *(2) =(2) "
; Fused expression:    "=(34) *(@-20) *(@-4) "
    mov     ax, [bp-4]
    mov     [bp-20], ax
; while
; RPN'ized expression: "SyntaxStack p + *u 0 + *u 16 == SyntaxStack p + *u 0 + *u 89 == || "
; Expanded expression: "SyntaxStack (@-20) *(2) 4 * + 0 + *(2) 16 == _Bool [sh||->3698] SyntaxStack (@-20) *(2) 4 * + 0 + *(2) 89 == _Bool ||[3698] "
L3696:
; Fused expression:    "* *(@-20) 4 + SyntaxStack ax + ax 0 == *ax 16 _Bool [sh||->3698] * *(@-20) 4 + SyntaxStack ax + ax 0 == *ax 89 _Bool ||[3698] "
    mov     ax, [bp-20]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3698
    mov     ax, [bp-20]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 89
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3698:
; JumpIfZero
    test    ax, ax
    je      L3697
; RPN'ized expression: "p ++p "
; Expanded expression: "(@-20) ++p(2) "
; Fused expression:    "++p(2) *(@-20) "
    mov     ax, [bp-20]
    inc     word [bp-20]
    jmp     L3696
L3697:
; RPN'ized expression: "oldssp SyntaxStackCnt = "
; Expanded expression: "(@-22) SyntaxStackCnt *(2) =(2) "
; Fused expression:    "=(34) *(@-22) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-22], ax
; RPN'ized expression: "undoIdents IdentTableLen = "
; Expanded expression: "(@-24) IdentTableLen *(2) =(2) "
; Fused expression:    "=(34) *(@-24) *IdentTableLen "
    mov     ax, [_IdentTableLen]
    mov     [bp-24], ax
; if
; RPN'ized expression: "( SyntaxStack p + *u 0 + *u , L3701 strchr ) "
; Expanded expression: " SyntaxStack (@-20) *(2) 4 * + 0 + *(2)  L3701  strchr ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3701:
    db  "([",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-20) 4 + SyntaxStack ax + ax 0 *(2) ax , L3701 , strchr )4 "
    mov     ax, [bp-20]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    push    word [bx]
    push    L3701
    call    _strchr
    sub     sp, -4
; JumpIfZero
    test    ax, ax
    je      L3699
; RPN'ized expression: "( L3703 error ) "
; Expanded expression: " L3703  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3703:
    db  "Error: ParseDecl(): invalid/unsupported initialization of array or function",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3703 , error )2 "
    push    L3703
    call    _error
    sub     sp, -2
L3699:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "tok ( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) = "
; Expanded expression: "(@4)  (@-18)  (@-16)  (@-14)  (@-12)  (@4) *(2)  ParseExpr ()10 =(2) "
; Fused expression:    "( (@-18) , (@-16) , (@-14) , (@-12) , *(2) (@4) , ParseExpr )10 =(34) *(@4) ax "
    lea     ax, [bp-18]
    push    ax
    lea     ax, [bp-16]
    push    ax
    lea     ax, [bp-14]
    push    ax
    lea     ax, [bp-12]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 0 == ( tok , L3707 strchr ) 0 == || "
; Expanded expression: "(@4) *(2) 0 == _Bool [sh||->3709]  (@4) *(2)  L3707  strchr ()4 0 == _Bool ||[3709] "
; SEGMENT _TEXT
SEGMENT _DATA
L3707:
    db  ",;",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "== *(@4) 0 _Bool [sh||->3709] ( *(2) (@4) , L3707 , strchr )4 == ax 0 _Bool ||[3709] "
    mov     ax, [bp+4]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3709
    push    word [bp+4]
    push    L3707
    call    _strchr
    sub     sp, -4
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3709:
; JumpIfZero
    test    ax, ax
    je      L3705
; RPN'ized expression: "( ( tok GetTokenName ) , L3710 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L3710  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3710:
    db  "Error: ParseDecl(): unexpected token %s after '='",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L3710 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3710
    call    _error
    sub     sp, -4
L3705:
; if
; RPN'ized expression: "gotUnary 0 == "
; Expanded expression: "(@-12) *(2) 0 == "
; Fused expression:    "== *(@-12) 0 IF! "
    mov     ax, [bp-12]
    cmp     ax, 0
    jne     L3712
; RPN'ized expression: "( L3714 error ) "
; Expanded expression: " L3714  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3714:
    db  "Error: ParseDecl(): missing initialization expression after '='",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3714 , error )2 "
    push    L3714
    call    _error
    sub     sp, -2
L3712:
; if
; RPN'ized expression: "ParseLevel 0 == "
; Expanded expression: "ParseLevel *(2) 0 == "
; Fused expression:    "== *ParseLevel 0 IF! "
    mov     ax, [_ParseLevel]
    cmp     ax, 0
    jne     L3716
; {
; if
; RPN'ized expression: "constExpr "
; Expanded expression: "(@-16) *(2) "
; Fused expression:    "*(2) (@-16) "
    mov     ax, [bp-16]
; JumpIfZero
    test    ax, ax
    je      L3718
; {
; RPN'ized expression: "( exprVal , globalAllocSize GenIntData ) "
; Expanded expression: " (@-18) *(2)  (@-10) *(2)  GenIntData ()4 "
; Fused expression:    "( *(2) (@-18) , *(2) (@-10) , GenIntData )4 "
    push    word [bp-18]
    push    word [bp-10]
    call    _GenIntData
    sub     sp, -4
; if
; RPN'ized expression: "OutputFormat 0 != "
; Expanded expression: "OutputFormat *(2) 0 != "
; Fused expression:    "!= *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    je      L3720
; RPN'ized expression: "( DataFooter printf ) "
; Expanded expression: " DataFooter *(2)  printf ()2 "
; Fused expression:    "( *(2) DataFooter , printf )2 "
    push    word [_DataFooter]
    call    _printf
    sub     sp, -2
L3720:
; }
    jmp     L3719
L3718:
; else
; if
; RPN'ized expression: "globalAllocSize SizeOfWord == stack sp 1 - + *u 0 + *u 16 == && "
; Expanded expression: "(@-10) *(2) SizeOfWord *(2) == _Bool [sh&&->3724] stack sp *(2) 1 - 4 * + 0 + *(2) 16 == _Bool &&[3724] "
; Fused expression:    "== *(@-10) *SizeOfWord _Bool [sh&&->3724] - *sp 1 * ax 4 + stack ax + ax 0 == *ax 16 _Bool &&[3724] "
    mov     ax, [bp-10]
    cmp     ax, [_SizeOfWord]
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3724
    mov     ax, [_sp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3724:
; JumpIfZero
    test    ax, ax
    je      L3722
; {
; loc                         p : (@-26): * char
    sub     sp, 2
; =
; RPN'ized expression: "IdentTable stack sp 1 - + *u 1 + *u + "
; Expanded expression: "IdentTable stack sp *(2) 1 - 4 * + 2 + *(2) + "
; Fused expression:    "- *sp 1 * ax 4 + stack ax + ax 2 + IdentTable *ax =(34) *(@-26) ax "
    mov     ax, [_sp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    mov     [bp-26], ax
; RPN'ized expression: "( p , globalAllocSize GenAddrData ) "
; Expanded expression: " (@-26) *(2)  (@-10) *(2)  GenAddrData ()4 "
; Fused expression:    "( *(2) (@-26) , *(2) (@-10) , GenAddrData )4 "
    push    word [bp-26]
    push    word [bp-10]
    call    _GenAddrData
    sub     sp, -4
; if
; RPN'ized expression: "OutputFormat 0 != "
; Expanded expression: "OutputFormat *(2) 0 != "
; Fused expression:    "!= *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    je      L3725
; RPN'ized expression: "( DataFooter printf ) "
; Expanded expression: " DataFooter *(2)  printf ()2 "
; Fused expression:    "( *(2) DataFooter , printf )2 "
    push    word [_DataFooter]
    call    _printf
    sub     sp, -2
L3725:
; if
; RPN'ized expression: "( p *u isdigit ) "
; Expanded expression: " (@-26) *(2) *(1)  isdigit ()2 "
; Fused expression:    "( *(2) (@-26) *(1) ax , isdigit )2 "
    mov     ax, [bp-26]
    mov     bx, ax
    mov     al, [bx]
    cbw
    push    ax
    call    _isdigit
    sub     sp, -2
; JumpIfZero
    test    ax, ax
    je      L3727
; RPN'ized expression: "( 0 GenStrData ) "
; Expanded expression: " 0  GenStrData ()2 "
; Fused expression:    "( 0 , GenStrData )2 "
    push    0
    call    _GenStrData
    sub     sp, -2
L3727:
    sub     sp, -2
; }
    jmp     L3723
L3722:
; else
; RPN'ized expression: "( L3729 error ) "
; Expanded expression: " L3729  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3729:
    db  "Error: ParseDecl(): cannot initialize a global variable with a non-constant expression",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3729 , error )2 "
    push    L3729
    call    _error
    sub     sp, -2
L3723:
L3719:
; }
    jmp     L3717
L3716:
; else
; {
; if
; RPN'ized expression: "synPtr 0 >= SyntaxStack synPtr + *u 0 + *u 17 == && "
; Expanded expression: "(@-14) *(2) 0 >= _Bool [sh&&->3733] SyntaxStack (@-14) *(2) 4 * + 0 + *(2) 17 == _Bool &&[3733] "
; Fused expression:    ">= *(@-14) 0 _Bool [sh&&->3733] * *(@-14) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[3733] "
    mov     ax, [bp-14]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3733
    mov     ax, [bp-14]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3733:
; JumpIfZero
    test    ax, ax
    je      L3731
; RPN'ized expression: "( L3734 error ) "
; Expanded expression: " L3734  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3734:
    db  "Error: ParseDecl(): cannot initialize a variable with a 'void' expression",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3734 , error )2 "
    push    L3734
    call    _error
    sub     sp, -2
L3731:
; RPN'ized expression: "( SyntaxStack lastSyntaxPtr 1 + + *u 1 + *u , 89 , 0 ins2 ) "
; Expanded expression: " SyntaxStack (@-4) *(2) 1 + 4 * + 2 + *(2)  89  0  ins2 ()6 "
; Fused expression:    "( + *(@-4) 1 * ax 4 + SyntaxStack ax + ax 2 *(2) ax , 89 , 0 , ins2 )6 "
    mov     ax, [bp-4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    push    89
    push    0
    call    _ins2
    sub     sp, -6
; RPN'ized expression: "( localAllocSize , 61 push2 ) "
; Expanded expression: " (@-8) *(2)  61  push2 ()4 "
; Fused expression:    "( *(2) (@-8) , 61 , push2 )4 "
    push    word [bp-8]
    push    61
    call    _push2
    sub     sp, -4
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; }
L3717:
; RPN'ized expression: "IdentTableLen undoIdents = "
; Expanded expression: "IdentTableLen (@-24) *(2) =(2) "
; Fused expression:    "=(34) *IdentTableLen *(@-24) "
    mov     ax, [bp-24]
    mov     [_IdentTableLen], ax
; RPN'ized expression: "SyntaxStackCnt oldssp = "
; Expanded expression: "SyntaxStackCnt (@-22) *(2) =(2) "
; Fused expression:    "=(34) *SyntaxStackCnt *(@-22) "
    mov     ax, [bp-22]
    mov     [_SyntaxStackCnt], ax
    sub     sp, -14
; }
    jmp     L3693
L3692:
; else
; if
; RPN'ized expression: "globalAllocSize "
; Expanded expression: "(@-10) *(2) "
; Fused expression:    "*(2) (@-10) "
    mov     ax, [bp-10]
; JumpIfZero
    test    ax, ax
    je      L3736
; {
; RPN'ized expression: "( globalAllocSize GenZeroData ) "
; Expanded expression: " (@-10) *(2)  GenZeroData ()2 "
; Fused expression:    "( *(2) (@-10) , GenZeroData )2 "
    push    word [bp-10]
    call    _GenZeroData
    sub     sp, -2
; if
; RPN'ized expression: "OutputFormat 0 != "
; Expanded expression: "OutputFormat *(2) 0 != "
; Fused expression:    "!= *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    je      L3738
; RPN'ized expression: "( DataFooter printf ) "
; Expanded expression: " DataFooter *(2)  printf ()2 "
; Fused expression:    "( *(2) DataFooter , printf )2 "
    push    word [_DataFooter]
    call    _printf
    sub     sp, -2
L3738:
; }
    jmp     L3737
L3736:
; else
; if
; RPN'ized expression: "tok 123 == "
; Expanded expression: "(@4) *(2) 123 == "
; Fused expression:    "== *(@4) 123 IF! "
    mov     ax, [bp+4]
    cmp     ax, 123
    jne     L3740
; {
; loc                 undoSymbolsPtr : (@-12): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStackCnt "
; Expanded expression: "SyntaxStackCnt *(2) "
; Fused expression:    "=(34) *(@-12) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-12], ax
; loc                 undoIdents : (@-14): int
    sub     sp, 2
; =
; RPN'ized expression: "IdentTableLen "
; Expanded expression: "IdentTableLen *(2) "
; Fused expression:    "=(34) *(@-14) *IdentTableLen "
    mov     ax, [_IdentTableLen]
    mov     [bp-14], ax
; loc                 tmp : (@-16): int
    sub     sp, 2
; RPN'ized expression: "ParseLevel ++p "
; Expanded expression: "ParseLevel ++p(2) "
; Fused expression:    "++p(2) *ParseLevel "
    mov     ax, [_ParseLevel]
    inc     word [_ParseLevel]
; RPN'ized expression: "( CurFxnReturnExprTypeSynPtr &u , tmp &u , tmp &u , lastSyntaxPtr GetFxnInfo ) "
; Expanded expression: " CurFxnReturnExprTypeSynPtr  (@-16)  (@-16)  (@-4) *(2)  GetFxnInfo ()8 "
; Fused expression:    "( CurFxnReturnExprTypeSynPtr , (@-16) , (@-16) , *(2) (@-4) , GetFxnInfo )8 "
    push    _CurFxnReturnExprTypeSynPtr
    lea     ax, [bp-16]
    push    ax
    lea     ax, [bp-16]
    push    ax
    push    word [bp-4]
    call    _GetFxnInfo
    sub     sp, -8
; if
; RPN'ized expression: "OutputFormat 0 != "
; Expanded expression: "OutputFormat *(2) 0 != "
; Fused expression:    "!= *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    je      L3742
; RPN'ized expression: "( CodeHeader printf ) "
; Expanded expression: " CodeHeader *(2)  printf ()2 "
; Fused expression:    "( *(2) CodeHeader , printf )2 "
    push    word [_CodeHeader]
    call    _printf
    sub     sp, -2
L3742:
; RPN'ized expression: "( IdentTable SyntaxStack lastSyntaxPtr + *u 1 + *u + GenLabel ) "
; Expanded expression: " IdentTable SyntaxStack (@-4) *(2) 4 * + 2 + *(2) +  GenLabel ()2 "
; Fused expression:    "( * *(@-4) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , GenLabel )2 "
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    call    _GenLabel
    sub     sp, -2
; RPN'ized expression: "CurFxnEpilogLabel LabelCnt ++p = "
; Expanded expression: "CurFxnEpilogLabel LabelCnt ++p(2) =(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *CurFxnEpilogLabel ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [_CurFxnEpilogLabel], ax
; RPN'ized expression: "( GenFxnProlog ) "
; Expanded expression: " GenFxnProlog ()0 "
; Fused expression:    "( GenFxnProlog )0 "
    call    _GenFxnProlog
; RPN'ized expression: "( lastSyntaxPtr AddFxnParamSymbols ) "
; Expanded expression: " (@-4) *(2)  AddFxnParamSymbols ()2 "
; Fused expression:    "( *(2) (@-4) , AddFxnParamSymbols )2 "
    push    word [bp-4]
    call    _AddFxnParamSymbols
    sub     sp, -2
; RPN'ized expression: "tok ( 0 , 0 ParseBlock ) = "
; Expanded expression: "(@4)  0  0  ParseBlock ()4 =(2) "
; Fused expression:    "( 0 , 0 , ParseBlock )4 =(34) *(@4) ax "
    push    0
    push    0
    call    _ParseBlock
    sub     sp, -4
    mov     [bp+4], ax
; RPN'ized expression: "ParseLevel --p "
; Expanded expression: "ParseLevel --p(2) "
; Fused expression:    "--p(2) *ParseLevel "
    mov     ax, [_ParseLevel]
    dec     word [_ParseLevel]
; if
; RPN'ized expression: "tok 125 != "
; Expanded expression: "(@4) *(2) 125 != "
; Fused expression:    "!= *(@4) 125 IF! "
    mov     ax, [bp+4]
    cmp     ax, 125
    je      L3744
; RPN'ized expression: "( L3746 error ) "
; Expanded expression: " L3746  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3746:
    db  "Error: ParseDecl(): '}' expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3746 , error )2 "
    push    L3746
    call    _error
    sub     sp, -2
L3744:
; RPN'ized expression: "IdentTableLen undoIdents = "
; Expanded expression: "IdentTableLen (@-14) *(2) =(2) "
; Fused expression:    "=(34) *IdentTableLen *(@-14) "
    mov     ax, [bp-14]
    mov     [_IdentTableLen], ax
; RPN'ized expression: "SyntaxStackCnt undoSymbolsPtr = "
; Expanded expression: "SyntaxStackCnt (@-12) *(2) =(2) "
; Fused expression:    "=(34) *SyntaxStackCnt *(@-12) "
    mov     ax, [bp-12]
    mov     [_SyntaxStackCnt], ax
; RPN'ized expression: "( CurFxnEpilogLabel GenNumLabel ) "
; Expanded expression: " CurFxnEpilogLabel *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) CurFxnEpilogLabel , GenNumLabel )2 "
    push    word [_CurFxnEpilogLabel]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "( GenFxnEpilog ) "
; Expanded expression: " GenFxnEpilog ()0 "
; Fused expression:    "( GenFxnEpilog )0 "
    call    _GenFxnEpilog
; if
; RPN'ized expression: "OutputFormat 0 != "
; Expanded expression: "OutputFormat *(2) 0 != "
; Fused expression:    "!= *OutputFormat 0 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 0
    je      L3748
; RPN'ized expression: "( CodeFooter printf ) "
; Expanded expression: " CodeFooter *(2)  printf ()2 "
; Fused expression:    "( *(2) CodeFooter , printf )2 "
    push    word [_CodeFooter]
    call    _printf
    sub     sp, -2
L3748:
    sub     sp, -6
; }
L3740:
L3737:
L3693:
L3691:
; if
; RPN'ized expression: "tok 59 == tok 125 == || "
; Expanded expression: "(@4) *(2) 59 == _Bool [sh||->3752] (@4) *(2) 125 == _Bool ||[3752] "
; Fused expression:    "== *(@4) 59 _Bool [sh||->3752] == *(@4) 125 _Bool ||[3752] "
    mov     ax, [bp+4]
    cmp     ax, 59
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3752
    mov     ax, [bp+4]
    cmp     ax, 125
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3752:
; JumpIfZero
    test    ax, ax
    je      L3750
; break
    sub     sp, -4
    jmp     L3644
L3750:
; continue
    sub     sp, -4
    jmp     L3642
    sub     sp, -4
; }
L3645:
; RPN'ized expression: "( ( tok GetTokenName ) , L3753 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L3753  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3753:
    db  "Error: ParseDecl(): unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L3753 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3753
    call    _error
    sub     sp, -4
; }
    jmp     L3642
L3644:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L3634
L3634:
    leave
    ret
; SEGMENT _TEXT
; glb ParseFxnParams : (void) void
SEGMENT _TEXT
    global  _ParseFxnParams
_ParseFxnParams:
    push    bp
    mov     bp, sp
; loc     tok : (@-2): int
    sub     sp, 2
; loc     base : (@-4): int
    sub     sp, 2
; loc     lastSyntaxPtr : (@-6): int
    sub     sp, 2
; loc     cnt : (@-8): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-8) 0 "
    mov     ax, 0
    mov     [bp-8], ax
; loc     ellCnt : (@-10): int
    sub     sp, 2
; =
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "=(34) *(@-10) 0 "
    mov     ax, 0
    mov     [bp-10], ax
; for
L3756:
    jmp     L3758
L3757:
    jmp     L3756
L3758:
; {
; RPN'ized expression: "lastSyntaxPtr SyntaxStackCnt = "
; Expanded expression: "(@-6) SyntaxStackCnt *(2) =(2) "
; Fused expression:    "=(34) *(@-6) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-6], ax
; RPN'ized expression: "base tok ( GetToken ) = = "
; Expanded expression: "(@-4) (@-2)  GetToken ()0 =(2) =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@-2) ax =(34) *(@-4) ax "
    call    _GetToken
    mov     [bp-2], ax
    mov     [bp-4], ax
; if
; RPN'ized expression: "tok 41 == "
; Expanded expression: "(@-2) *(2) 41 == "
; Fused expression:    "== *(@-2) 41 IF! "
    mov     ax, [bp-2]
    cmp     ax, 41
    jne     L3760
; break
    jmp     L3759
L3760:
; if
; RPN'ized expression: "( 1 , tok TokenStartsDeclaration ) 0 == "
; Expanded expression: " 1  (@-2) *(2)  TokenStartsDeclaration ()4 0 == "
; Fused expression:    "( 1 , *(2) (@-2) , TokenStartsDeclaration )4 == ax 0 IF! "
    push    1
    push    word [bp-2]
    call    _TokenStartsDeclaration
    sub     sp, -4
    cmp     ax, 0
    jne     L3762
; {
; if
; RPN'ized expression: "tok 15 == "
; Expanded expression: "(@-2) *(2) 15 == "
; Fused expression:    "== *(@-2) 15 IF! "
    mov     ax, [bp-2]
    cmp     ax, 15
    jne     L3764
; {
; if
; RPN'ized expression: "cnt 0 == ellCnt || "
; Expanded expression: "(@-8) *(2) 0 == _Bool [sh||->3768] (@-10) *(2) _Bool ||[3768] "
; Fused expression:    "== *(@-8) 0 _Bool [sh||->3768] *(2) (@-10) _Bool ||[3768] "
    mov     ax, [bp-8]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3768
    mov     ax, [bp-10]
    test    ax, ax
    setne   al
    cbw
L3768:
; JumpIfZero
    test    ax, ax
    je      L3766
; RPN'ized expression: "( L3769 error ) "
; Expanded expression: " L3769  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3769:
    db  "Error: ParseFxnParams(): '...' unexpected here",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3769 , error )2 "
    push    L3769
    call    _error
    sub     sp, -2
L3766:
; RPN'ized expression: "ellCnt ++p "
; Expanded expression: "(@-10) ++p(2) "
; Fused expression:    "++p(2) *(@-10) "
    mov     ax, [bp-10]
    inc     word [bp-10]
; }
    jmp     L3765
L3764:
; else
; RPN'ized expression: "( ( tok GetTokenName ) , L3771 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L3771  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3771:
    db  "Error: ParseFxnParams(): Unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L3771 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3771
    call    _error
    sub     sp, -4
L3765:
; }
    jmp     L3763
L3762:
; else
; if
; RPN'ized expression: "ellCnt "
; Expanded expression: "(@-10) *(2) "
; Fused expression:    "*(2) (@-10) "
    mov     ax, [bp-10]
; JumpIfZero
    test    ax, ax
    je      L3773
; RPN'ized expression: "( L3775 error ) "
; Expanded expression: " L3775  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3775:
    db  "Error: ParseFxnParams(): '...' must be the last in the parameter list",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3775 , error )2 "
    push    L3775
    call    _error
    sub     sp, -2
L3773:
L3763:
; RPN'ized expression: "tok ( ParseDerived ) = "
; Expanded expression: "(@-2)  ParseDerived ()0 =(2) "
; Fused expression:    "( ParseDerived )0 =(34) *(@-2) ax "
    call    _ParseDerived
    mov     [bp-2], ax
; RPN'ized expression: "( base PushSyntax ) "
; Expanded expression: " (@-4) *(2)  PushSyntax ()2 "
; Fused expression:    "( *(2) (@-4) , PushSyntax )2 "
    push    word [bp-4]
    call    _PushSyntax
    sub     sp, -2
; RPN'ized expression: "lastSyntaxPtr ++p "
; Expanded expression: "(@-6) ++p(2) "
; Fused expression:    "++p(2) *(@-6) "
    mov     ax, [bp-6]
    inc     word [bp-6]
; if
; RPN'ized expression: "SyntaxStack lastSyntaxPtr + *u 0 + *u 91 == "
; Expanded expression: "SyntaxStack (@-6) *(2) 4 * + 0 + *(2) 91 == "
; Fused expression:    "* *(@-6) 4 + SyntaxStack ax + ax 0 == *ax 91 IF! "
    mov     ax, [bp-6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 91
    jne     L3777
; {
; RPN'ized expression: "( 1 , lastSyntaxPtr DeleteSyntax ) "
; Expanded expression: " 1  (@-6) *(2)  DeleteSyntax ()4 "
; Fused expression:    "( 1 , *(2) (@-6) , DeleteSyntax )4 "
    push    1
    push    word [bp-6]
    call    _DeleteSyntax
    sub     sp, -4
; if
; RPN'ized expression: "SyntaxStack lastSyntaxPtr + *u 0 + *u 1 == "
; Expanded expression: "SyntaxStack (@-6) *(2) 4 * + 0 + *(2) 1 == "
; Fused expression:    "* *(@-6) 4 + SyntaxStack ax + ax 0 == *ax 1 IF! "
    mov     ax, [bp-6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 1
    jne     L3779
; RPN'ized expression: "( 1 , lastSyntaxPtr DeleteSyntax ) "
; Expanded expression: " 1  (@-6) *(2)  DeleteSyntax ()4 "
; Fused expression:    "( 1 , *(2) (@-6) , DeleteSyntax )4 "
    push    1
    push    word [bp-6]
    call    _DeleteSyntax
    sub     sp, -4
L3779:
; RPN'ized expression: "SyntaxStack lastSyntaxPtr + *u 0 + *u 42 = "
; Expanded expression: "SyntaxStack (@-6) *(2) 4 * + 0 + 42 =(2) "
; Fused expression:    "* *(@-6) 4 + SyntaxStack ax + ax 0 =(34) *ax 42 "
    mov     ax, [bp-6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 42
    mov     [bx], ax
; }
    jmp     L3778
L3777:
; else
; if
; RPN'ized expression: "SyntaxStack lastSyntaxPtr + *u 0 + *u 40 == "
; Expanded expression: "SyntaxStack (@-6) *(2) 4 * + 0 + *(2) 40 == "
; Fused expression:    "* *(@-6) 4 + SyntaxStack ax + ax 0 == *ax 40 IF! "
    mov     ax, [bp-6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    jne     L3781
; {
; RPN'ized expression: "( 42 , lastSyntaxPtr InsertSyntax ) "
; Expanded expression: " 42  (@-6) *(2)  InsertSyntax ()4 "
; Fused expression:    "( 42 , *(2) (@-6) , InsertSyntax )4 "
    push    42
    push    word [bp-6]
    call    _InsertSyntax
    sub     sp, -4
; }
L3781:
L3778:
; RPN'ized expression: "lastSyntaxPtr --p "
; Expanded expression: "(@-6) --p(2) "
; Fused expression:    "--p(2) *(@-6) "
    mov     ax, [bp-6]
    dec     word [bp-6]
; RPN'ized expression: "cnt ++p "
; Expanded expression: "(@-8) ++p(2) "
; Fused expression:    "++p(2) *(@-8) "
    mov     ax, [bp-8]
    inc     word [bp-8]
; if
; RPN'ized expression: "tok 41 == tok 44 == || "
; Expanded expression: "(@-2) *(2) 41 == _Bool [sh||->3785] (@-2) *(2) 44 == _Bool ||[3785] "
; Fused expression:    "== *(@-2) 41 _Bool [sh||->3785] == *(@-2) 44 _Bool ||[3785] "
    mov     ax, [bp-2]
    cmp     ax, 41
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3785
    mov     ax, [bp-2]
    cmp     ax, 44
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3785:
; JumpIfZero
    test    ax, ax
    je      L3783
; {
; if
; RPN'ized expression: "base 17 == "
; Expanded expression: "(@-4) *(2) 17 == "
; Fused expression:    "== *(@-4) 17 IF! "
    mov     ax, [bp-4]
    cmp     ax, 17
    jne     L3786
; {
; loc                 t : (@-12): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack SyntaxStackCnt 2 - + *u 0 + *u "
; Expanded expression: "SyntaxStack SyntaxStackCnt *(2) 2 - 4 * + 0 + *(2) "
; Fused expression:    "- *SyntaxStackCnt 2 * ax 4 + SyntaxStack ax + ax 0 =(34) *(@-12) *ax "
    mov     ax, [_SyntaxStackCnt]
    sub     ax, 2
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-12], ax
; if
; RPN'ized expression: "t 42 != t 41 != && cnt 1 == tok 41 == && ( L3790 , IdentTable SyntaxStack lastSyntaxPtr + *u 1 + *u + strcmp ) 0 == && 0 == && "
; Expanded expression: "(@-12) *(2) 42 != _Bool [sh&&->3795] (@-12) *(2) 41 != _Bool &&[3795] _Bool [sh&&->3792] (@-8) *(2) 1 == _Bool [sh&&->3794] (@-2) *(2) 41 == _Bool &&[3794] _Bool [sh&&->3793]  L3790  IdentTable SyntaxStack (@-6) *(2) 4 * + 2 + *(2) +  strcmp ()4 0 == _Bool &&[3793] 0 == _Bool &&[3792] "
; SEGMENT _TEXT
SEGMENT _DATA
L3790:
    db  "<something>",0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "!= *(@-12) 42 _Bool [sh&&->3795] != *(@-12) 41 _Bool &&[3795] _Bool [sh&&->3792] == *(@-8) 1 _Bool [sh&&->3794] == *(@-2) 41 _Bool &&[3794] _Bool [sh&&->3793] ( L3790 , * *(@-6) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , strcmp )4 == ax 0 _Bool &&[3793] == ax 0 _Bool &&[3792] "
    mov     ax, [bp-12]
    cmp     ax, 42
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3795
    mov     ax, [bp-12]
    cmp     ax, 41
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L3795:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3792
    mov     ax, [bp-8]
    cmp     ax, 1
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3794
    mov     ax, [bp-2]
    cmp     ax, 41
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3794:
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3793
    push    L3790
    mov     ax, [bp-6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    call    _strcmp
    sub     sp, -4
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3793:
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3792:
; JumpIfZero
    test    ax, ax
    je      L3788
; RPN'ized expression: "( IdentTable SyntaxStack lastSyntaxPtr + *u 1 + *u + , L3796 error ) "
; Expanded expression: " IdentTable SyntaxStack (@-6) *(2) 4 * + 2 + *(2) +  L3796  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3796:
    db  "Error: ParseFxnParams(): Cannot declare a variable ('%s') of type 'void'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( * *(@-6) 4 + SyntaxStack ax + ax 2 + IdentTable *ax , L3796 , error )4 "
    mov     ax, [bp-6]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, _IdentTable
    add     ax, cx
    push    ax
    push    L3796
    call    _error
    sub     sp, -4
L3788:
    sub     sp, -2
; }
L3786:
; if
; RPN'ized expression: "tok 41 == "
; Expanded expression: "(@-2) *(2) 41 == "
; Fused expression:    "== *(@-2) 41 IF! "
    mov     ax, [bp-2]
    cmp     ax, 41
    jne     L3798
; break
    jmp     L3759
L3798:
; continue
    jmp     L3757
; }
L3783:
; RPN'ized expression: "( ( tok GetTokenName ) , L3800 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L3800  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3800:
    db  "Error: ParseFxnParams(): Unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L3800 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3800
    call    _error
    sub     sp, -4
; }
    jmp     L3757
L3759:
L3755:
    leave
    ret
; SEGMENT _TEXT
; glb AddFxnParamSymbols : (
; prm     SyntaxPtr : int
;     ) void
SEGMENT _TEXT
    global  _AddFxnParamSymbols
_AddFxnParamSymbols:
    push    bp
    mov     bp, sp
; loc     SyntaxPtr : (@4): int
; loc     i : (@-2): int
    sub     sp, 2
; if
; RPN'ized expression: "SyntaxPtr 0 < SyntaxPtr SyntaxStackCnt 3 - > || SyntaxStack SyntaxPtr + *u 0 + *u 16 != || SyntaxStack SyntaxPtr 1 + + *u 0 + *u 40 != || "
; Expanded expression: "(@4) *(2) 0 < _Bool [sh||->3807] (@4) *(2) SyntaxStackCnt *(2) 3 - > _Bool ||[3807] _Bool [sh||->3806] SyntaxStack (@4) *(2) 4 * + 0 + *(2) 16 != _Bool ||[3806] _Bool [sh||->3805] SyntaxStack (@4) *(2) 1 + 4 * + 0 + *(2) 40 != _Bool ||[3805] "
; Fused expression:    "< *(@4) 0 _Bool [sh||->3807] - *SyntaxStackCnt 3 > *(@4) ax _Bool ||[3807] _Bool [sh||->3806] * *(@4) 4 + SyntaxStack ax + ax 0 != *ax 16 _Bool ||[3806] _Bool [sh||->3805] + *(@4) 1 * ax 4 + SyntaxStack ax + ax 0 != *ax 40 _Bool ||[3805] "
    mov     ax, [bp+4]
    cmp     ax, 0
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3807
    mov     ax, [_SyntaxStackCnt]
    sub     ax, 3
    mov     cx, ax
    mov     ax, [bp+4]
    cmp     ax, cx
    setg    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3807:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3806
    mov     ax, [bp+4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 16
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L3806:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3805
    mov     ax, [bp+4]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 40
    setne   al
    cbw
    test    ax, ax
    setne   al
    cbw
L3805:
; JumpIfZero
    test    ax, ax
    je      L3803
; RPN'ized expression: "( L3808 error ) "
; Expanded expression: " L3808  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3808:
    db  "Internal error: AddFxnParamSymbols(): Invalid input",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3808 , error )2 "
    push    L3808
    call    _error
    sub     sp, -2
L3803:
; RPN'ized expression: "CurFxnSyntaxPtr SyntaxPtr = "
; Expanded expression: "CurFxnSyntaxPtr (@4) *(2) =(2) "
; Fused expression:    "=(34) *CurFxnSyntaxPtr *(@4) "
    mov     ax, [bp+4]
    mov     [_CurFxnSyntaxPtr], ax
; RPN'ized expression: "CurFxnParamCnt 0 = "
; Expanded expression: "CurFxnParamCnt 0 =(2) "
; Fused expression:    "=(34) *CurFxnParamCnt 0 "
    mov     ax, 0
    mov     [_CurFxnParamCnt], ax
; RPN'ized expression: "CurFxnParamOfs 2 SizeOfWord * = "
; Expanded expression: "CurFxnParamOfs 2 SizeOfWord *(2) * =(2) "
; Fused expression:    "* 2 *SizeOfWord =(34) *CurFxnParamOfs ax "
    mov     ax, 2
    mul     word [_SizeOfWord]
    mov     [_CurFxnParamOfs], ax
; RPN'ized expression: "CurFxnLocalOfs 0 = "
; Expanded expression: "CurFxnLocalOfs 0 =(2) "
; Fused expression:    "=(34) *CurFxnLocalOfs 0 "
    mov     ax, 0
    mov     [_CurFxnLocalOfs], ax
; RPN'ized expression: "SyntaxPtr 2 += "
; Expanded expression: "(@4) 2 +=(2) "
; Fused expression:    "+=(34) *(@4) 2 "
    mov     ax, [bp+4]
    add     ax, 2
    mov     [bp+4], ax
; for
; RPN'ized expression: "i SyntaxPtr = "
; Expanded expression: "(@-2) (@4) *(2) =(2) "
; Fused expression:    "=(34) *(@-2) *(@4) "
    mov     ax, [bp+4]
    mov     [bp-2], ax
L3810:
; RPN'ized expression: "i SyntaxStackCnt < "
; Expanded expression: "(@-2) *(2) SyntaxStackCnt *(2) < "
; Fused expression:    "< *(@-2) *SyntaxStackCnt IF! "
    mov     ax, [bp-2]
    cmp     ax, [_SyntaxStackCnt]
    jge     L3813
    jmp     L3812
L3811:
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
    jmp     L3810
L3812:
; {
; loc         tok : (@-4): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStack i + *u 0 + *u "
; Expanded expression: "SyntaxStack (@-2) *(2) 4 * + 0 + *(2) "
; Fused expression:    "* *(@-2) 4 + SyntaxStack ax + ax 0 =(34) *(@-4) *ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-4], ax
; if
; RPN'ized expression: "tok 16 == "
; Expanded expression: "(@-4) *(2) 16 == "
; Fused expression:    "== *(@-4) 16 IF! "
    mov     ax, [bp-4]
    cmp     ax, 16
    jne     L3814
; {
; loc             sz : (@-6): int
    sub     sp, 2
; loc             paramPtr : (@-8): int
    sub     sp, 2
; if
; RPN'ized expression: "i 1 + SyntaxStackCnt >= "
; Expanded expression: "(@-2) *(2) 1 + SyntaxStackCnt *(2) >= "
; Fused expression:    "+ *(@-2) 1 >= ax *SyntaxStackCnt IF! "
    mov     ax, [bp-2]
    add     ax, 1
    cmp     ax, [_SyntaxStackCnt]
    jl      L3816
; RPN'ized expression: "( L3818 error ) "
; Expanded expression: " L3818  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3818:
    db  "Internal error: AddFxnParamSymbols(): Invalid input",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3818 , error )2 "
    push    L3818
    call    _error
    sub     sp, -2
L3816:
; if
; RPN'ized expression: "SyntaxStack i 1 + + *u 0 + *u 17 == "
; Expanded expression: "SyntaxStack (@-2) *(2) 1 + 4 * + 0 + *(2) 17 == "
; Fused expression:    "+ *(@-2) 1 * ax 4 + SyntaxStack ax + ax 0 == *ax 17 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    jne     L3820
; break
    sub     sp, -6
    jmp     L3813
L3820:
; if
; RPN'ized expression: "SyntaxStack i 1 + + *u 0 + *u 15 == "
; Expanded expression: "SyntaxStack (@-2) *(2) 1 + 4 * + 0 + *(2) 15 == "
; Fused expression:    "+ *(@-2) 1 * ax 4 + SyntaxStack ax + ax 0 == *ax 15 IF! "
    mov     ax, [bp-2]
    add     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 15
    jne     L3822
; break
    sub     sp, -6
    jmp     L3813
L3822:
; RPN'ized expression: "sz ( i GetDeclSize ) = "
; Expanded expression: "(@-6)  (@-2) *(2)  GetDeclSize ()2 =(2) "
; Fused expression:    "( *(2) (@-2) , GetDeclSize )2 =(34) *(@-6) ax "
    push    word [bp-2]
    call    _GetDeclSize
    sub     sp, -2
    mov     [bp-6], ax
; if
; RPN'ized expression: "sz 0 <= "
; Expanded expression: "(@-6) *(2) 0 <= "
; Fused expression:    "<= *(@-6) 0 IF! "
    mov     ax, [bp-6]
    cmp     ax, 0
    jg      L3824
; RPN'ized expression: "( L3826 error ) "
; Expanded expression: " L3826  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3826:
    db  "Internal error: AddFxnParamSymbols(): GetDeclSize()",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3826 , error )2 "
    push    L3826
    call    _error
    sub     sp, -2
L3824:
; RPN'ized expression: "CurFxnParamOfs CurFxnParamOfs SizeOfWord + 1 - SizeOfWord / SizeOfWord * = "
; Expanded expression: "CurFxnParamOfs CurFxnParamOfs *(2) SizeOfWord *(2) + 1 - SizeOfWord *(2) / SizeOfWord *(2) * =(2) "
; Fused expression:    "+ *CurFxnParamOfs *SizeOfWord - ax 1 / ax *SizeOfWord * ax *SizeOfWord =(34) *CurFxnParamOfs ax "
    mov     ax, [_CurFxnParamOfs]
    add     ax, [_SizeOfWord]
    sub     ax, 1
    cwd
    idiv    word [_SizeOfWord]
    mul     word [_SizeOfWord]
    mov     [_CurFxnParamOfs], ax
; RPN'ized expression: "paramPtr SyntaxStackCnt = "
; Expanded expression: "(@-8) SyntaxStackCnt *(2) =(2) "
; Fused expression:    "=(34) *(@-8) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-8], ax
; RPN'ized expression: "( SyntaxStack i + *u 1 + *u , SyntaxStack i + *u 0 + *u PushSyntax2 ) "
; Expanded expression: " SyntaxStack (@-2) *(2) 4 * + 2 + *(2)  SyntaxStack (@-2) *(2) 4 * + 0 + *(2)  PushSyntax2 ()4 "
; Fused expression:    "( * *(@-2) 4 + SyntaxStack ax + ax 2 *(2) ax , * *(@-2) 4 + SyntaxStack ax + ax 0 *(2) ax , PushSyntax2 )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    push    word [bx]
    call    _PushSyntax2
    sub     sp, -4
; RPN'ized expression: "( CurFxnParamOfs , 89 PushSyntax2 ) "
; Expanded expression: " CurFxnParamOfs *(2)  89  PushSyntax2 ()4 "
; Fused expression:    "( *(2) CurFxnParamOfs , 89 , PushSyntax2 )4 "
    push    word [_CurFxnParamOfs]
    push    89
    call    _PushSyntax2
    sub     sp, -4
; RPN'ized expression: "CurFxnParamOfs sz += "
; Expanded expression: "CurFxnParamOfs (@-6) *(2) +=(2) "
; Fused expression:    "+=(34) *CurFxnParamOfs *(@-6) "
    mov     ax, [_CurFxnParamOfs]
    add     ax, [bp-6]
    mov     [_CurFxnParamOfs], ax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
; while
; RPN'ized expression: "i SyntaxStackCnt < "
; Expanded expression: "(@-2) *(2) SyntaxStackCnt *(2) < "
L3828:
; Fused expression:    "< *(@-2) *SyntaxStackCnt IF! "
    mov     ax, [bp-2]
    cmp     ax, [_SyntaxStackCnt]
    jge     L3829
; {
; RPN'ized expression: "tok SyntaxStack i + *u 0 + *u = "
; Expanded expression: "(@-4) SyntaxStack (@-2) *(2) 4 * + 0 + *(2) =(2) "
; Fused expression:    "* *(@-2) 4 + SyntaxStack ax + ax 0 =(34) *(@-4) *ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-4], ax
; if
; RPN'ized expression: "tok 16 == tok 41 == || "
; Expanded expression: "(@-4) *(2) 16 == _Bool [sh||->3832] (@-4) *(2) 41 == _Bool ||[3832] "
; Fused expression:    "== *(@-4) 16 _Bool [sh||->3832] == *(@-4) 41 _Bool ||[3832] "
    mov     ax, [bp-4]
    cmp     ax, 16
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L3832
    mov     ax, [bp-4]
    cmp     ax, 41
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3832:
; JumpIfZero
    test    ax, ax
    je      L3830
; {
; RPN'ized expression: "CurFxnParamCnt ++p "
; Expanded expression: "CurFxnParamCnt ++p(2) "
; Fused expression:    "++p(2) *CurFxnParamCnt "
    mov     ax, [_CurFxnParamCnt]
    inc     word [_CurFxnParamCnt]
; RPN'ized expression: "( 0 , paramPtr ShowDecl ) "
; Expanded expression: " 0  (@-8) *(2)  ShowDecl ()4 "
; Fused expression:    "( 0 , *(2) (@-8) , ShowDecl )4 "
    push    0
    push    word [bp-8]
    call    _ShowDecl
    sub     sp, -4
; RPN'ized expression: "i --p "
; Expanded expression: "(@-2) --p(2) "
; Fused expression:    "--p(2) *(@-2) "
    mov     ax, [bp-2]
    dec     word [bp-2]
; break
    jmp     L3829
; }
    jmp     L3831
L3830:
; else
; if
; RPN'ized expression: "tok 40 == "
; Expanded expression: "(@-4) *(2) 40 == "
; Fused expression:    "== *(@-4) 40 IF! "
    mov     ax, [bp-4]
    cmp     ax, 40
    jne     L3833
; {
; loc                     c : (@-10): int
    sub     sp, 2
; =
; RPN'ized expression: "1 "
; Expanded expression: "1 "
; Expression value: 1
; Fused expression:    "=(34) *(@-10) 1 "
    mov     ax, 1
    mov     [bp-10], ax
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
; RPN'ized expression: "( tok PushSyntax ) "
; Expanded expression: " (@-4) *(2)  PushSyntax ()2 "
; Fused expression:    "( *(2) (@-4) , PushSyntax )2 "
    push    word [bp-4]
    call    _PushSyntax
    sub     sp, -2
; while
; RPN'ized expression: "c i SyntaxStackCnt < && "
; Expanded expression: "(@-10) *(2) _Bool [sh&&->3837] (@-2) *(2) SyntaxStackCnt *(2) < _Bool &&[3837] "
L3835:
; Fused expression:    "*(2) (@-10) _Bool [sh&&->3837] < *(@-2) *SyntaxStackCnt _Bool &&[3837] "
    mov     ax, [bp-10]
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3837
    mov     ax, [bp-2]
    cmp     ax, [_SyntaxStackCnt]
    setl    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3837:
; JumpIfZero
    test    ax, ax
    je      L3836
; {
; RPN'ized expression: "tok SyntaxStack i + *u 0 + *u = "
; Expanded expression: "(@-4) SyntaxStack (@-2) *(2) 4 * + 0 + *(2) =(2) "
; Fused expression:    "* *(@-2) 4 + SyntaxStack ax + ax 0 =(34) *(@-4) *ax "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    mov     [bp-4], ax
; RPN'ized expression: "c tok 40 == tok 41 == - += "
; Expanded expression: "(@-10) (@-4) *(2) 40 == (@-4) *(2) 41 == - +=(2) "
; Fused expression:    "== *(@-4) 40 push-ax == *(@-4) 41 - *sp ax +=(34) *(@-10) ax "
    mov     ax, [bp-4]
    cmp     ax, 40
    sete    al
    cbw
    push    ax
    mov     ax, [bp-4]
    cmp     ax, 41
    sete    al
    cbw
    mov     cx, ax
    pop     ax
    sub     ax, cx
    mov     cx, ax
    mov     ax, [bp-10]
    add     ax, cx
    mov     [bp-10], ax
; RPN'ized expression: "( SyntaxStack i + *u 1 + *u , SyntaxStack i + *u 0 + *u PushSyntax2 ) "
; Expanded expression: " SyntaxStack (@-2) *(2) 4 * + 2 + *(2)  SyntaxStack (@-2) *(2) 4 * + 0 + *(2)  PushSyntax2 ()4 "
; Fused expression:    "( * *(@-2) 4 + SyntaxStack ax + ax 2 *(2) ax , * *(@-2) 4 + SyntaxStack ax + ax 0 *(2) ax , PushSyntax2 )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    push    word [bx]
    call    _PushSyntax2
    sub     sp, -4
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
; }
    jmp     L3835
L3836:
    sub     sp, -2
; }
    jmp     L3834
L3833:
; else
; {
; RPN'ized expression: "( SyntaxStack i + *u 1 + *u , SyntaxStack i + *u 0 + *u PushSyntax2 ) "
; Expanded expression: " SyntaxStack (@-2) *(2) 4 * + 2 + *(2)  SyntaxStack (@-2) *(2) 4 * + 0 + *(2)  PushSyntax2 ()4 "
; Fused expression:    "( * *(@-2) 4 + SyntaxStack ax + ax 2 *(2) ax , * *(@-2) 4 + SyntaxStack ax + ax 0 *(2) ax , PushSyntax2 )4 "
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    mov     ax, [bp-2]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    push    word [bx]
    call    _PushSyntax2
    sub     sp, -4
; RPN'ized expression: "i ++p "
; Expanded expression: "(@-2) ++p(2) "
; Fused expression:    "++p(2) *(@-2) "
    mov     ax, [bp-2]
    inc     word [bp-2]
; }
L3834:
L3831:
; }
    jmp     L3828
L3829:
    sub     sp, -4
; }
    jmp     L3815
L3814:
; else
; if
; RPN'ized expression: "tok 41 == "
; Expanded expression: "(@-4) *(2) 41 == "
; Fused expression:    "== *(@-4) 41 IF! "
    mov     ax, [bp-4]
    cmp     ax, 41
    jne     L3838
; break
    sub     sp, -2
    jmp     L3813
    jmp     L3839
L3838:
; else
; RPN'ized expression: "( ( tok GetTokenName ) , L3840 error ) "
; Expanded expression: "  (@-4) *(2)  GetTokenName ()2  L3840  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3840:
    db  "Internal error: AddFxnParamSymbols(): Unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-4) , GetTokenName )2 , L3840 , error )4 "
    push    word [bp-4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3840
    call    _error
    sub     sp, -4
L3839:
L3815:
    sub     sp, -2
; }
    jmp     L3811
L3813:
L3802:
    leave
    ret
; SEGMENT _TEXT
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
; glb ParseStatement : (
; prm     tok : int
; prm     BrkCntSwchTarget : * int
; prm     switchBody : int
;     ) int
SEGMENT _TEXT
    global  _ParseStatement
_ParseStatement:
    push    bp
    mov     bp, sp
; loc     tok : (@4): int
; loc     BrkCntSwchTarget : (@6): * int
; loc     switchBody : (@8): int
; loc     gotUnary : (@-2): int
    sub     sp, 2
; loc     synPtr : (@-4): int
    sub     sp, 2
; loc     constExpr : (@-6): int
    sub     sp, 2
; loc     exprVal : (@-8): int
    sub     sp, 2
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
; loc     brkCntSwchTarget : (@-20): [6] int
    sub     sp, 12
; if
; RPN'ized expression: "tok 59 == "
; Expanded expression: "(@4) *(2) 59 == "
; Fused expression:    "== *(@4) 59 IF! "
    mov     ax, [bp+4]
    cmp     ax, 59
    jne     L3843
; {
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; }
    jmp     L3844
L3843:
; else
; if
; RPN'ized expression: "tok 123 == "
; Expanded expression: "(@4) *(2) 123 == "
; Fused expression:    "== *(@4) 123 IF! "
    mov     ax, [bp+4]
    cmp     ax, 123
    jne     L3845
; {
; loc         undoSymbolsPtr : (@-22): int
    sub     sp, 2
; =
; RPN'ized expression: "SyntaxStackCnt "
; Expanded expression: "SyntaxStackCnt *(2) "
; Fused expression:    "=(34) *(@-22) *SyntaxStackCnt "
    mov     ax, [_SyntaxStackCnt]
    mov     [bp-22], ax
; loc         undoLocalOfs : (@-24): int
    sub     sp, 2
; =
; RPN'ized expression: "CurFxnLocalOfs "
; Expanded expression: "CurFxnLocalOfs *(2) "
; Fused expression:    "=(34) *(@-24) *CurFxnLocalOfs "
    mov     ax, [_CurFxnLocalOfs]
    mov     [bp-24], ax
; loc         undoIdents : (@-26): int
    sub     sp, 2
; =
; RPN'ized expression: "IdentTableLen "
; Expanded expression: "IdentTableLen *(2) "
; Fused expression:    "=(34) *(@-26) *IdentTableLen "
    mov     ax, [_IdentTableLen]
    mov     [bp-26], ax
; RPN'ized expression: "( L3847 printf ) "
; Expanded expression: " L3847  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3847:
    db  "; {",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3847 , printf )2 "
    push    L3847
    call    _printf
    sub     sp, -2
; RPN'ized expression: "ParseLevel ++p "
; Expanded expression: "ParseLevel ++p(2) "
; Fused expression:    "++p(2) *ParseLevel "
    mov     ax, [_ParseLevel]
    inc     word [_ParseLevel]
; RPN'ized expression: "tok ( switchBody 2 / , BrkCntSwchTarget ParseBlock ) = "
; Expanded expression: "(@4)  (@8) *(2) 2 /  (@6) *(2)  ParseBlock ()4 =(2) "
; Fused expression:    "( / *(@8) 2 , *(2) (@6) , ParseBlock )4 =(34) *(@4) ax "
    mov     ax, [bp+8]
    cwd
    mov     cx, 2
    idiv    cx
    push    ax
    push    word [bp+6]
    call    _ParseBlock
    sub     sp, -4
    mov     [bp+4], ax
; RPN'ized expression: "ParseLevel --p "
; Expanded expression: "ParseLevel --p(2) "
; Fused expression:    "--p(2) *ParseLevel "
    mov     ax, [_ParseLevel]
    dec     word [_ParseLevel]
; if
; RPN'ized expression: "tok 125 != "
; Expanded expression: "(@4) *(2) 125 != "
; Fused expression:    "!= *(@4) 125 IF! "
    mov     ax, [bp+4]
    cmp     ax, 125
    je      L3849
; RPN'ized expression: "( ( tok GetTokenName ) , L3851 error ) "
; Expanded expression: "  (@4) *(2)  GetTokenName ()2  L3851  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L3851:
    db  "Error: ParseStatement(): '}' expected. Unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@4) , GetTokenName )2 , L3851 , error )4 "
    push    word [bp+4]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L3851
    call    _error
    sub     sp, -4
L3849:
; RPN'ized expression: "IdentTableLen undoIdents = "
; Expanded expression: "IdentTableLen (@-26) *(2) =(2) "
; Fused expression:    "=(34) *IdentTableLen *(@-26) "
    mov     ax, [bp-26]
    mov     [_IdentTableLen], ax
; RPN'ized expression: "SyntaxStackCnt undoSymbolsPtr = "
; Expanded expression: "SyntaxStackCnt (@-22) *(2) =(2) "
; Fused expression:    "=(34) *SyntaxStackCnt *(@-22) "
    mov     ax, [bp-22]
    mov     [_SyntaxStackCnt], ax
; if
; RPN'ized expression: "CurFxnLocalOfs undoLocalOfs != "
; Expanded expression: "CurFxnLocalOfs *(2) (@-24) *(2) != "
; Fused expression:    "!= *CurFxnLocalOfs *(@-24) IF! "
    mov     ax, [_CurFxnLocalOfs]
    cmp     ax, [bp-24]
    je      L3853
; RPN'ized expression: "( CurFxnLocalOfs undoLocalOfs - GenLocalAlloc ) "
; Expanded expression: " CurFxnLocalOfs *(2) (@-24) *(2) -  GenLocalAlloc ()2 "
; Fused expression:    "( - *CurFxnLocalOfs *(@-24) , GenLocalAlloc )2 "
    mov     ax, [_CurFxnLocalOfs]
    sub     ax, [bp-24]
    push    ax
    call    _GenLocalAlloc
    sub     sp, -2
L3853:
; RPN'ized expression: "CurFxnLocalOfs undoLocalOfs = "
; Expanded expression: "CurFxnLocalOfs (@-24) *(2) =(2) "
; Fused expression:    "=(34) *CurFxnLocalOfs *(@-24) "
    mov     ax, [bp-24]
    mov     [_CurFxnLocalOfs], ax
; RPN'ized expression: "( L3855 printf ) "
; Expanded expression: " L3855  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3855:
    db  "; }",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3855 , printf )2 "
    push    L3855
    call    _printf
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
    sub     sp, -6
; }
    jmp     L3846
L3845:
; else
; if
; RPN'ized expression: "tok 20 == "
; Expanded expression: "(@4) *(2) 20 == "
; Fused expression:    "== *(@4) 20 IF! "
    mov     ax, [bp+4]
    cmp     ax, 20
    jne     L3857
; {
; RPN'ized expression: "( L3859 printf ) "
; Expanded expression: " L3859  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3859:
    db  "; return",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3859 , printf )2 "
    push    L3859
    call    _printf
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 59 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 59 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 59 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 59
    je      L3861
; RPN'ized expression: "( L3863 error ) "
; Expanded expression: " L3863  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3863:
    db  "Error: ParseStatement(): ';' expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3863 , error )2 "
    push    L3863
    call    _error
    sub     sp, -2
L3861:
; if
; RPN'ized expression: "CurFxnReturnExprTypeSynPtr 0 >= SyntaxStack CurFxnReturnExprTypeSynPtr + *u 0 + *u 17 == && "
; Expanded expression: "CurFxnReturnExprTypeSynPtr *(2) 0 >= _Bool [sh&&->3867] SyntaxStack CurFxnReturnExprTypeSynPtr *(2) 4 * + 0 + *(2) 17 == _Bool &&[3867] "
; Fused expression:    ">= *CurFxnReturnExprTypeSynPtr 0 _Bool [sh&&->3867] * *CurFxnReturnExprTypeSynPtr 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[3867] "
    mov     ax, [_CurFxnReturnExprTypeSynPtr]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3867
    mov     ax, [_CurFxnReturnExprTypeSynPtr]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3867:
; JumpIfZero
    test    ax, ax
    je      L3865
; {
; if
; RPN'ized expression: "gotUnary "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L3868
; RPN'ized expression: "( L3870 error ) "
; Expanded expression: " L3870  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3870:
    db  "Error: ParseStatement(): cannot return a value from a function returning 'void'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3870 , error )2 "
    push    L3870
    call    _error
    sub     sp, -2
L3868:
; }
    jmp     L3866
L3865:
; else
; {
; if
; RPN'ized expression: "gotUnary 0 == "
; Expanded expression: "(@-2) *(2) 0 == "
; Fused expression:    "== *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jne     L3872
; RPN'ized expression: "( L3874 error ) "
; Expanded expression: " L3874  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3874:
    db  "Error: ParseStatement(): missing return value",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3874 , error )2 "
    push    L3874
    call    _error
    sub     sp, -2
L3872:
; }
L3866:
; if
; RPN'ized expression: "gotUnary "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L3876
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
L3876:
; RPN'ized expression: "( CurFxnEpilogLabel GenJumpUncond ) "
; Expanded expression: " CurFxnEpilogLabel *(2)  GenJumpUncond ()2 "
; Fused expression:    "( *(2) CurFxnEpilogLabel , GenJumpUncond )2 "
    push    word [_CurFxnEpilogLabel]
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; }
    jmp     L3858
L3857:
; else
; if
; RPN'ized expression: "tok 24 == "
; Expanded expression: "(@4) *(2) 24 == "
; Fused expression:    "== *(@4) 24 IF! "
    mov     ax, [bp+4]
    cmp     ax, 24
    jne     L3878
; {
; loc         labelBefore : (@-22): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-22) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-22], ax
; loc         labelAfter : (@-24): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-24) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-24], ax
; RPN'ized expression: "( L3880 printf ) "
; Expanded expression: " L3880  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3880:
    db  "; while",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3880 , printf )2 "
    push    L3880
    call    _printf
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 40 != "
; Expanded expression: "(@4) *(2) 40 != "
; Fused expression:    "!= *(@4) 40 IF! "
    mov     ax, [bp+4]
    cmp     ax, 40
    je      L3882
; RPN'ized expression: "( L3884 error ) "
; Expanded expression: " L3884  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3884:
    db  "Error: ParseStatement(): '(' expected after 'while'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3884 , error )2 "
    push    L3884
    call    _error
    sub     sp, -2
L3882:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 41 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 41 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 41 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 41
    je      L3886
; RPN'ized expression: "( L3888 error ) "
; Expanded expression: " L3888  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3888:
    db  "Error: ParseStatement(): ')' expected after 'while ( expression'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3888 , error )2 "
    push    L3888
    call    _error
    sub     sp, -2
L3886:
; if
; RPN'ized expression: "gotUnary 0 == "
; Expanded expression: "(@-2) *(2) 0 == "
; Fused expression:    "== *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jne     L3890
; RPN'ized expression: "( L3892 error ) "
; Expanded expression: " L3892  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3892:
    db  "Error: ParseStatement(): expression expected in 'while ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3892 , error )2 "
    push    L3892
    call    _error
    sub     sp, -2
L3890:
; if
; RPN'ized expression: "synPtr 0 >= SyntaxStack synPtr + *u 0 + *u 17 == && "
; Expanded expression: "(@-4) *(2) 0 >= _Bool [sh&&->3896] SyntaxStack (@-4) *(2) 4 * + 0 + *(2) 17 == _Bool &&[3896] "
; Fused expression:    ">= *(@-4) 0 _Bool [sh&&->3896] * *(@-4) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[3896] "
    mov     ax, [bp-4]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3896
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3896:
; JumpIfZero
    test    ax, ax
    je      L3894
; RPN'ized expression: "( L3897 error ) "
; Expanded expression: " L3897  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3897:
    db  "Error: ParseStatement(): unexpected 'void' expression in 'while ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3897 , error )2 "
    push    L3897
    call    _error
    sub     sp, -2
L3894:
; RPN'ized expression: "( labelBefore GenNumLabel ) "
; Expanded expression: " (@-22) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-22) , GenNumLabel )2 "
    push    word [bp-22]
    call    _GenNumLabel
    sub     sp, -2
; switch
; RPN'ized expression: "stack sp 1 - + *u 0 + *u "
; Expanded expression: "stack sp *(2) 1 - 4 * + 0 + *(2) "
; Fused expression:    "- *sp 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [_sp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L3901
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L3902
L3901:
    cmp     ax, 60
    jne     L3903
L3902:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L3904
L3903:
    cmp     ax, 62
    jne     L3905
L3904:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L3906
L3905:
    cmp     ax, 8
    jne     L3907
L3906:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L3908
L3907:
    cmp     ax, 9
    jne     L3909
L3908:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L3910
L3909:
    cmp     ax, 10
    jne     L3911
L3910:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L3912
L3911:
    cmp     ax, 11
    jne     L3913
L3912:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L3914
L3913:
    cmp     ax, 85
    jne     L3915
L3914:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L3916
L3915:
    cmp     ax, 86
    jne     L3917
L3916:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L3918
L3917:
    cmp     ax, 87
    jne     L3919
L3918:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L3920
L3919:
    cmp     ax, 88
    jne     L3921
L3920:
; RPN'ized expression: "( labelAfter , 76 push2 ) "
; Expanded expression: " (@-24) *(2)  76  push2 ()4 "
; Fused expression:    "( *(2) (@-24) , 76 , push2 )4 "
    push    word [bp-24]
    push    76
    call    _push2
    sub     sp, -4
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; break
    jmp     L3899
; default
L3900:
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; RPN'ized expression: "( labelAfter GenJumpIfZero ) "
; Expanded expression: " (@-24) *(2)  GenJumpIfZero ()2 "
; Fused expression:    "( *(2) (@-24) , GenJumpIfZero )2 "
    push    word [bp-24]
    call    _GenJumpIfZero
    sub     sp, -2
; break
    jmp     L3899
; }
    jmp     L3899
L3921:
    jmp     L3900
L3899:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "brkCntSwchTarget 0 + *u labelAfter = "
; Expanded expression: "(@-20) 0 + (@-24) *(2) =(2) "
; Fused expression:    "+ (@-20) 0 =(34) *ax *(@-24) "
    lea     ax, [bp-20]
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp-24]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 1 + *u labelBefore = "
; Expanded expression: "(@-20) 2 + (@-22) *(2) =(2) "
; Fused expression:    "+ (@-20) 2 =(34) *ax *(@-22) "
    lea     ax, [bp-20]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-22]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 2 + *u CurFxnLocalOfs = "
; Expanded expression: "(@-20) 4 + CurFxnLocalOfs *(2) =(2) "
; Fused expression:    "+ (@-20) 4 =(34) *ax *CurFxnLocalOfs "
    lea     ax, [bp-20]
    add     ax, 4
    mov     bx, ax
    mov     ax, [_CurFxnLocalOfs]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 3 + *u CurFxnLocalOfs = "
; Expanded expression: "(@-20) 6 + CurFxnLocalOfs *(2) =(2) "
; Fused expression:    "+ (@-20) 6 =(34) *ax *CurFxnLocalOfs "
    lea     ax, [bp-20]
    add     ax, 6
    mov     bx, ax
    mov     ax, [_CurFxnLocalOfs]
    mov     [bx], ax
; RPN'ized expression: "tok ( 0 , brkCntSwchTarget , tok ParseStatement ) = "
; Expanded expression: "(@4)  0  (@-20)  (@4) *(2)  ParseStatement ()6 =(2) "
; Fused expression:    "( 0 , (@-20) , *(2) (@4) , ParseStatement )6 =(34) *(@4) ax "
    push    0
    lea     ax, [bp-20]
    push    ax
    push    word [bp+4]
    call    _ParseStatement
    sub     sp, -6
    mov     [bp+4], ax
; RPN'ized expression: "( labelBefore GenJumpUncond ) "
; Expanded expression: " (@-22) *(2)  GenJumpUncond ()2 "
; Fused expression:    "( *(2) (@-22) , GenJumpUncond )2 "
    push    word [bp-22]
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "( labelAfter GenNumLabel ) "
; Expanded expression: " (@-24) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-24) , GenNumLabel )2 "
    push    word [bp-24]
    call    _GenNumLabel
    sub     sp, -2
    sub     sp, -4
; }
    jmp     L3879
L3878:
; else
; if
; RPN'ized expression: "tok 115 == "
; Expanded expression: "(@4) *(2) 115 == "
; Fused expression:    "== *(@4) 115 IF! "
    mov     ax, [bp+4]
    cmp     ax, 115
    jne     L3923
; {
; loc         labelBefore : (@-22): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-22) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-22], ax
; loc         labelWhile : (@-24): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-24) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-24], ax
; loc         labelAfter : (@-26): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-26) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-26], ax
; RPN'ized expression: "( L3925 printf ) "
; Expanded expression: " L3925  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3925:
    db  "; do",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3925 , printf )2 "
    push    L3925
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( labelBefore GenNumLabel ) "
; Expanded expression: " (@-22) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-22) , GenNumLabel )2 "
    push    word [bp-22]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "brkCntSwchTarget 0 + *u labelAfter = "
; Expanded expression: "(@-20) 0 + (@-26) *(2) =(2) "
; Fused expression:    "+ (@-20) 0 =(34) *ax *(@-26) "
    lea     ax, [bp-20]
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp-26]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 1 + *u labelWhile = "
; Expanded expression: "(@-20) 2 + (@-24) *(2) =(2) "
; Fused expression:    "+ (@-20) 2 =(34) *ax *(@-24) "
    lea     ax, [bp-20]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-24]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 2 + *u CurFxnLocalOfs = "
; Expanded expression: "(@-20) 4 + CurFxnLocalOfs *(2) =(2) "
; Fused expression:    "+ (@-20) 4 =(34) *ax *CurFxnLocalOfs "
    lea     ax, [bp-20]
    add     ax, 4
    mov     bx, ax
    mov     ax, [_CurFxnLocalOfs]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 3 + *u CurFxnLocalOfs = "
; Expanded expression: "(@-20) 6 + CurFxnLocalOfs *(2) =(2) "
; Fused expression:    "+ (@-20) 6 =(34) *ax *CurFxnLocalOfs "
    lea     ax, [bp-20]
    add     ax, 6
    mov     bx, ax
    mov     ax, [_CurFxnLocalOfs]
    mov     [bx], ax
; RPN'ized expression: "tok ( 0 , brkCntSwchTarget , tok ParseStatement ) = "
; Expanded expression: "(@4)  0  (@-20)  (@4) *(2)  ParseStatement ()6 =(2) "
; Fused expression:    "( 0 , (@-20) , *(2) (@4) , ParseStatement )6 =(34) *(@4) ax "
    push    0
    lea     ax, [bp-20]
    push    ax
    push    word [bp+4]
    call    _ParseStatement
    sub     sp, -6
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 24 != "
; Expanded expression: "(@4) *(2) 24 != "
; Fused expression:    "!= *(@4) 24 IF! "
    mov     ax, [bp+4]
    cmp     ax, 24
    je      L3927
; RPN'ized expression: "( L3929 error ) "
; Expanded expression: " L3929  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3929:
    db  "Error: ParseStatement(): 'while' expected after 'do statement'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3929 , error )2 "
    push    L3929
    call    _error
    sub     sp, -2
L3927:
; RPN'ized expression: "( L3931 printf ) "
; Expanded expression: " L3931  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3931:
    db  "; while",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3931 , printf )2 "
    push    L3931
    call    _printf
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 40 != "
; Expanded expression: "(@4) *(2) 40 != "
; Fused expression:    "!= *(@4) 40 IF! "
    mov     ax, [bp+4]
    cmp     ax, 40
    je      L3933
; RPN'ized expression: "( L3935 error ) "
; Expanded expression: " L3935  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3935:
    db  "Error: ParseStatement(): '(' expected after 'while'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3935 , error )2 "
    push    L3935
    call    _error
    sub     sp, -2
L3933:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 41 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 41 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 41 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 41
    je      L3937
; RPN'ized expression: "( L3939 error ) "
; Expanded expression: " L3939  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3939:
    db  "Error: ParseStatement(): ')' expected after 'while ( expression'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3939 , error )2 "
    push    L3939
    call    _error
    sub     sp, -2
L3937:
; if
; RPN'ized expression: "gotUnary 0 == "
; Expanded expression: "(@-2) *(2) 0 == "
; Fused expression:    "== *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jne     L3941
; RPN'ized expression: "( L3943 error ) "
; Expanded expression: " L3943  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3943:
    db  "Error: ParseStatement(): expression expected in 'while ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3943 , error )2 "
    push    L3943
    call    _error
    sub     sp, -2
L3941:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 59 != "
; Expanded expression: "(@4) *(2) 59 != "
; Fused expression:    "!= *(@4) 59 IF! "
    mov     ax, [bp+4]
    cmp     ax, 59
    je      L3945
; RPN'ized expression: "( L3947 error ) "
; Expanded expression: " L3947  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3947:
    db  "Error: ParseStatement(): ';' expected after 'do statement while ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3947 , error )2 "
    push    L3947
    call    _error
    sub     sp, -2
L3945:
; if
; RPN'ized expression: "synPtr 0 >= SyntaxStack synPtr + *u 0 + *u 17 == && "
; Expanded expression: "(@-4) *(2) 0 >= _Bool [sh&&->3951] SyntaxStack (@-4) *(2) 4 * + 0 + *(2) 17 == _Bool &&[3951] "
; Fused expression:    ">= *(@-4) 0 _Bool [sh&&->3951] * *(@-4) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[3951] "
    mov     ax, [bp-4]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3951
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3951:
; JumpIfZero
    test    ax, ax
    je      L3949
; RPN'ized expression: "( L3952 error ) "
; Expanded expression: " L3952  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3952:
    db  "Error: ParseStatement(): unexpected 'void' expression in 'while ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3952 , error )2 "
    push    L3952
    call    _error
    sub     sp, -2
L3949:
; RPN'ized expression: "( labelWhile GenNumLabel ) "
; Expanded expression: " (@-24) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-24) , GenNumLabel )2 "
    push    word [bp-24]
    call    _GenNumLabel
    sub     sp, -2
; switch
; RPN'ized expression: "stack sp 1 - + *u 0 + *u "
; Expanded expression: "stack sp *(2) 1 - 4 * + 0 + *(2) "
; Fused expression:    "- *sp 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [_sp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L3956
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L3957
L3956:
    cmp     ax, 60
    jne     L3958
L3957:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L3959
L3958:
    cmp     ax, 62
    jne     L3960
L3959:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L3961
L3960:
    cmp     ax, 8
    jne     L3962
L3961:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L3963
L3962:
    cmp     ax, 9
    jne     L3964
L3963:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L3965
L3964:
    cmp     ax, 10
    jne     L3966
L3965:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L3967
L3966:
    cmp     ax, 11
    jne     L3968
L3967:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L3969
L3968:
    cmp     ax, 85
    jne     L3970
L3969:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L3971
L3970:
    cmp     ax, 86
    jne     L3972
L3971:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L3973
L3972:
    cmp     ax, 87
    jne     L3974
L3973:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L3975
L3974:
    cmp     ax, 88
    jne     L3976
L3975:
; RPN'ized expression: "( labelBefore , 22 push2 ) "
; Expanded expression: " (@-22) *(2)  22  push2 ()4 "
; Fused expression:    "( *(2) (@-22) , 22 , push2 )4 "
    push    word [bp-22]
    push    22
    call    _push2
    sub     sp, -4
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; break
    jmp     L3954
; default
L3955:
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; RPN'ized expression: "( labelBefore GenJumpIfNotZero ) "
; Expanded expression: " (@-22) *(2)  GenJumpIfNotZero ()2 "
; Fused expression:    "( *(2) (@-22) , GenJumpIfNotZero )2 "
    push    word [bp-22]
    call    _GenJumpIfNotZero
    sub     sp, -2
; break
    jmp     L3954
; }
    jmp     L3954
L3976:
    jmp     L3955
L3954:
; RPN'ized expression: "( labelAfter GenNumLabel ) "
; Expanded expression: " (@-26) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-26) , GenNumLabel )2 "
    push    word [bp-26]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
    sub     sp, -6
; }
    jmp     L3924
L3923:
; else
; if
; RPN'ized expression: "tok 22 == "
; Expanded expression: "(@4) *(2) 22 == "
; Fused expression:    "== *(@4) 22 IF! "
    mov     ax, [bp+4]
    cmp     ax, 22
    jne     L3978
; {
; loc         labelAfterIf : (@-22): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-22) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-22], ax
; loc         labelAfterElse : (@-24): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-24) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-24], ax
; RPN'ized expression: "( L3980 printf ) "
; Expanded expression: " L3980  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3980:
    db  "; if",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3980 , printf )2 "
    push    L3980
    call    _printf
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 40 != "
; Expanded expression: "(@4) *(2) 40 != "
; Fused expression:    "!= *(@4) 40 IF! "
    mov     ax, [bp+4]
    cmp     ax, 40
    je      L3982
; RPN'ized expression: "( L3984 error ) "
; Expanded expression: " L3984  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3984:
    db  "Error: ParseStatement(): '(' expected after 'if'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3984 , error )2 "
    push    L3984
    call    _error
    sub     sp, -2
L3982:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 41 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 41 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 41 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 41
    je      L3986
; RPN'ized expression: "( L3988 error ) "
; Expanded expression: " L3988  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3988:
    db  "Error: ParseStatement(): ')' expected after 'if ( expression'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3988 , error )2 "
    push    L3988
    call    _error
    sub     sp, -2
L3986:
; if
; RPN'ized expression: "gotUnary 0 == "
; Expanded expression: "(@-2) *(2) 0 == "
; Fused expression:    "== *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jne     L3990
; RPN'ized expression: "( L3992 error ) "
; Expanded expression: " L3992  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3992:
    db  "Error: ParseStatement(): expression expected in 'if ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3992 , error )2 "
    push    L3992
    call    _error
    sub     sp, -2
L3990:
; if
; RPN'ized expression: "synPtr 0 >= SyntaxStack synPtr + *u 0 + *u 17 == && "
; Expanded expression: "(@-4) *(2) 0 >= _Bool [sh&&->3996] SyntaxStack (@-4) *(2) 4 * + 0 + *(2) 17 == _Bool &&[3996] "
; Fused expression:    ">= *(@-4) 0 _Bool [sh&&->3996] * *(@-4) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[3996] "
    mov     ax, [bp-4]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L3996
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L3996:
; JumpIfZero
    test    ax, ax
    je      L3994
; RPN'ized expression: "( L3997 error ) "
; Expanded expression: " L3997  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L3997:
    db  "Error: ParseStatement(): unexpected 'void' expression in 'if ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L3997 , error )2 "
    push    L3997
    call    _error
    sub     sp, -2
L3994:
; switch
; RPN'ized expression: "stack sp 1 - + *u 0 + *u "
; Expanded expression: "stack sp *(2) 1 - 4 * + 0 + *(2) "
; Fused expression:    "- *sp 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [_sp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L4001
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L4002
L4001:
    cmp     ax, 60
    jne     L4003
L4002:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L4004
L4003:
    cmp     ax, 62
    jne     L4005
L4004:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L4006
L4005:
    cmp     ax, 8
    jne     L4007
L4006:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L4008
L4007:
    cmp     ax, 9
    jne     L4009
L4008:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L4010
L4009:
    cmp     ax, 10
    jne     L4011
L4010:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L4012
L4011:
    cmp     ax, 11
    jne     L4013
L4012:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L4014
L4013:
    cmp     ax, 85
    jne     L4015
L4014:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L4016
L4015:
    cmp     ax, 86
    jne     L4017
L4016:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L4018
L4017:
    cmp     ax, 87
    jne     L4019
L4018:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L4020
L4019:
    cmp     ax, 88
    jne     L4021
L4020:
; RPN'ized expression: "( labelAfterIf , 76 push2 ) "
; Expanded expression: " (@-22) *(2)  76  push2 ()4 "
; Fused expression:    "( *(2) (@-22) , 76 , push2 )4 "
    push    word [bp-22]
    push    76
    call    _push2
    sub     sp, -4
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; break
    jmp     L3999
; default
L4000:
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; RPN'ized expression: "( labelAfterIf GenJumpIfZero ) "
; Expanded expression: " (@-22) *(2)  GenJumpIfZero ()2 "
; Fused expression:    "( *(2) (@-22) , GenJumpIfZero )2 "
    push    word [bp-22]
    call    _GenJumpIfZero
    sub     sp, -2
; break
    jmp     L3999
; }
    jmp     L3999
L4021:
    jmp     L4000
L3999:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "tok ( 0 , BrkCntSwchTarget , tok ParseStatement ) = "
; Expanded expression: "(@4)  0  (@6) *(2)  (@4) *(2)  ParseStatement ()6 =(2) "
; Fused expression:    "( 0 , *(2) (@6) , *(2) (@4) , ParseStatement )6 =(34) *(@4) ax "
    push    0
    push    word [bp+6]
    push    word [bp+4]
    call    _ParseStatement
    sub     sp, -6
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 23 == "
; Expanded expression: "(@4) *(2) 23 == "
; Fused expression:    "== *(@4) 23 IF! "
    mov     ax, [bp+4]
    cmp     ax, 23
    jne     L4023
; {
; RPN'ized expression: "( labelAfterElse GenJumpUncond ) "
; Expanded expression: " (@-24) *(2)  GenJumpUncond ()2 "
; Fused expression:    "( *(2) (@-24) , GenJumpUncond )2 "
    push    word [bp-24]
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "( labelAfterIf GenNumLabel ) "
; Expanded expression: " (@-22) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-22) , GenNumLabel )2 "
    push    word [bp-22]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "( L4025 printf ) "
; Expanded expression: " L4025  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4025:
    db  "; else",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4025 , printf )2 "
    push    L4025
    call    _printf
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "tok ( 0 , BrkCntSwchTarget , tok ParseStatement ) = "
; Expanded expression: "(@4)  0  (@6) *(2)  (@4) *(2)  ParseStatement ()6 =(2) "
; Fused expression:    "( 0 , *(2) (@6) , *(2) (@4) , ParseStatement )6 =(34) *(@4) ax "
    push    0
    push    word [bp+6]
    push    word [bp+4]
    call    _ParseStatement
    sub     sp, -6
    mov     [bp+4], ax
; RPN'ized expression: "( labelAfterElse GenNumLabel ) "
; Expanded expression: " (@-24) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-24) , GenNumLabel )2 "
    push    word [bp-24]
    call    _GenNumLabel
    sub     sp, -2
; }
    jmp     L4024
L4023:
; else
; {
; RPN'ized expression: "( labelAfterIf GenNumLabel ) "
; Expanded expression: " (@-22) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-22) , GenNumLabel )2 "
    push    word [bp-22]
    call    _GenNumLabel
    sub     sp, -2
; }
L4024:
    sub     sp, -4
; }
    jmp     L3979
L3978:
; else
; if
; RPN'ized expression: "tok 116 == "
; Expanded expression: "(@4) *(2) 116 == "
; Fused expression:    "== *(@4) 116 IF! "
    mov     ax, [bp+4]
    cmp     ax, 116
    jne     L4027
; {
; loc         labelBefore : (@-22): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-22) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-22], ax
; loc         labelExpr3 : (@-24): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-24) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-24], ax
; loc         labelBody : (@-26): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-26) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-26], ax
; loc         labelAfter : (@-28): int
    sub     sp, 2
; =
; RPN'ized expression: "LabelCnt ++p "
; Expanded expression: "LabelCnt ++p(2) "
; Fused expression:    "++p(2) *LabelCnt =(34) *(@-28) ax "
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    mov     [bp-28], ax
; RPN'ized expression: "( L4029 printf ) "
; Expanded expression: " L4029  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4029:
    db  "; for",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4029 , printf )2 "
    push    L4029
    call    _printf
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 40 != "
; Expanded expression: "(@4) *(2) 40 != "
; Fused expression:    "!= *(@4) 40 IF! "
    mov     ax, [bp+4]
    cmp     ax, 40
    je      L4031
; RPN'ized expression: "( L4033 error ) "
; Expanded expression: " L4033  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4033:
    db  "Error: ParseStatement(): '(' expected after 'for'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4033 , error )2 "
    push    L4033
    call    _error
    sub     sp, -2
L4031:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 59 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 59 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 59 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 59
    je      L4035
; RPN'ized expression: "( L4037 error ) "
; Expanded expression: " L4037  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4037:
    db  "Error: ParseStatement(): ';' expected after 'for ( expression'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4037 , error )2 "
    push    L4037
    call    _error
    sub     sp, -2
L4035:
; if
; RPN'ized expression: "gotUnary "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L4039
; {
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; }
L4039:
; RPN'ized expression: "( labelBefore GenNumLabel ) "
; Expanded expression: " (@-22) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-22) , GenNumLabel )2 "
    push    word [bp-22]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 59 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 59 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 59 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 59
    je      L4041
; RPN'ized expression: "( L4043 error ) "
; Expanded expression: " L4043  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4043:
    db  "Error: ParseStatement(): ';' expected after 'for ( expression ; expression'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4043 , error )2 "
    push    L4043
    call    _error
    sub     sp, -2
L4041:
; if
; RPN'ized expression: "gotUnary "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L4045
; {
; if
; RPN'ized expression: "synPtr 0 >= SyntaxStack synPtr + *u 0 + *u 17 == && "
; Expanded expression: "(@-4) *(2) 0 >= _Bool [sh&&->4049] SyntaxStack (@-4) *(2) 4 * + 0 + *(2) 17 == _Bool &&[4049] "
; Fused expression:    ">= *(@-4) 0 _Bool [sh&&->4049] * *(@-4) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[4049] "
    mov     ax, [bp-4]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L4049
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L4049:
; JumpIfZero
    test    ax, ax
    je      L4047
; RPN'ized expression: "( L4050 error ) "
; Expanded expression: " L4050  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4050:
    db  "Error: ParseStatement(): unexpected 'void' expression in 'for ( ; expression ; )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4050 , error )2 "
    push    L4050
    call    _error
    sub     sp, -2
L4047:
; switch
; RPN'ized expression: "stack sp 1 - + *u 0 + *u "
; Expanded expression: "stack sp *(2) 1 - 4 * + 0 + *(2) "
; Fused expression:    "- *sp 1 * ax 4 + stack ax + ax 0 *(2) ax "
    mov     ax, [_sp]
    sub     ax, 1
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _stack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    jmp     L4054
; {
; case
; RPN'ized expression: "60 "
; Expanded expression: "60 "
; Expression value: 60
    jmp     L4055
L4054:
    cmp     ax, 60
    jne     L4056
L4055:
; case
; RPN'ized expression: "62 "
; Expanded expression: "62 "
; Expression value: 62
    jmp     L4057
L4056:
    cmp     ax, 62
    jne     L4058
L4057:
; case
; RPN'ized expression: "8 "
; Expanded expression: "8 "
; Expression value: 8
    jmp     L4059
L4058:
    cmp     ax, 8
    jne     L4060
L4059:
; case
; RPN'ized expression: "9 "
; Expanded expression: "9 "
; Expression value: 9
    jmp     L4061
L4060:
    cmp     ax, 9
    jne     L4062
L4061:
; case
; RPN'ized expression: "10 "
; Expanded expression: "10 "
; Expression value: 10
    jmp     L4063
L4062:
    cmp     ax, 10
    jne     L4064
L4063:
; case
; RPN'ized expression: "11 "
; Expanded expression: "11 "
; Expression value: 11
    jmp     L4065
L4064:
    cmp     ax, 11
    jne     L4066
L4065:
; case
; RPN'ized expression: "85 "
; Expanded expression: "85 "
; Expression value: 85
    jmp     L4067
L4066:
    cmp     ax, 85
    jne     L4068
L4067:
; case
; RPN'ized expression: "86 "
; Expanded expression: "86 "
; Expression value: 86
    jmp     L4069
L4068:
    cmp     ax, 86
    jne     L4070
L4069:
; case
; RPN'ized expression: "87 "
; Expanded expression: "87 "
; Expression value: 87
    jmp     L4071
L4070:
    cmp     ax, 87
    jne     L4072
L4071:
; case
; RPN'ized expression: "88 "
; Expanded expression: "88 "
; Expression value: 88
    jmp     L4073
L4072:
    cmp     ax, 88
    jne     L4074
L4073:
; RPN'ized expression: "( labelAfter , 76 push2 ) "
; Expanded expression: " (@-28) *(2)  76  push2 ()4 "
; Fused expression:    "( *(2) (@-28) , 76 , push2 )4 "
    push    word [bp-28]
    push    76
    call    _push2
    sub     sp, -4
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; break
    jmp     L4052
; default
L4053:
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; RPN'ized expression: "( labelAfter GenJumpIfZero ) "
; Expanded expression: " (@-28) *(2)  GenJumpIfZero ()2 "
; Fused expression:    "( *(2) (@-28) , GenJumpIfZero )2 "
    push    word [bp-28]
    call    _GenJumpIfZero
    sub     sp, -2
; break
    jmp     L4052
; }
    jmp     L4052
L4074:
    jmp     L4053
L4052:
; }
L4045:
; RPN'ized expression: "( labelBody GenJumpUncond ) "
; Expanded expression: " (@-26) *(2)  GenJumpUncond ()2 "
; Fused expression:    "( *(2) (@-26) , GenJumpUncond )2 "
    push    word [bp-26]
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "( labelExpr3 GenNumLabel ) "
; Expanded expression: " (@-24) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-24) , GenNumLabel )2 "
    push    word [bp-24]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 41 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 41 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 41 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 41
    je      L4076
; RPN'ized expression: "( L4078 error ) "
; Expanded expression: " L4078  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4078:
    db  "Error: ParseStatement(): ')' expected after 'for ( expression ; expression ; expression'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4078 , error )2 "
    push    L4078
    call    _error
    sub     sp, -2
L4076:
; if
; RPN'ized expression: "gotUnary "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L4080
; {
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; }
L4080:
; RPN'ized expression: "( labelBefore GenJumpUncond ) "
; Expanded expression: " (@-22) *(2)  GenJumpUncond ()2 "
; Fused expression:    "( *(2) (@-22) , GenJumpUncond )2 "
    push    word [bp-22]
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "( labelBody GenNumLabel ) "
; Expanded expression: " (@-26) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-26) , GenNumLabel )2 "
    push    word [bp-26]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "brkCntSwchTarget 0 + *u labelAfter = "
; Expanded expression: "(@-20) 0 + (@-28) *(2) =(2) "
; Fused expression:    "+ (@-20) 0 =(34) *ax *(@-28) "
    lea     ax, [bp-20]
    add     ax, 0
    mov     bx, ax
    mov     ax, [bp-28]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 1 + *u labelExpr3 = "
; Expanded expression: "(@-20) 2 + (@-24) *(2) =(2) "
; Fused expression:    "+ (@-20) 2 =(34) *ax *(@-24) "
    lea     ax, [bp-20]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bp-24]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 2 + *u CurFxnLocalOfs = "
; Expanded expression: "(@-20) 4 + CurFxnLocalOfs *(2) =(2) "
; Fused expression:    "+ (@-20) 4 =(34) *ax *CurFxnLocalOfs "
    lea     ax, [bp-20]
    add     ax, 4
    mov     bx, ax
    mov     ax, [_CurFxnLocalOfs]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 3 + *u CurFxnLocalOfs = "
; Expanded expression: "(@-20) 6 + CurFxnLocalOfs *(2) =(2) "
; Fused expression:    "+ (@-20) 6 =(34) *ax *CurFxnLocalOfs "
    lea     ax, [bp-20]
    add     ax, 6
    mov     bx, ax
    mov     ax, [_CurFxnLocalOfs]
    mov     [bx], ax
; RPN'ized expression: "tok ( 0 , brkCntSwchTarget , tok ParseStatement ) = "
; Expanded expression: "(@4)  0  (@-20)  (@4) *(2)  ParseStatement ()6 =(2) "
; Fused expression:    "( 0 , (@-20) , *(2) (@4) , ParseStatement )6 =(34) *(@4) ax "
    push    0
    lea     ax, [bp-20]
    push    ax
    push    word [bp+4]
    call    _ParseStatement
    sub     sp, -6
    mov     [bp+4], ax
; RPN'ized expression: "( labelExpr3 GenJumpUncond ) "
; Expanded expression: " (@-24) *(2)  GenJumpUncond ()2 "
; Fused expression:    "( *(2) (@-24) , GenJumpUncond )2 "
    push    word [bp-24]
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "( labelAfter GenNumLabel ) "
; Expanded expression: " (@-28) *(2)  GenNumLabel ()2 "
; Fused expression:    "( *(2) (@-28) , GenNumLabel )2 "
    push    word [bp-28]
    call    _GenNumLabel
    sub     sp, -2
    sub     sp, -8
; }
    jmp     L4028
L4027:
; else
; if
; RPN'ized expression: "tok 26 == "
; Expanded expression: "(@4) *(2) 26 == "
; Fused expression:    "== *(@4) 26 IF! "
    mov     ax, [bp+4]
    cmp     ax, 26
    jne     L4082
; {
; RPN'ized expression: "( L4084 printf ) "
; Expanded expression: " L4084  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4084:
    db  "; break",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4084 , printf )2 "
    push    L4084
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "( GetToken ) 59 != "
; Expanded expression: " GetToken ()0 59 != "
; Fused expression:    "( GetToken )0 != ax 59 IF! "
    call    _GetToken
    cmp     ax, 59
    je      L4086
; RPN'ized expression: "( L4088 error ) "
; Expanded expression: " L4088  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4088:
    db  "Error: ParseStatement(): ';' expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4088 , error )2 "
    push    L4088
    call    _error
    sub     sp, -2
L4086:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "BrkCntSwchTarget 0 == "
; Expanded expression: "(@6) *(2) 0 == "
; Fused expression:    "== *(@6) 0 IF! "
    mov     ax, [bp+6]
    cmp     ax, 0
    jne     L4090
; RPN'ized expression: "( L4092 error ) "
; Expanded expression: " L4092  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4092:
    db  "Error: ParseStatement(): 'break' must be within 'while', 'for' or 'switch' statement",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4092 , error )2 "
    push    L4092
    call    _error
    sub     sp, -2
L4090:
; if
; RPN'ized expression: "BrkCntSwchTarget 2 + *u CurFxnLocalOfs != "
; Expanded expression: "(@6) *(2) 4 + *(2) CurFxnLocalOfs *(2) != "
; Fused expression:    "+ *(@6) 4 != *ax *CurFxnLocalOfs IF! "
    mov     ax, [bp+6]
    add     ax, 4
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, [_CurFxnLocalOfs]
    je      L4094
; RPN'ized expression: "( CurFxnLocalOfs BrkCntSwchTarget 2 + *u - GenLocalAlloc ) "
; Expanded expression: " CurFxnLocalOfs *(2) (@6) *(2) 4 + *(2) -  GenLocalAlloc ()2 "
; Fused expression:    "( + *(@6) 4 - *CurFxnLocalOfs *ax , GenLocalAlloc )2 "
    mov     ax, [bp+6]
    add     ax, 4
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, [_CurFxnLocalOfs]
    sub     ax, cx
    push    ax
    call    _GenLocalAlloc
    sub     sp, -2
L4094:
; RPN'ized expression: "( BrkCntSwchTarget 0 + *u GenJumpUncond ) "
; Expanded expression: " (@6) *(2) 0 + *(2)  GenJumpUncond ()2 "
; Fused expression:    "( + *(@6) 0 *(2) ax , GenJumpUncond )2 "
    mov     ax, [bp+6]
    add     ax, 0
    mov     bx, ax
    push    word [bx]
    call    _GenJumpUncond
    sub     sp, -2
; }
    jmp     L4083
L4082:
; else
; if
; RPN'ized expression: "tok 25 == "
; Expanded expression: "(@4) *(2) 25 == "
; Fused expression:    "== *(@4) 25 IF! "
    mov     ax, [bp+4]
    cmp     ax, 25
    jne     L4096
; {
; RPN'ized expression: "( L4098 printf ) "
; Expanded expression: " L4098  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4098:
    db  "; continue",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4098 , printf )2 "
    push    L4098
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "( GetToken ) 59 != "
; Expanded expression: " GetToken ()0 59 != "
; Fused expression:    "( GetToken )0 != ax 59 IF! "
    call    _GetToken
    cmp     ax, 59
    je      L4100
; RPN'ized expression: "( L4102 error ) "
; Expanded expression: " L4102  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4102:
    db  "Error: ParseStatement(): ';' expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4102 , error )2 "
    push    L4102
    call    _error
    sub     sp, -2
L4100:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "BrkCntSwchTarget 0 == BrkCntSwchTarget 1 + *u 0 == || "
; Expanded expression: "(@6) *(2) 0 == _Bool [sh||->4106] (@6) *(2) 2 + *(2) 0 == _Bool ||[4106] "
; Fused expression:    "== *(@6) 0 _Bool [sh||->4106] + *(@6) 2 == *ax 0 _Bool ||[4106] "
    mov     ax, [bp+6]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L4106
    mov     ax, [bp+6]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L4106:
; JumpIfZero
    test    ax, ax
    je      L4104
; RPN'ized expression: "( L4107 error ) "
; Expanded expression: " L4107  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4107:
    db  "Error: ParseStatement(): 'continue' must be within 'while' or 'for' statement",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4107 , error )2 "
    push    L4107
    call    _error
    sub     sp, -2
L4104:
; if
; RPN'ized expression: "BrkCntSwchTarget 3 + *u CurFxnLocalOfs != "
; Expanded expression: "(@6) *(2) 6 + *(2) CurFxnLocalOfs *(2) != "
; Fused expression:    "+ *(@6) 6 != *ax *CurFxnLocalOfs IF! "
    mov     ax, [bp+6]
    add     ax, 6
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, [_CurFxnLocalOfs]
    je      L4109
; RPN'ized expression: "( CurFxnLocalOfs BrkCntSwchTarget 3 + *u - GenLocalAlloc ) "
; Expanded expression: " CurFxnLocalOfs *(2) (@6) *(2) 6 + *(2) -  GenLocalAlloc ()2 "
; Fused expression:    "( + *(@6) 6 - *CurFxnLocalOfs *ax , GenLocalAlloc )2 "
    mov     ax, [bp+6]
    add     ax, 6
    mov     bx, ax
    mov     cx, [bx]
    mov     ax, [_CurFxnLocalOfs]
    sub     ax, cx
    push    ax
    call    _GenLocalAlloc
    sub     sp, -2
L4109:
; RPN'ized expression: "( BrkCntSwchTarget 1 + *u GenJumpUncond ) "
; Expanded expression: " (@6) *(2) 2 + *(2)  GenJumpUncond ()2 "
; Fused expression:    "( + *(@6) 2 *(2) ax , GenJumpUncond )2 "
    mov     ax, [bp+6]
    add     ax, 2
    mov     bx, ax
    push    word [bx]
    call    _GenJumpUncond
    sub     sp, -2
; }
    jmp     L4097
L4096:
; else
; if
; RPN'ized expression: "tok 117 == "
; Expanded expression: "(@4) *(2) 117 == "
; Fused expression:    "== *(@4) 117 IF! "
    mov     ax, [bp+4]
    cmp     ax, 117
    jne     L4111
; {
; RPN'ized expression: "( L4113 printf ) "
; Expanded expression: " L4113  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4113:
    db  "; switch",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4113 , printf )2 "
    push    L4113
    call    _printf
    sub     sp, -2
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 40 != "
; Expanded expression: "(@4) *(2) 40 != "
; Fused expression:    "!= *(@4) 40 IF! "
    mov     ax, [bp+4]
    cmp     ax, 40
    je      L4115
; RPN'ized expression: "( L4117 error ) "
; Expanded expression: " L4117  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4117:
    db  "Error: ParseStatement(): '(' expected after 'switch'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4117 , error )2 "
    push    L4117
    call    _error
    sub     sp, -2
L4115:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 41 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 41 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 41 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 41
    je      L4119
; RPN'ized expression: "( L4121 error ) "
; Expanded expression: " L4121  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4121:
    db  "Error: ParseStatement(): ')' expected after 'switch ( expression'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4121 , error )2 "
    push    L4121
    call    _error
    sub     sp, -2
L4119:
; if
; RPN'ized expression: "gotUnary 0 == "
; Expanded expression: "(@-2) *(2) 0 == "
; Fused expression:    "== *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jne     L4123
; RPN'ized expression: "( L4125 error ) "
; Expanded expression: " L4125  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4125:
    db  "Error: ParseStatement(): expression expected in 'switch ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4125 , error )2 "
    push    L4125
    call    _error
    sub     sp, -2
L4123:
; if
; RPN'ized expression: "synPtr 0 >= SyntaxStack synPtr + *u 0 + *u 17 == && "
; Expanded expression: "(@-4) *(2) 0 >= _Bool [sh&&->4129] SyntaxStack (@-4) *(2) 4 * + 0 + *(2) 17 == _Bool &&[4129] "
; Fused expression:    ">= *(@-4) 0 _Bool [sh&&->4129] * *(@-4) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[4129] "
    mov     ax, [bp-4]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L4129
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L4129:
; JumpIfZero
    test    ax, ax
    je      L4127
; RPN'ized expression: "( L4130 error ) "
; Expanded expression: " L4130  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4130:
    db  "Error: ParseStatement(): unexpected 'void' expression in 'switch ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4130 , error )2 "
    push    L4130
    call    _error
    sub     sp, -2
L4127:
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 123 != "
; Expanded expression: "(@4) *(2) 123 != "
; Fused expression:    "!= *(@4) 123 IF! "
    mov     ax, [bp+4]
    cmp     ax, 123
    je      L4132
; RPN'ized expression: "( L4134 error ) "
; Expanded expression: " L4134  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4134:
    db  "Error: ParseStatement(): '{' expected after 'switch ( expression )'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4134 , error )2 "
    push    L4134
    call    _error
    sub     sp, -2
L4132:
; RPN'ized expression: "brkCntSwchTarget 0 + *u LabelCnt ++p = "
; Expanded expression: "(@-20) 0 + LabelCnt ++p(2) =(2) "
; Fused expression:    "+ (@-20) 0 push-ax ++p(2) *LabelCnt =(34) **sp ax "
    lea     ax, [bp-20]
    add     ax, 0
    push    ax
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 1 + *u 0 = "
; Expanded expression: "(@-20) 2 + 0 =(2) "
; Fused expression:    "+ (@-20) 2 =(34) *ax 0 "
    lea     ax, [bp-20]
    add     ax, 2
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 2 + *u CurFxnLocalOfs = "
; Expanded expression: "(@-20) 4 + CurFxnLocalOfs *(2) =(2) "
; Fused expression:    "+ (@-20) 4 =(34) *ax *CurFxnLocalOfs "
    lea     ax, [bp-20]
    add     ax, 4
    mov     bx, ax
    mov     ax, [_CurFxnLocalOfs]
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 3 + *u 0 = "
; Expanded expression: "(@-20) 6 + 0 =(2) "
; Fused expression:    "+ (@-20) 6 =(34) *ax 0 "
    lea     ax, [bp-20]
    add     ax, 6
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; if
; RPN'ized expression: "BrkCntSwchTarget 0 != "
; Expanded expression: "(@6) *(2) 0 != "
; Fused expression:    "!= *(@6) 0 IF! "
    mov     ax, [bp+6]
    cmp     ax, 0
    je      L4136
; {
; RPN'ized expression: "brkCntSwchTarget 1 + *u BrkCntSwchTarget 1 + *u = "
; Expanded expression: "(@-20) 2 + (@6) *(2) 2 + *(2) =(2) "
; Fused expression:    "+ (@-20) 2 push-ax + *(@6) 2 =(34) **sp *ax "
    lea     ax, [bp-20]
    add     ax, 2
    push    ax
    mov     ax, [bp+6]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 3 + *u BrkCntSwchTarget 3 + *u = "
; Expanded expression: "(@-20) 6 + (@6) *(2) 6 + *(2) =(2) "
; Fused expression:    "+ (@-20) 6 push-ax + *(@6) 6 =(34) **sp *ax "
    lea     ax, [bp-20]
    add     ax, 6
    push    ax
    mov     ax, [bp+6]
    add     ax, 6
    mov     bx, ax
    mov     ax, [bx]
    pop     bx
    mov     [bx], ax
; }
L4136:
; RPN'ized expression: "brkCntSwchTarget 4 + *u LabelCnt ++p = "
; Expanded expression: "(@-20) 8 + LabelCnt ++p(2) =(2) "
; Fused expression:    "+ (@-20) 8 push-ax ++p(2) *LabelCnt =(34) **sp ax "
    lea     ax, [bp-20]
    add     ax, 8
    push    ax
    mov     ax, [_LabelCnt]
    inc     word [_LabelCnt]
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "brkCntSwchTarget 5 + *u LabelCnt 2 += 2 - = "
; Expanded expression: "(@-20) 10 + LabelCnt 2 +=(2) 2 - =(2) "
; Fused expression:    "+ (@-20) 10 push-ax +=(34) *LabelCnt 2 - ax 2 =(34) **sp ax "
    lea     ax, [bp-20]
    add     ax, 10
    push    ax
    mov     ax, [_LabelCnt]
    add     ax, 2
    mov     [_LabelCnt], ax
    sub     ax, 2
    pop     bx
    mov     [bx], ax
; RPN'ized expression: "( brkCntSwchTarget 5 + *u GenJumpUncond ) "
; Expanded expression: " (@-20) 10 + *(2)  GenJumpUncond ()2 "
; Fused expression:    "( + (@-20) 10 *(2) ax , GenJumpUncond )2 "
    lea     ax, [bp-20]
    add     ax, 10
    mov     bx, ax
    push    word [bx]
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "tok ( 2 , brkCntSwchTarget , tok ParseStatement ) = "
; Expanded expression: "(@4)  2  (@-20)  (@4) *(2)  ParseStatement ()6 =(2) "
; Fused expression:    "( 2 , (@-20) , *(2) (@4) , ParseStatement )6 =(34) *(@4) ax "
    push    2
    lea     ax, [bp-20]
    push    ax
    push    word [bp+4]
    call    _ParseStatement
    sub     sp, -6
    mov     [bp+4], ax
; RPN'ized expression: "( brkCntSwchTarget 0 + *u GenJumpUncond ) "
; Expanded expression: " (@-20) 0 + *(2)  GenJumpUncond ()2 "
; Fused expression:    "( + (@-20) 0 *(2) ax , GenJumpUncond )2 "
    lea     ax, [bp-20]
    add     ax, 0
    mov     bx, ax
    push    word [bx]
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "( brkCntSwchTarget 5 + *u GenNumLabel ) "
; Expanded expression: " (@-20) 10 + *(2)  GenNumLabel ()2 "
; Fused expression:    "( + (@-20) 10 *(2) ax , GenNumLabel )2 "
    lea     ax, [bp-20]
    add     ax, 10
    mov     bx, ax
    push    word [bx]
    call    _GenNumLabel
    sub     sp, -2
; if
; RPN'ized expression: "brkCntSwchTarget 4 + *u 0 < "
; Expanded expression: "(@-20) 8 + *(2) 0 < "
; Fused expression:    "+ (@-20) 8 < *ax 0 IF! "
    lea     ax, [bp-20]
    add     ax, 8
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jge     L4138
; RPN'ized expression: "( brkCntSwchTarget 4 + *u -u GenJumpUncond ) "
; Expanded expression: " (@-20) 8 + *(2) -u  GenJumpUncond ()2 "
; Fused expression:    "( + (@-20) 8 *(2) ax -u , GenJumpUncond )2 "
    lea     ax, [bp-20]
    add     ax, 8
    mov     bx, ax
    mov     ax, [bx]
    neg     ax
    push    ax
    call    _GenJumpUncond
    sub     sp, -2
L4138:
; RPN'ized expression: "( brkCntSwchTarget 0 + *u GenNumLabel ) "
; Expanded expression: " (@-20) 0 + *(2)  GenNumLabel ()2 "
; Fused expression:    "( + (@-20) 0 *(2) ax , GenNumLabel )2 "
    lea     ax, [bp-20]
    add     ax, 0
    mov     bx, ax
    push    word [bx]
    call    _GenNumLabel
    sub     sp, -2
; }
    jmp     L4112
L4111:
; else
; if
; RPN'ized expression: "tok 118 == "
; Expanded expression: "(@4) *(2) 118 == "
; Fused expression:    "== *(@4) 118 IF! "
    mov     ax, [bp+4]
    cmp     ax, 118
    jne     L4140
; {
; loc         lnext : (@-22): int
    sub     sp, 2
; RPN'ized expression: "( L4142 printf ) "
; Expanded expression: " L4142  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4142:
    db  "; case",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4142 , printf )2 "
    push    L4142
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "switchBody 0 == "
; Expanded expression: "(@8) *(2) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
    mov     ax, [bp+8]
    cmp     ax, 0
    jne     L4144
; RPN'ized expression: "( L4146 error ) "
; Expanded expression: " L4146  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4146:
    db  "Error: ParseStatement(): 'case' must be within 'switch' statement",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4146 , error )2 "
    push    L4146
    call    _error
    sub     sp, -2
L4144:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 58 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 58 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 58 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 58
    je      L4148
; RPN'ized expression: "( L4150 error ) "
; Expanded expression: " L4150  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4150:
    db  "Error: ParseStatement(): ':' expected after 'case expression'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4150 , error )2 "
    push    L4150
    call    _error
    sub     sp, -2
L4148:
; if
; RPN'ized expression: "gotUnary 0 == constExpr 0 == || synPtr 0 >= SyntaxStack synPtr + *u 0 + *u 17 == && || "
; Expanded expression: "(@-2) *(2) 0 == _Bool [sh||->4156] (@-6) *(2) 0 == _Bool ||[4156] _Bool [sh||->4154] (@-4) *(2) 0 >= _Bool [sh&&->4155] SyntaxStack (@-4) *(2) 4 * + 0 + *(2) 17 == _Bool &&[4155] _Bool ||[4154] "
; Fused expression:    "== *(@-2) 0 _Bool [sh||->4156] == *(@-6) 0 _Bool ||[4156] _Bool [sh||->4154] >= *(@-4) 0 _Bool [sh&&->4155] * *(@-4) 4 + SyntaxStack ax + ax 0 == *ax 17 _Bool &&[4155] _Bool ||[4154] "
    mov     ax, [bp-2]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L4156
    mov     ax, [bp-6]
    cmp     ax, 0
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L4156:
    test    ax, ax
    setne   al
    cbw
; JumpIfNotZero
    test    ax, ax
    jne     L4154
    mov     ax, [bp-4]
    cmp     ax, 0
    setge   al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L4155
    mov     ax, [bp-4]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 17
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
L4155:
    test    ax, ax
    setne   al
    cbw
L4154:
; JumpIfZero
    test    ax, ax
    je      L4152
; RPN'ized expression: "( L4157 error ) "
; Expanded expression: " L4157  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4157:
    db  "Error: ParseStatement(): constant integer expression expected in 'case expression :'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4157 , error )2 "
    push    L4157
    call    _error
    sub     sp, -2
L4152:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "lnext LabelCnt 2 += 2 - = "
; Expanded expression: "(@-22) LabelCnt 2 +=(2) 2 - =(2) "
; Fused expression:    "+=(34) *LabelCnt 2 - ax 2 =(34) *(@-22) ax "
    mov     ax, [_LabelCnt]
    add     ax, 2
    mov     [_LabelCnt], ax
    sub     ax, 2
    mov     [bp-22], ax
; RPN'ized expression: "( BrkCntSwchTarget 5 + *u 1 + GenJumpUncond ) "
; Expanded expression: " (@6) *(2) 10 + *(2) 1 +  GenJumpUncond ()2 "
; Fused expression:    "( + *(@6) 10 + *ax 1 , GenJumpUncond )2 "
    mov     ax, [bp+6]
    add     ax, 10
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    call    _GenJumpUncond
    sub     sp, -2
; RPN'ized expression: "( BrkCntSwchTarget 5 + *u GenNumLabel ) "
; Expanded expression: " (@6) *(2) 10 + *(2)  GenNumLabel ()2 "
; Fused expression:    "( + *(@6) 10 *(2) ax , GenNumLabel )2 "
    mov     ax, [bp+6]
    add     ax, 10
    mov     bx, ax
    push    word [bx]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "( lnext , exprVal GenJumpIfNotEqual ) "
; Expanded expression: " (@-22) *(2)  (@-8) *(2)  GenJumpIfNotEqual ()4 "
; Fused expression:    "( *(2) (@-22) , *(2) (@-8) , GenJumpIfNotEqual )4 "
    push    word [bp-22]
    push    word [bp-8]
    call    _GenJumpIfNotEqual
    sub     sp, -4
; RPN'ized expression: "( BrkCntSwchTarget 5 + *u 1 + GenNumLabel ) "
; Expanded expression: " (@6) *(2) 10 + *(2) 1 +  GenNumLabel ()2 "
; Fused expression:    "( + *(@6) 10 + *ax 1 , GenNumLabel )2 "
    mov     ax, [bp+6]
    add     ax, 10
    mov     bx, ax
    mov     ax, [bx]
    add     ax, 1
    push    ax
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "BrkCntSwchTarget 5 + *u lnext = "
; Expanded expression: "(@6) *(2) 10 + (@-22) *(2) =(2) "
; Fused expression:    "+ *(@6) 10 =(34) *ax *(@-22) "
    mov     ax, [bp+6]
    add     ax, 10
    mov     bx, ax
    mov     ax, [bp-22]
    mov     [bx], ax
    sub     sp, -2
; }
    jmp     L4141
L4140:
; else
; if
; RPN'ized expression: "tok 119 == "
; Expanded expression: "(@4) *(2) 119 == "
; Fused expression:    "== *(@4) 119 IF! "
    mov     ax, [bp+4]
    cmp     ax, 119
    jne     L4159
; {
; RPN'ized expression: "( L4161 printf ) "
; Expanded expression: " L4161  printf ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4161:
    db  "; default",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4161 , printf )2 "
    push    L4161
    call    _printf
    sub     sp, -2
; if
; RPN'ized expression: "switchBody 0 == "
; Expanded expression: "(@8) *(2) 0 == "
; Fused expression:    "== *(@8) 0 IF! "
    mov     ax, [bp+8]
    cmp     ax, 0
    jne     L4163
; RPN'ized expression: "( L4165 error ) "
; Expanded expression: " L4165  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4165:
    db  "Error: ParseStatement(): 'default' must be within 'switch' statement",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4165 , error )2 "
    push    L4165
    call    _error
    sub     sp, -2
L4163:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; if
; RPN'ized expression: "tok 58 != "
; Expanded expression: "(@4) *(2) 58 != "
; Fused expression:    "!= *(@4) 58 IF! "
    mov     ax, [bp+4]
    cmp     ax, 58
    je      L4167
; RPN'ized expression: "( L4169 error ) "
; Expanded expression: " L4169  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4169:
    db  "Error: ParseStatement(): ':' expected after 'default'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4169 , error )2 "
    push    L4169
    call    _error
    sub     sp, -2
L4167:
; if
; RPN'ized expression: "BrkCntSwchTarget 4 + *u 0 < "
; Expanded expression: "(@6) *(2) 8 + *(2) 0 < "
; Fused expression:    "+ *(@6) 8 < *ax 0 IF! "
    mov     ax, [bp+6]
    add     ax, 8
    mov     bx, ax
    mov     ax, [bx]
    cmp     ax, 0
    jge     L4171
; RPN'ized expression: "( L4173 error ) "
; Expanded expression: " L4173  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4173:
    db  "Error: ParseStatement(): only one 'default' allowed in 'switch'",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4173 , error )2 "
    push    L4173
    call    _error
    sub     sp, -2
L4171:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; RPN'ized expression: "( BrkCntSwchTarget 4 + *u GenNumLabel ) "
; Expanded expression: " (@6) *(2) 8 + *(2)  GenNumLabel ()2 "
; Fused expression:    "( + *(@6) 8 *(2) ax , GenNumLabel )2 "
    mov     ax, [bp+6]
    add     ax, 8
    mov     bx, ax
    push    word [bx]
    call    _GenNumLabel
    sub     sp, -2
; RPN'ized expression: "BrkCntSwchTarget 4 + *u 1 -u *= "
; Expanded expression: "(@6) *(2) 8 + -1 *=(2) "
; Fused expression:    "+ *(@6) 8 *=(34) *ax -1 "
    mov     ax, [bp+6]
    add     ax, 8
    mov     bx, ax
    mov     ax, [bx]
    imul    ax, ax, -1
    mov     [bx], ax
; }
    jmp     L4160
L4159:
; else
; {
; if
; RPN'ized expression: "( exprVal &u , constExpr &u , synPtr &u , gotUnary &u , tok ParseExpr ) 59 != "
; Expanded expression: " (@-8)  (@-6)  (@-4)  (@-2)  (@4) *(2)  ParseExpr ()10 59 != "
; Fused expression:    "( (@-8) , (@-6) , (@-4) , (@-2) , *(2) (@4) , ParseExpr )10 != ax 59 IF! "
    lea     ax, [bp-8]
    push    ax
    lea     ax, [bp-6]
    push    ax
    lea     ax, [bp-4]
    push    ax
    lea     ax, [bp-2]
    push    ax
    push    word [bp+4]
    call    _ParseExpr
    sub     sp, -10
    cmp     ax, 59
    je      L4175
; RPN'ized expression: "( L4177 error ) "
; Expanded expression: " L4177  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4177:
    db  "Error: ParseStatement(): ';' expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4177 , error )2 "
    push    L4177
    call    _error
    sub     sp, -2
L4175:
; if
; RPN'ized expression: "gotUnary "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
; JumpIfZero
    test    ax, ax
    je      L4179
; {
; RPN'ized expression: "( GenExpr ) "
; Expanded expression: " GenExpr ()0 "
; Fused expression:    "( GenExpr )0 "
    call    _GenExpr
; }
L4179:
; RPN'ized expression: "tok ( GetToken ) = "
; Expanded expression: "(@4)  GetToken ()0 =(2) "
; Fused expression:    "( GetToken )0 =(34) *(@4) ax "
    call    _GetToken
    mov     [bp+4], ax
; }
L4160:
L4141:
L4112:
L4097:
L4083:
L4028:
L3979:
L3924:
L3879:
L3858:
L3846:
L3844:
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@4) *(2) "
; Fused expression:    "*(2) (@4) "
    mov     ax, [bp+4]
    jmp     L3842
L3842:
    leave
    ret
; SEGMENT _TEXT
; RPN'ized expression: "6 "
; Expanded expression: "6 "
; Expression value: 6
; glb ParseBlock : (
; prm     BrkCntSwchTarget : * int
; prm     switchBody : int
;     ) int
SEGMENT _TEXT
    global  _ParseBlock
_ParseBlock:
    push    bp
    mov     bp, sp
; loc     BrkCntSwchTarget : (@4): * int
; loc     switchBody : (@6): int
; loc     tok : (@-2): int
    sub     sp, 2
; =
; RPN'ized expression: "( GetToken ) "
; Expanded expression: " GetToken ()0 "
; Fused expression:    "( GetToken )0 =(34) *(@-2) ax "
    call    _GetToken
    mov     [bp-2], ax
; for
L4182:
    jmp     L4184
L4183:
    jmp     L4182
L4184:
; {
; if
; RPN'ized expression: "tok 0 == "
; Expanded expression: "(@-2) *(2) 0 == "
; Fused expression:    "== *(@-2) 0 IF! "
    mov     ax, [bp-2]
    cmp     ax, 0
    jne     L4186
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L4181
L4186:
; if
; RPN'ized expression: "tok 125 == ParseLevel 0 > && "
; Expanded expression: "(@-2) *(2) 125 == _Bool [sh&&->4190] ParseLevel *(2) 0 > _Bool &&[4190] "
; Fused expression:    "== *(@-2) 125 _Bool [sh&&->4190] > *ParseLevel 0 _Bool &&[4190] "
    mov     ax, [bp-2]
    cmp     ax, 125
    sete    al
    cbw
    test    ax, ax
    setne   al
    cbw
; JumpIfZero
    test    ax, ax
    je      L4190
    mov     ax, [_ParseLevel]
    cmp     ax, 0
    setg    al
    cbw
    test    ax, ax
    setne   al
    cbw
L4190:
; JumpIfZero
    test    ax, ax
    je      L4188
; return
; RPN'ized expression: "tok "
; Expanded expression: "(@-2) *(2) "
; Fused expression:    "*(2) (@-2) "
    mov     ax, [bp-2]
    jmp     L4181
L4188:
; if
; RPN'ized expression: "( 0 , tok TokenStartsDeclaration ) "
; Expanded expression: " 0  (@-2) *(2)  TokenStartsDeclaration ()4 "
; Fused expression:    "( 0 , *(2) (@-2) , TokenStartsDeclaration )4 "
    push    0
    push    word [bp-2]
    call    _TokenStartsDeclaration
    sub     sp, -4
; JumpIfZero
    test    ax, ax
    je      L4191
; {
; if
; RPN'ized expression: "switchBody "
; Expanded expression: "(@6) *(2) "
; Fused expression:    "*(2) (@6) "
    mov     ax, [bp+6]
; JumpIfZero
    test    ax, ax
    je      L4193
; RPN'ized expression: "( L4195 error ) "
; Expanded expression: " L4195  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4195:
    db  "Error: ParseBlock(): Declarations aren't supported in 'switch' body",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4195 , error )2 "
    push    L4195
    call    _error
    sub     sp, -2
L4193:
; RPN'ized expression: "tok ( tok ParseDecl ) = "
; Expanded expression: "(@-2)  (@-2) *(2)  ParseDecl ()2 =(2) "
; Fused expression:    "( *(2) (@-2) , ParseDecl )2 =(34) *(@-2) ax "
    push    word [bp-2]
    call    _ParseDecl
    sub     sp, -2
    mov     [bp-2], ax
; }
    jmp     L4192
L4191:
; else
; if
; RPN'ized expression: "ParseLevel 0 > "
; Expanded expression: "ParseLevel *(2) 0 > "
; Fused expression:    "> *ParseLevel 0 IF! "
    mov     ax, [_ParseLevel]
    cmp     ax, 0
    jle     L4197
; {
; RPN'ized expression: "tok ( switchBody , BrkCntSwchTarget , tok ParseStatement ) = "
; Expanded expression: "(@-2)  (@6) *(2)  (@4) *(2)  (@-2) *(2)  ParseStatement ()6 =(2) "
; Fused expression:    "( *(2) (@6) , *(2) (@4) , *(2) (@-2) , ParseStatement )6 =(34) *(@-2) ax "
    push    word [bp+6]
    push    word [bp+4]
    push    word [bp-2]
    call    _ParseStatement
    sub     sp, -6
    mov     [bp-2], ax
; }
    jmp     L4198
L4197:
; else
; RPN'ized expression: "( ( tok GetTokenName ) , L4199 error ) "
; Expanded expression: "  (@-2) *(2)  GetTokenName ()2  L4199  error ()4 "
; SEGMENT _TEXT
SEGMENT _DATA
L4199:
    db  "Error: ParseBlock(): Unexpected token %s",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( ( *(2) (@-2) , GetTokenName )2 , L4199 , error )4 "
    push    word [bp-2]
    call    _GetTokenName
    sub     sp, -2
    push    ax
    push    L4199
    call    _error
    sub     sp, -4
L4198:
L4192:
; }
    jmp     L4183
L4185:
L4181:
    leave
    ret
; SEGMENT _TEXT
; glb main : (
; prm     argc : int
; prm     argv : * * char
;     ) int
SEGMENT _TEXT
    global  _main
_main:
    push    bp
    mov     bp, sp
; loc     argc : (@4): int
; loc     argv : (@6): * * char
; if
; RPN'ized expression: "argc 2 != "
; Expanded expression: "(@4) *(2) 2 != "
; Fused expression:    "!= *(@4) 2 IF! "
    mov     ax, [bp+4]
    cmp     ax, 2
    je      L4202
; {
; RPN'ized expression: "CurFileName L4204 = "
; Expanded expression: "CurFileName L4204 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L4204:
    db  0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *CurFileName L4204 "
    mov     ax, L4204
    mov     [_CurFileName], ax
; RPN'ized expression: "( L4206 error ) "
; Expanded expression: " L4206  error ()2 "
; SEGMENT _TEXT
SEGMENT _DATA
L4206:
    db  "Error: Wrong command line parameters, just a filename expected",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "( L4206 , error )2 "
    push    L4206
    call    _error
    sub     sp, -2
; }
L4202:
; RPN'ized expression: "CurFileName argv 1 + *u = "
; Expanded expression: "CurFileName (@6) *(2) 2 + *(2) =(2) "
; Fused expression:    "+ *(@6) 2 =(34) *CurFileName *ax "
    mov     ax, [bp+6]
    add     ax, 2
    mov     bx, ax
    mov     ax, [bx]
    mov     [_CurFileName], ax
; RPN'ized expression: "SyntaxStack SyntaxStackCnt + *u 0 + *u 17 = "
; Expanded expression: "SyntaxStack SyntaxStackCnt *(2) 4 * + 0 + 17 =(2) "
; Fused expression:    "* *SyntaxStackCnt 4 + SyntaxStack ax + ax 0 =(34) *ax 17 "
    mov     ax, [_SyntaxStackCnt]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 17
    mov     [bx], ax
; RPN'ized expression: "SyntaxStack SyntaxStackCnt ++p + *u 1 + *u 0 = "
; Expanded expression: "SyntaxStack SyntaxStackCnt ++p(2) 4 * + 2 + 0 =(2) "
; Fused expression:    "++p(2) *SyntaxStackCnt * ax 4 + SyntaxStack ax + ax 2 =(34) *ax 0 "
    mov     ax, [_SyntaxStackCnt]
    inc     word [_SyntaxStackCnt]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; RPN'ized expression: "SyntaxStack SyntaxStackCnt + *u 0 + *u 19 = "
; Expanded expression: "SyntaxStack SyntaxStackCnt *(2) 4 * + 0 + 19 =(2) "
; Fused expression:    "* *SyntaxStackCnt 4 + SyntaxStack ax + ax 0 =(34) *ax 19 "
    mov     ax, [_SyntaxStackCnt]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 0
    mov     bx, ax
    mov     ax, 19
    mov     [bx], ax
; RPN'ized expression: "SyntaxStack SyntaxStackCnt ++p + *u 1 + *u 0 = "
; Expanded expression: "SyntaxStack SyntaxStackCnt ++p(2) 4 * + 2 + 0 =(2) "
; Fused expression:    "++p(2) *SyntaxStackCnt * ax 4 + SyntaxStack ax + ax 2 =(34) *ax 0 "
    mov     ax, [_SyntaxStackCnt]
    inc     word [_SyntaxStackCnt]
    imul    ax, ax, 4
    mov     cx, ax
    mov     ax, _SyntaxStack
    add     ax, cx
    add     ax, 2
    mov     bx, ax
    mov     ax, 0
    mov     [bx], ax
; if
; RPN'ized expression: "OutputFormat 1 == "
; Expanded expression: "OutputFormat *(2) 1 == "
; Fused expression:    "== *OutputFormat 1 IF! "
    mov     ax, [_OutputFormat]
    cmp     ax, 1
    jne     L4208
; {
; RPN'ized expression: "FileHeader L4210 = "
; Expanded expression: "FileHeader L4210 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L4210:
    db  "SEGMENT _TEXT PUBLIC CLASS=CODE USE16",10,"SEGMENT _DATA PUBLIC CLASS=DATA",10,10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *FileHeader L4210 "
    mov     ax, L4210
    mov     [_FileHeader], ax
; RPN'ized expression: "CodeHeader L4212 = "
; Expanded expression: "CodeHeader L4212 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L4212:
    db  "SEGMENT _TEXT",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *CodeHeader L4212 "
    mov     ax, L4212
    mov     [_CodeHeader], ax
; RPN'ized expression: "CodeFooter L4214 = "
; Expanded expression: "CodeFooter L4214 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L4214:
    db  "; SEGMENT _TEXT",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *CodeFooter L4214 "
    mov     ax, L4214
    mov     [_CodeFooter], ax
; RPN'ized expression: "DataHeader L4216 = "
; Expanded expression: "DataHeader L4216 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L4216:
    db  "SEGMENT _DATA",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *DataHeader L4216 "
    mov     ax, L4216
    mov     [_DataHeader], ax
; RPN'ized expression: "DataFooter L4218 = "
; Expanded expression: "DataFooter L4218 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L4218:
    db  "; SEGMENT _DATA",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *DataFooter L4218 "
    mov     ax, L4218
    mov     [_DataFooter], ax
; }
    jmp     L4209
L4208:
; else
; {
; RPN'ized expression: "FileHeader L4220 = "
; Expanded expression: "FileHeader L4220 =(2) "
; SEGMENT _TEXT
SEGMENT _DATA
L4220:
    db  "BITS 16",10,0
; SEGMENT _DATA
SEGMENT _TEXT
; Fused expression:    "=(34) *FileHeader L4220 "
    mov     ax, L4220
    mov     [_FileHeader], ax
; }
L4209:
; RPN'ized expression: "( ShiftChar ) "
; Expanded expression: " ShiftChar ()0 "
; Fused expression:    "( ShiftChar )0 "
    call    _ShiftChar
; RPN'ized expression: "( FileHeader printf ) "
; Expanded expression: " FileHeader *(2)  printf ()2 "
; Fused expression:    "( *(2) FileHeader , printf )2 "
    push    word [_FileHeader]
    call    _printf
    sub     sp, -2
; RPN'ized expression: "( 0 , 0 ParseBlock ) "
; Expanded expression: " 0  0  ParseBlock ()4 "
; Fused expression:    "( 0 , 0 , ParseBlock )4 "
    push    0
    push    0
    call    _ParseBlock
    sub     sp, -4
; RPN'ized expression: "( DumpSynDecls ) "
; Expanded expression: " DumpSynDecls ()0 "
; Fused expression:    "( DumpSynDecls )0 "
    call    _DumpSynDecls
; RPN'ized expression: "( DumpMacroTable ) "
; Expanded expression: " DumpMacroTable ()0 "
; Fused expression:    "( DumpMacroTable )0 "
    call    _DumpMacroTable
; RPN'ized expression: "( DumpIdentTable ) "
; Expanded expression: " DumpIdentTable ()0 "
; Fused expression:    "( DumpIdentTable )0 "
    call    _DumpIdentTable
; return
; RPN'ized expression: "0 "
; Expanded expression: "0 "
; Expression value: 0
; Fused expression:    "0 "
    mov     ax, 0
    jmp     L4201
L4201:
    leave
    ret
; SEGMENT _TEXT

; Syntax/declaration table/stack:
; Bytes used: 12584/16384


; Macro table:
; Macro EXTERN = `extern`
; Macro PROTO = ``
; Macro NULL = `0`
; Macro size_t = `int`
; Macro CHAR_BIT = `(8)`
; Macro INT_MAX = `(32767)`
; Macro INT_MIN = `(-32767-1)`
; Macro FILE = `int`
; Macro EOF = `(-1)`
; Macro MAX_IDENT_LEN = `31`
; Macro MAX_STRING_LEN = `127`
; Macro MAX_CHAR_QUEUE_LEN = `256`
; Macro MAX_MACRO_TABLE_LEN = `4096`
; Macro MAX_STRING_TABLE_LEN = `512`
; Macro MAX_IDENT_TABLE_LEN = `4096`
; Macro tokEof = `0`
; Macro tokNum = `1`
; Macro tokLitChar = `2`
; Macro tokLitStr = `3`
; Macro tokLShift = `4`
; Macro tokRShift = `5`
; Macro tokLogAnd = `6`
; Macro tokLogOr = `7`
; Macro tokEQ = `8`
; Macro tokNEQ = `9`
; Macro tokLEQ = `10`
; Macro tokGEQ = `11`
; Macro tokInc = `12`
; Macro tokDec = `13`
; Macro tokArrow = `14`
; Macro tokEllipsis = `15`
; Macro tokIdent = `16`
; Macro tokVoid = `17`
; Macro tokChar = `18`
; Macro tokInt = `19`
; Macro tokReturn = `20`
; Macro tokGoto = `21`
; Macro tokIf = `22`
; Macro tokElse = `23`
; Macro tokWhile = `24`
; Macro tokCont = `25`
; Macro tokBreak = `26`
; Macro tokSizeof = `27`
; Macro tokAssignMul = `'A'`
; Macro tokAssignDiv = `'B'`
; Macro tokAssignMod = `'C'`
; Macro tokAssignAdd = `'D'`
; Macro tokAssignSub = `'E'`
; Macro tokAssignLSh = `'F'`
; Macro tokAssignRSh = `'G'`
; Macro tokAssignAnd = `'H'`
; Macro tokAssignXor = `'I'`
; Macro tokAssignOr = `'J'`
; Macro tokFloat = `'a'`
; Macro tokDouble = `'b'`
; Macro tokLong = `'c'`
; Macro tokShort = `'d'`
; Macro tokUnsigned = `'e'`
; Macro tokSigned = `'f'`
; Macro tokConst = `'g'`
; Macro tokVolatile = `'h'`
; Macro tokRestrict = `'i'`
; Macro tokStatic = `'j'`
; Macro tokInline = `'k'`
; Macro tokExtern = `'l'`
; Macro tokAuto = `'m'`
; Macro tokRegister = `'n'`
; Macro tokTypedef = `'o'`
; Macro tokEnum = `'p'`
; Macro tokStruct = `'q'`
; Macro tokUnion = `'r'`
; Macro tokDo = `'s'`
; Macro tokFor = `'t'`
; Macro tokSwitch = `'u'`
; Macro tokCase = `'v'`
; Macro tokDefault = `'w'`
; Macro tok_Bool = `'x'`
; Macro tok_Complex = `'y'`
; Macro tok_Imagin = `'z'`
; Macro tokIfNot = `'L'`
; Macro tokUnaryAnd = `'M'`
; Macro tokUnaryStar = `'N'`
; Macro tokUnaryPlus = `'O'`
; Macro tokUnaryMinus = `'P'`
; Macro tokPostInc = `'Q'`
; Macro tokPostDec = `'R'`
; Macro tokPostAdd = `'S'`
; Macro tokPostSub = `'T'`
; Macro tokULess = `'U'`
; Macro tokUGreater = `'V'`
; Macro tokULEQ = `'W'`
; Macro tokUGEQ = `'X'`
; Macro tokLocalOfs = `'Y'`
; Macro tokShortCirc = `'Z'`
; Macro FormatFlat = `0`
; Macro FormatSegmented = `1`
; Macro SYNTAX_STACK_MAX = `2048`
; Macro SymVoidSynPtr = `0`
; Macro SymIntSynPtr = `1`
; Macro STACK_SIZE = `100`
; Macro SymFxn = `1`
; Macro SymGlobalVar = `2`
; Macro SymGlobalArr = `3`
; Macro SymLocalVar = `4`
; Macro SymLocalArr = `5`
; Macro OPERATOR_STACK_SIZE = `100`
; Macro X86InstrMov = `0x00`
; Macro X86InstrMovSx = `0x01`
; Macro X86InstrMovZx = `0x02`
; Macro X86InstrXchg = `0x03`
; Macro X86InstrLea = `0x04`
; Macro X86InstrPush = `0x05`
; Macro X86InstrPop = `0x06`
; Macro X86InstrInc = `0x07`
; Macro X86InstrDec = `0x08`
; Macro X86InstrAdd = `0x09`
; Macro X86InstrSub = `0x0A`
; Macro X86InstrAnd = `0x0B`
; Macro X86InstrXor = `0x0C`
; Macro X86InstrOr = `0x0D`
; Macro X86InstrCmp = `0x0E`
; Macro X86InstrTest = `0x0F`
; Macro X86InstrMul = `0x10`
; Macro X86InstrImul = `0x11`
; Macro X86InstrIdiv = `0x12`
; Macro X86InstrShl = `0x13`
; Macro X86InstrSar = `0x14`
; Macro X86InstrNeg = `0x15`
; Macro X86InstrNot = `0x16`
; Macro X86InstrCbw = `0x17`
; Macro X86InstrCwd = `0x18`
; Macro X86InstrSetCc = `0x19`
; Macro X86InstrJcc = `0x1A`
; Macro X86InstrJNotCc = `0x1B`
; Macro X86InstrLeave = `0x1C`
; Macro X86InstrCall = `0x1D`
; Macro X86InstrRet = `0x1E`
; Macro X86InstrJmp = `0x1F`
; Macro X86OpRegAByte = `0x00`
; Macro X86OpRegAByteHigh = `0x01`
; Macro X86OpRegCByte = `0x02`
; Macro X86OpRegAWord = `0x03`
; Macro X86OpRegBWord = `0x04`
; Macro X86OpRegCWord = `0x05`
; Macro X86OpRegDWord = `0x06`
; Macro X86OpRegBpWord = `0x07`
; Macro X86OpRegSpWord = `0x08`
; Macro X86OpRegAByteOrWord = `0x09`
; Macro X86OpRegCByteOrWord = `0x0A`
; Macro X86OpConst = `0x0B`
; Macro X86OpLabel = `0x0C`
; Macro X86OpNumLabel = `0x0D`
; Macro X86OpIndLabel = `0x0E`
; Macro X86OpIndLabelExplicitByte = `0x0F`
; Macro X86OpIndLabelExplicitWord = `0x10`
; Macro X86OpIndLabelExplicitByteOrWord = `0x11`
; Macro X86OpIndLocal = `0x12`
; Macro X86OpIndLocalExplicitByte = `0x13`
; Macro X86OpIndLocalExplicitWord = `0x14`
; Macro X86OpIndLocalExplicitByteOrWord = `0x15`
; Macro X86OpIndRegB = `0x16`
; Macro X86OpIndRegBExplicitByte = `0x17`
; Macro X86OpIndRegBExplicitWord = `0x18`
; Macro X86OpIndRegBExplicitByteOrWord = `0x19`
; Macro tokOpNum = `0x100`
; Macro tokOpIdent = `0x101`
; Macro tokOpLocalOfs = `0x102`
; Macro tokOpAcc = `0x103`
; Macro tokOpIndIdent = `0x104`
; Macro tokOpIndLocalOfs = `0x105`
; Macro tokOpIndAcc = `0x106`
; Macro tokOpStack = `0x107`
; Macro tokOpIndStack = `0x108`
; Macro tokPushAcc = `0x200`
; Bytes used: 3036/4096


; Identifier table:
; Ident _setargv__
; Ident exit
; Ident status
; Ident malloc
; Ident s
; Ident free
; Ident <something>
; Ident atoi
; Ident strlen
; Ident strcpy
; Ident s1
; Ident s2
; Ident strchr
; Ident c
; Ident strcmp
; Ident memmove
; Ident memcpy
; Ident isspace
; Ident isdigit
; Ident isalpha
; Ident isalnum
; Ident putchar
; Ident fopen
; Ident fclose
; Ident fgetc
; Ident printf
; Ident fmt
; Ident GetToken
; Ident GetTokenName
; Ident token
; Ident GetTokenValueInt
; Ident GetTokenValueString
; Ident GetTokenValueStringLength
; Ident GetTokenIdentName
; Ident GetTokenFileName
; Ident GetTokenFileLineNo
; Ident GetTokenFileLinePos
; Ident DumpMacroTable
; Ident PurgeStringTable
; Ident AddString
; Ident label
; Ident str
; Ident len
; Ident FindString
; Ident AddIdent
; Ident name
; Ident FindIdent
; Ident DumpIdentTable
; Ident GenLabel
; Ident Label
; Ident GenExtern
; Ident GenNumLabel
; Ident GenZeroData
; Ident Size
; Ident GenIntData
; Ident Val
; Ident GenAddrData
; Ident GenJumpUncond
; Ident GenJumpIfZero
; Ident GenJumpIfNotZero
; Ident GenJumpIfNotEqual
; Ident val
; Ident GenFxnProlog
; Ident GenFxnEpilog
; Ident GenLocalAlloc
; Ident GenStrData
; Ident insertJump
; Ident GenExpr
; Ident PushSyntax
; Ident t
; Ident PushSyntax2
; Ident v
; Ident DumpSynDecls
; Ident push2
; Ident v2
; Ident ins2
; Ident pos
; Ident ins
; Ident del
; Ident cnt
; Ident TokenStartsDeclaration
; Ident params
; Ident ParseDecl
; Ident tok
; Ident ShiftChar
; Ident error
; Ident format
; Ident FindSymbol
; Ident SymType
; Ident SynPtr
; Ident GetDeclSize
; Ident SyntaxPtr
; Ident ParseExpr
; Ident GotUnary
; Ident ExprTypeSynPtr
; Ident ConstExpr
; Ident ConstVal
; Ident GetFxnInfo
; Ident MinParams
; Ident MaxParams
; Ident ReturnExprTypeSynPtr
; Ident TokenValueInt
; Ident TokenIdentName
; Ident TokenIdentNameLen
; Ident TokenValueString
; Ident TokenStringLen
; Ident LineNo
; Ident LinePos
; Ident CurFileName
; Ident CurFile
; Ident CharQueue
; Ident CharQueueLen
; Ident MacroTable
; Ident MacroTableLen
; Ident StringTable
; Ident StringTableLen
; Ident IdentTable
; Ident IdentTableLen
; Ident ExprLevel
; Ident stack
; Ident sp
; Ident opstack
; Ident opsp
; Ident OutputFormat
; Ident FileHeader
; Ident CodeHeader
; Ident CodeFooter
; Ident DataHeader
; Ident DataFooter
; Ident SizeOfChar
; Ident CharIsSigned
; Ident SizeOfWord
; Ident LabelCnt
; Ident CurFxnSyntaxPtr
; Ident CurFxnParamCnt
; Ident CurFxnParamOfs
; Ident CurFxnLocalOfs
; Ident CurFxnReturnExprTypeSynPtr
; Ident CurFxnEpilogLabel
; Ident ParseLevel
; Ident SyntaxStack
; Ident SyntaxStackCnt
; Ident FindMacro
; Ident AddMacroIdent
; Ident AddMacroExpansionChar
; Ident e
; Ident GetTokenByWord
; Ident word
; Ident GetNextChar
; Ident ShiftCharN
; Ident n
; Ident SkipSpace
; Ident SkipNewLines
; Ident GetIdent
; Ident GenPrintLabel
; Ident GenPrintNumLabel
; Ident GenPrintInstr
; Ident instr
; Ident GenSelectByteOrWord
; Ident op
; Ident opSz
; Ident GenPrintOperand
; Ident GenPrintOperandSeparator
; Ident GenPrintNewLine
; Ident GenPrintInstrNoOperand
; Ident GenPrintInstr1Operand
; Ident instrval
; Ident operand
; Ident operandval
; Ident GenPrintInstr2Operands
; Ident operand1
; Ident operand1val
; Ident operand2
; Ident operand2val
; Ident GenPrintInstr3Operands
; Ident operand3
; Ident operand3val
; Ident GenExtendRegAIfNeeded
; Ident size
; Ident GenReadIdent
; Ident GenReadLocal
; Ident ofs
; Ident GenReadIndirect
; Ident GenReadCRegIdent
; Ident GenReadCRegLocal
; Ident GenReadCRegIndirect
; Ident GenIncDecIdent
; Ident GenIncDecLocal
; Ident GenIncDecIndirect
; Ident GenPostIncDecIdent
; Ident GenPostIncDecLocal
; Ident GenPostIncDecIndirect
; Ident GenPostAddSubIdent
; Ident GenPostAddSubLocal
; Ident GenPostAddSubIndirect
; Ident GetOperandInfo
; Ident idx
; Ident lvalSize
; Ident delDeref
; Ident GenFuse
; Ident GenGetBinaryOperatorInstr
; Ident GenExpr1
; Ident push
; Ident stacktop
; Ident pop2
; Ident pop
; Ident pushop2
; Ident pushop
; Ident opstacktop
; Ident popop2
; Ident popop
; Ident isop
; Ident isunary
; Ident preced
; Ident precedGEQ
; Ident lfttok
; Ident rhttok
; Ident expr
; Ident gotUnary
; Ident exprUnary
; Ident decayArray
; Ident arithmetic
; Ident nonVoidTypeCheck
; Ident numericTypeCheck
; Ident promoteType
; Ident simplifyConstExpr
; Ident isConst
; Ident top
; Ident bottom
; Ident exprval
; Ident InsertSyntax2
; Ident InsertSyntax
; Ident DeleteSyntax
; Ident ShowDecl
; Ident IsParam
; Ident ParseArrayDimension
; Ident ParseFxnParams
; Ident ParseBlock
; Ident BrkCntSwchTarget
; Ident switchBody
; Ident AddFxnParamSymbols
; Ident ParseDerived
; Ident ParseStatement
; Ident main
; Ident argc
; Ident argv
; Bytes used: 2956/4096
