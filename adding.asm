INCLUDE Irvine32.inc
Title Home work 5 procs
;ANDREY ILKIV

.data
	numbers	dw	10 dup(?)
	numb	db	"Enter a number any number: ",0
	conformation	db	"Your total is: ",0
.code
main PROC
	mov	ecx,10
	Loop1:
	call	read
	call	adder
	call	crlf
	call	dumpregs
	loop	Loop1
;-------------------
read proc
	sub	edx,edx
	sub	eax,eax
	mov	edx,offset numb
	call	writestring
	call	crlf
	call	readint
	ret
	;call	writedec
	;call	crlf
read endp
;-------------------
adder proc
	add	ax,numbers
	mov	numbers,ax
	mov	edx,offset conformation
	call	writestring
	call	writedec
	call	crlf
	ret
adder endp

exit
main ENDP
END main

Enter a number any number:
5
Your total is: 5


  EAX=00000005  EBX=7EFDE000  ECX=0000000A  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
6
Your total is: 11


  EAX=0000000B  EBX=7EFDE000  ECX=00000009  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
7
Your total is: 18


  EAX=00000012  EBX=7EFDE000  ECX=00000008  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
8
Your total is: 26


  EAX=0000001A  EBX=7EFDE000  ECX=00000007  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
9
Your total is: 35


  EAX=00000023  EBX=7EFDE000  ECX=00000006  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
10
Your total is: 45


  EAX=0000002D  EBX=7EFDE000  ECX=00000005  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
11
Your total is: 56


  EAX=00000038  EBX=7EFDE000  ECX=00000004  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
12
Your total is: 68


  EAX=00000044  EBX=7EFDE000  ECX=00000003  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
13
Your total is: 81


  EAX=00000051  EBX=7EFDE000  ECX=00000002  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number any number:
14
Your total is: 95


  EAX=0000005F  EBX=7EFDE000  ECX=00000001  EDX=00404030
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0
