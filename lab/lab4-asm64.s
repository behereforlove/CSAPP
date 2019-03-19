#64位的hello程序 asm64.s  ===系统调用版
#gcc -c asm64.s -o asm64.o                ===编译生成.o 目标文件
#ld asm64.o -o asm64                      ===链接生成执行程序
#./asm64
#系统调用的参数采用寄存器--同函数调用，rdi、rsi、rdx、rcx

	.data
msg:	.string	"Hello!\r\n"
len=.-msg
	.text
	.globl _start
_start:	
	movq $len, %rdx  #rdx
	leaq msg(%rip), %rsi
	movq $1, %rdi
	movq $1, %rax
	syscall
	movq $0,%rdi
	movq $60,%rax
	syscall

