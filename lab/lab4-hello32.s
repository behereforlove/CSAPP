#32位的汇编语言程序例子 hello32.s  ===函数调用版
#gcc -m32 hello32.s -o hello32
#./hello32
#采用堆栈传递参数

	.data
msg:	.string	"Hello!\r\n"
	.text
	.globl	main
main:	pushl	%ebp
	movl	%esp, %ebp
	push 	$msg
	call	printf
	addl	$4,%esp	
	call	getchar
	popl	%ebp
	ret
