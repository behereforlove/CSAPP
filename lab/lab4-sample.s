#64位汇编语言程序 sample.s
#gcc -m64 -c sample.s -o sample.o
#objdump -d sample.o


	pushq	%rbp
	movq	%rsp, %rbp
	movq	$0x10, %rax
	popq	%rbp
	ret

