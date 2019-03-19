#32位的汇编语言程序例子 asm32.s  ===系统调用版
#gcc -m32 asm32.s -o asm32
#./asm32

	.data
msg:	.string	"Hello!\r\n"
len=.-msg
	.text
	.globl	main
main:	
	movl $len, %edx
	movl $msg, %ecx
	movl $1, %ebx
	movl $4, %eax
	int $0x80
	movl $0,%ebx
	movl $1,%eax
	int $0x80

