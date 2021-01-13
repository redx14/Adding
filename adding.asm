INCLUDE Irvine32.inc
Title Test 2 question 1
;Michael Epstein
.data
	numbers	dw	5 dup(?)
	numb	db	"Enter a number to add",0
	conformation	db	"Total: ",0
.code
main PROC
	mov ecx,5
	Loop1:
	call read
	call adder
	call crlf
	call dumpregs
	loop Loop1
read proc
	sub edx,edx
	sub eax,eax
	mov edx,offset numb
	call writestring
	call crlf
	call readint
	ret
read endp
adder proc
	add ax,numbers
	mov numbers,ax
	mov edx,offset conformation
	call writestring
	call writedec
	call crlf
	ret
adder endp
exit
main ENDP
END main

Enter a number to add
12
Total: 12


  EAX=0000000C  EBX=7EFDE000  ECX=00000005  EDX=00404020
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number to add
14
Total: 26


  EAX=0000001A  EBX=7EFDE000  ECX=00000004  EDX=00404020
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number to add
16
Total: 42


  EAX=0000002A  EBX=7EFDE000  ECX=00000003  EDX=00404020
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number to add
18
Total: 60


  EAX=0000003C  EBX=7EFDE000  ECX=00000002  EDX=00404020
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0

Enter a number to add
20
Total: 80


  EAX=00000050  EBX=7EFDE000  ECX=00000001  EDX=00404020
  ESI=00000000  EDI=00000000  EBP=0018FF94  ESP=0018FF8C
  EIP=0040103D  EFL=00000202  CF=0  SF=0  ZF=0  OF=0
