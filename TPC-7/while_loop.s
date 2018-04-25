	.file	"while_loop.c"
	.text
	.p2align 4,,15
	.globl	while_loop
	.type	while_loop, @function
while_loop:
.LFB0:
	.cfi_startproc
	testl	%edx, %edx
	jle	.L5
	movl	%edx, %ecx
	sall	$4, %ecx
	cmpl	%ecx, %esi
	jge	.L5
	subl	$16, %ecx
	movl	%edi, %eax
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L12:
	movl	%ecx, %edi
	subl	$16, %ecx
	cmpl	%esi, %edi
	jle	.L11
.L3:
	addl	%edx, %eax
	imull	%edx, %esi
	subl	$1, %edx
	jne	.L12
	rep ret
	.p2align 4,,10
	.p2align 3
.L11:
	rep ret
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	while_loop, .-while_loop
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3.2) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
