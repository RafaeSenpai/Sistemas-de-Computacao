	.file	"soma.c"
	.text
	.p2align 4,,15
	.globl	soma
	.type	soma, @function
soma:
.LFB0:
	.cfi_startproc
	addl	%edi, accum(%rip)
	ret
	.cfi_endproc
.LFE0:
	.size	soma, .-soma
	.globl	accum
	.bss
	.align 4
	.type	accum, @object
	.size	accum, 4
accum:
	.zero	4
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3.2) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
