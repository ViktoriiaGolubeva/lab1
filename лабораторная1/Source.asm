.686
.model flat,stdcall
.stack 100h
.data
X dw 11
Y dw 5
Z dw 76
M dw ?
.code
ExitProcess PROTO STDCALL :DWORD
Start:
NOT Z
MOV ax, X
ADD ax,Y
mov bx, Z
XOR bx,ax
mov cx, X
SUB cx, Y
AND bx,cx
MOV M, bx
exit:
Invoke ExitProcess,1
End Start