	.file	"SquareStringpattern.c"
	.section	.rodata
.LC0:
	.string	"Enter String:"
.LC1:
	.string	"%s"
.LC2:
	.string	"%c "
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$10048, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1145258561, -13(%rbp)
	movb	$0, -9(%rbp)
	movl	$0, -10028(%rbp)
	movl	$0, -10048(%rbp)
	movl	$0, -10044(%rbp)
	movl	$0, -10040(%rbp)
	movl	$0, -10024(%rbp)
	movl	$0, -10036(%rbp)
	movl	$0, -10032(%rbp)
	movl	$0, -10020(%rbp)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	-13(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-13(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -10024(%rbp)
	movl	-10024(%rbp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	movl	%eax, -10028(%rbp)
	movl	$0, -10036(%rbp)
	movl	-10028(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -10032(%rbp)
	movl	$0, -10040(%rbp)
	jmp	.L2
.L9:
	movl	-10036(%rbp), %eax
	movl	%eax, -10048(%rbp)
	jmp	.L3
.L8:
	movl	-10036(%rbp), %eax
	movl	%eax, -10044(%rbp)
	jmp	.L4
.L7:
	movl	-10048(%rbp), %eax
	cmpl	-10036(%rbp), %eax
	je	.L5
	movl	-10048(%rbp), %eax
	cmpl	-10032(%rbp), %eax
	je	.L5
	movl	-10044(%rbp), %eax
	cmpl	-10036(%rbp), %eax
	je	.L5
	movl	-10044(%rbp), %eax
	cmpl	-10032(%rbp), %eax
	jne	.L6
.L5:
	movl	-10040(%rbp), %eax
	cltq
	movzbl	-13(%rbp,%rax), %ecx
	movl	-10044(%rbp), %eax
	movslq	%eax, %rsi
	movl	-10048(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	addq	%rsi, %rax
	subq	$10016, %rax
	movb	%cl, (%rax)
.L6:
	addl	$1, -10044(%rbp)
.L4:
	movl	-10044(%rbp), %eax
	cmpl	-10032(%rbp), %eax
	jle	.L7
	addl	$1, -10048(%rbp)
.L3:
	movl	-10048(%rbp), %eax
	cmpl	-10032(%rbp), %eax
	jle	.L8
	addl	$1, -10036(%rbp)
	subl	$1, -10032(%rbp)
	addl	$1, -10040(%rbp)
.L2:
	movl	-10040(%rbp), %eax
	cmpl	-10024(%rbp), %eax
	jl	.L9
	movl	$0, -10048(%rbp)
	jmp	.L10
.L13:
	movl	$0, -10044(%rbp)
	jmp	.L11
.L12:
	movl	-10044(%rbp), %eax
	movslq	%eax, %rcx
	movl	-10048(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	addq	%rcx, %rax
	subq	$10016, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -10044(%rbp)
.L11:
	movl	-10044(%rbp), %eax
	cmpl	-10028(%rbp), %eax
	jl	.L12
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -10048(%rbp)
.L10:
	movl	-10048(%rbp), %eax
	cmpl	-10028(%rbp), %eax
	jl	.L13
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
