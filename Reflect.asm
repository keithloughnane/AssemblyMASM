.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data

        UserInput db 255 DUP(0)

.code

start:

        invoke StdIn, addr UserInput, 254
        invoke StdOut, addr UserInput
        invoke ExitProcess, 0
        
end start
