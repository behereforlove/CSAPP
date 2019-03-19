#64位汇编语言程序 hello64.s   ===函数调用版
#gcc -m64 hello64.s -o hello64
#./hello64
#采用寄存器传递参数，全局变量采用RIP相对寻址

	.data
msg:	.string	"Hello!\r\n"
	.text
	.globl	main
main:	
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	msg(%rip), %rdi
	call	printf@PLT
	call	getchar@PLT
	popq	%rbp
	ret

