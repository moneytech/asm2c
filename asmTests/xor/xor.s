	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_program
	.align	4, 0x90
_program:                               ## @program
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	testb	$1, _m+50(%rip)
	je	LBB0_2
## BB#1:
	jmp	LBB0_32
LBB0_2:
	testb	$1, _m+49(%rip)
	je	LBB0_4
## BB#3:
	xorl	%esi, %esi
	leaq	-160(%rbp), %rax
	movl	$148, %ecx
	movl	%ecx, %edx
	leaq	_m(%rip), %rdi
	addq	$5436, %rdi             ## imm = 0x153C
	movb	$0, _m+49(%rip)
	movl	_m+5432(%rip), %ecx
	movl	%ecx, %r8d
	subq	$148, %r8
	movl	%r8d, %ecx
	movl	%ecx, _m+5432(%rip)
	movq	%rax, %r8
	movl	_m+5432(%rip), %ecx
	movl	%ecx, %r9d
	shlq	$2, %r9
	addq	%r9, %rdi
	movq	%rdi, -192(%rbp)        ## 8-byte Spill
	movq	%r8, %rdi
	movq	-192(%rbp), %r8         ## 8-byte Reload
	movl	%esi, -196(%rbp)        ## 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movq	-208(%rbp), %rdi        ## 8-byte Reload
	movl	-196(%rbp), %esi        ## 4-byte Reload
	callq	_longjmp
LBB0_4:
	movl	$2, _m(%rip)
	movl	_m(%rip), %eax
	xorl	_m(%rip), %eax
	movl	%eax, _m(%rip)
	cmpl	$0, _m(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movl	_m(%rip), %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_6
## BB#5:
	jmp	LBB0_23
LBB0_6:
	movl	$511, _m(%rip)          ## imm = 0x1FF
	movl	$255, _m+4(%rip)
	movl	_m(%rip), %eax
	xorl	_m+4(%rip), %eax
	movl	%eax, _m(%rip)
	cmpl	$0, _m(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movl	_m(%rip), %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	je	LBB0_8
## BB#7:
	jmp	LBB0_23
LBB0_8:
	movl	$511, _m(%rip)          ## imm = 0x1FF
	movl	$255, _m+4(%rip)
	movzwl	_m(%rip), %eax
	movzwl	_m+4(%rip), %ecx
	xorl	%ecx, %eax
	movw	%ax, %dx
	movw	%dx, _m(%rip)
	movzwl	_m(%rip), %eax
	cmpl	$0, %eax
	sete	%sil
	andb	$1, %sil
	movb	%sil, _m+45(%rip)
	movzwl	_m(%rip), %eax
	sarl	$15, %eax
	cmpl	$0, %eax
	setne	%sil
	andb	$1, %sil
	movb	%sil, _m+47(%rip)
	testb	$1, _m+45(%rip)
	je	LBB0_10
## BB#9:
	jmp	LBB0_23
LBB0_10:
	movl	$511, _m(%rip)          ## imm = 0x1FF
	movl	$255, _m+4(%rip)
	movzbl	_m(%rip), %eax
	movzbl	_m+4(%rip), %ecx
	xorl	%ecx, %eax
	movb	%al, %dl
	movb	%dl, _m(%rip)
	movzbl	_m(%rip), %eax
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	movzbl	_m(%rip), %eax
	sarl	$7, %eax
	cmpl	$0, %eax
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_12
## BB#11:
	jmp	LBB0_23
LBB0_12:
	movl	_m(%rip), %eax
	subl	$256, %eax              ## imm = 0x100
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	cmpl	$256, _m(%rip)          ## imm = 0x100
	setb	%cl
	andb	$1, %cl
	movb	%cl, _m+44(%rip)
	movl	_m(%rip), %eax
	subl	$256, %eax              ## imm = 0x100
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_14
## BB#13:
	jmp	LBB0_23
LBB0_14:
	movl	$61695, _m+8(%rip)      ## imm = 0xF0FF
	movl	$4095, _m+4(%rip)       ## imm = 0xFFF
	movzbl	_m+9(%rip), %eax
	movzbl	_m+5(%rip), %ecx
	xorl	%ecx, %eax
	movb	%al, %dl
	movb	%dl, _m+9(%rip)
	movzbl	_m+9(%rip), %eax
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	movzbl	_m+9(%rip), %eax
	sarl	$7, %eax
	cmpl	$0, %eax
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	movl	_m+8(%rip), %eax
	subl	$65535, %eax            ## imm = 0xFFFF
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movb	%dl, _m+45(%rip)
	cmpl	$65535, _m+8(%rip)      ## imm = 0xFFFF
	setb	%dl
	andb	$1, %dl
	movb	%dl, _m+44(%rip)
	movl	_m+8(%rip), %eax
	subl	$65535, %eax            ## imm = 0xFFFF
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%dl
	andb	$1, %dl
	movb	%dl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_16
## BB#15:
	jmp	LBB0_23
LBB0_16:
	movl	$57089, _m+8(%rip)      ## imm = 0xDF01
	movzbl	_m+8(%rip), %eax
	orl	$240, %eax
	movb	%al, %cl
	movb	%cl, _m+8(%rip)
	movzbl	_m+8(%rip), %eax
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movzbl	_m+8(%rip), %eax
	sarl	$7, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	movl	_m+8(%rip), %eax
	subl	$57329, %eax            ## imm = 0xDFF1
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	cmpl	$57329, _m+8(%rip)      ## imm = 0xDFF1
	setb	%cl
	andb	$1, %cl
	movb	%cl, _m+44(%rip)
	movl	_m+8(%rip), %eax
	subl	$57329, %eax            ## imm = 0xDFF1
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_18
## BB#17:
	jmp	LBB0_23
LBB0_18:
	movl	$1, _m(%rip)
	movl	_m(%rip), %eax
	orl	_m(%rip), %eax
	movl	%eax, _m(%rip)
	cmpl	$0, _m(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movl	_m(%rip), %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	je	LBB0_20
## BB#19:
	jmp	LBB0_23
LBB0_20:
	movl	$0, _m(%rip)
	movl	_m(%rip), %eax
	orl	_m(%rip), %eax
	movl	%eax, _m(%rip)
	cmpl	$0, _m(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movl	_m(%rip), %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	testb	$1, _m+45(%rip)
	jne	LBB0_22
## BB#21:
	jmp	LBB0_23
LBB0_22:
	movl	_m(%rip), %eax
	xorl	_m(%rip), %eax
	movl	%eax, _m(%rip)
	cmpl	$0, _m(%rip)
	sete	%cl
	andb	$1, %cl
	movb	%cl, _m+45(%rip)
	movl	_m(%rip), %eax
	shrl	$31, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, _m+47(%rip)
	jmp	LBB0_24
LBB0_23:
	movb	$1, _m(%rip)
LBB0_24:
	movl	$33, %edi
	movb	$76, _m+1(%rip)
	callq	_asm2C_INT
	testb	$1, _m+49(%rip)
	je	LBB0_31
## BB#25:
	leaq	-160(%rbp), %rdi
	callq	_setjmp
	cmpl	$0, %eax
	jne	LBB0_30
## BB#26:
	movl	$148, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	leaq	-160(%rbp), %rsi
	leaq	_m(%rip), %rdi
	addq	$5436, %rdi             ## imm = 0x153C
	movl	_m+5432(%rip), %eax
	movl	%eax, %r8d
	shlq	$2, %r8
	addq	%r8, %rdi
	callq	___memcpy_chk
	movl	_m+5432(%rip), %r9d
	movl	%r9d, %ecx
	addq	$148, %rcx
	movl	%ecx, %r9d
	movl	%r9d, _m+5432(%rip)
	movl	_m+5432(%rip), %r9d
	movl	%r9d, %ecx
	cmpq	$4096, %rcx             ## imm = 0x1000
	setb	%r10b
	xorb	$-1, %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movslq	%r9d, %rcx
	cmpq	$0, %rcx
	movq	%rax, -216(%rbp)        ## 8-byte Spill
	je	LBB0_28
## BB#27:
	leaq	L___func__.program(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$76, %edx
	leaq	L_.str.1(%rip), %rcx
	callq	___assert_rtn
LBB0_28:
	jmp	LBB0_29
LBB0_29:
	jmp	LBB0_32
LBB0_30:
	jmp	LBB0_31
LBB0_31:
	movb	$1, _m+50(%rip)
LBB0_32:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movb	_m+50(%rip), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movl	%edx, -220(%rbp)        ## 4-byte Spill
	jne	LBB0_34
## BB#33:
	movl	-220(%rbp), %eax        ## 4-byte Reload
	addq	$224, %rsp
	popq	%rbp
	retq
LBB0_34:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_asm2C_INT
	.align	4, 0x90
_asm2C_INT:                             ## @asm2C_INT
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$1184, %rsp             ## imm = 0x4A0
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -1012(%rbp)
	movb	_m+1(%rip), %cl
	movb	%cl, -1017(%rbp)
	movb	_m(%rip), %cl
	movb	%cl, -1018(%rbp)
	movw	_m(%rip), %dx
	movw	%dx, -1020(%rbp)
	movw	_m+4(%rip), %dx
	movw	%dx, -1022(%rbp)
	movw	_m+8(%rip), %dx
	movw	%dx, -1024(%rbp)
	movw	_m+12(%rip), %dx
	movw	%dx, -1026(%rbp)
	movb	$0, _m+44(%rip)
	movzbl	-1017(%rbp), %esi
	movzbl	-1018(%rbp), %edx
	movzwl	-1020(%rbp), %ecx
	movzwl	-1022(%rbp), %r8d
	movzwl	-1024(%rbp), %r9d
	movzwl	-1026(%rbp), %edi
	movq	%rsp, %rax
	movl	%edi, (%rax)
	leaq	L_.str.46(%rip), %rdi
	xorl	%r10d, %r10d
	movb	%r10b, %r11b
	movb	%r11b, %al
	callq	_log_debug2
	movl	-1012(%rbp), %ecx
	movl	%ecx, %edx
	subl	$16, %edx
	movl	%ecx, -1084(%rbp)       ## 4-byte Spill
	movl	%edx, -1088(%rbp)       ## 4-byte Spill
	je	LBB1_1
	jmp	LBB1_64
LBB1_64:
	movl	-1084(%rbp), %eax       ## 4-byte Reload
	subl	$33, %eax
	movl	%eax, -1092(%rbp)       ## 4-byte Spill
	je	LBB1_5
	jmp	LBB1_65
LBB1_65:
	movl	-1084(%rbp), %eax       ## 4-byte Reload
	subl	$49, %eax
	movl	%eax, -1096(%rbp)       ## 4-byte Spill
	je	LBB1_41
	jmp	LBB1_59
LBB1_1:
	movzwl	-1020(%rbp), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -1100(%rbp)       ## 4-byte Spill
	movl	%ecx, -1104(%rbp)       ## 4-byte Spill
	je	LBB1_2
	jmp	LBB1_74
LBB1_74:
	movl	-1100(%rbp), %eax       ## 4-byte Reload
	subl	$19, %eax
	movl	%eax, -1108(%rbp)       ## 4-byte Spill
	je	LBB1_3
	jmp	LBB1_4
LBB1_2:
	leaq	L_.str.47(%rip), %rdi
	movb	$0, %al
	callq	_log_debug2
	jmp	LBB1_61
LBB1_3:
	leaq	L_.str.48(%rip), %rdi
	movb	$0, %al
	callq	_log_debug2
	callq	_stackDump
	jmp	LBB1_61
LBB1_4:
	jmp	LBB1_60
LBB1_5:
	movzbl	-1017(%rbp), %eax
	addl	$-9, %eax
	movl	%eax, %ecx
	subl	$67, %eax
	movq	%rcx, -1120(%rbp)       ## 8-byte Spill
	movl	%eax, -1124(%rbp)       ## 4-byte Spill
	ja	LBB1_39
## BB#66:
	leaq	LJTI1_0(%rip), %rax
	movq	-1120(%rbp), %rcx       ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB1_6:
	leaq	_m(%rip), %rax
	movl	_m+12(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	4920(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	addq	%rax, %rsi
	movq	%rsi, -1040(%rbp)
	movl	$0, -1016(%rbp)
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-1016(%rbp), %rax
	movq	-1040(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$36, %edx
	je	LBB1_10
## BB#8:                                ##   in Loop: Header=BB1_7 Depth=1
	leaq	L_.str.49(%rip), %rdi
	movslq	-1016(%rbp), %rax
	movq	-1040(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1128(%rbp)       ## 4-byte Spill
## BB#9:                                ##   in Loop: Header=BB1_7 Depth=1
	movl	-1016(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1016(%rbp)
	jmp	LBB1_7
LBB1_10:
	jmp	LBB1_61
LBB1_11:
	movl	$512, _m+12(%rip)       ## imm = 0x200
	jmp	LBB1_61
LBB1_12:
	cmpq	$0, _m+4408128(%rip)
	je	LBB1_14
## BB#13:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.50(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movq	_m+4408128(%rip), %r9
	movl	_m+12(%rip), %eax
	movl	%eax, %r10d
	movq	%rdi, %r11
	addq	%r10, %r11
	movzwl	_m+34(%rip), %eax
	movl	%eax, %r10d
	movl	4920(%rdi,%r10,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r11
	movq	%r8, %rdi
	movq	%r9, %r8
	movq	%r11, %r9
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1132(%rbp)       ## 4-byte Spill
	jmp	LBB1_15
LBB1_14:
	xorl	%esi, %esi
	movl	$1000, %eax             ## imm = 0x3E8
	movl	%eax, %edx
	leaq	L_.str.5(%rip), %rcx
	leaq	_m(%rip), %rdi
	leaq	-1008(%rbp), %r8
	movl	_m+12(%rip), %eax
	movl	%eax, %r9d
	movq	%rdi, %r10
	addq	%r9, %r10
	movzwl	_m+34(%rip), %eax
	movl	%eax, %r9d
	movl	4920(%rdi,%r9,4), %eax
	movl	%eax, %edi
	addq	%rdi, %r10
	movq	%r8, %rdi
	movq	%r10, %r8
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, -1136(%rbp)       ## 4-byte Spill
LBB1_15:
	leaq	L_.str.51(%rip), %rsi
	leaq	-1008(%rbp), %rdi
	callq	_fopen
	leaq	L_.str.52(%rip), %rdi
	leaq	-1008(%rbp), %rsi
	movq	%rax, _asm2C_INT.file(%rip)
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	_log_debug2
	cmpq	$0, _asm2C_INT.file(%rip)
	je	LBB1_17
## BB#16:
	movl	$1, _m(%rip)
	jmp	LBB1_18
LBB1_17:
	leaq	L_.str.53(%rip), %rdi
	leaq	-1008(%rbp), %rsi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_log_error
LBB1_18:
	jmp	LBB1_61
LBB1_19:
	leaq	L_.str.54(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movb	$0, %al
	callq	_log_debug2
	movq	_asm2C_INT.file(%rip), %rdi
	callq	_fclose
	cmpl	$0, %eax
	je	LBB1_21
## BB#20:
	leaq	L_.str.55(%rip), %rdi
	movb	$1, _m+44(%rip)
	callq	_perror
	leaq	L_.str.56(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	_log_error
LBB1_21:
	movq	$0, _asm2C_INT.file(%rip)
	jmp	LBB1_61
LBB1_22:
	leaq	_m(%rip), %rax
	movl	_m+12(%rip), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %edx
	movl	4920(%rax,%rdx,4), %ecx
	movl	%ecx, %eax
	addq	%rax, %rsi
	movq	%rsi, -1048(%rbp)
	movq	_asm2C_INT.file(%rip), %rdi
	callq	_feof
	cmpl	$0, %eax
	je	LBB1_24
## BB#23:
	leaq	L_.str.57(%rip), %rdi
	movb	$0, %al
	callq	_log_debug2
	movl	$0, _m(%rip)
	jmp	LBB1_30
LBB1_24:
	movl	$1, %eax
	movl	%eax, %esi
	movq	-1048(%rbp), %rdi
	movzwl	-1024(%rbp), %eax
	movl	%eax, %edx
	movq	_asm2C_INT.file(%rip), %rcx
	callq	_fread
	movq	%rax, -1056(%rbp)
	movq	-1056(%rbp), %rax
	movzwl	-1024(%rbp), %r8d
	movl	%r8d, %ecx
	cmpq	%rcx, %rax
	je	LBB1_28
## BB#25:
	leaq	L_.str.55(%rip), %rdi
	callq	_perror
	leaq	L_.str.58(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movq	-1056(%rbp), %rdx
	movb	$0, %al
	callq	_log_error
	movq	_asm2C_INT.file(%rip), %rdi
	callq	_feof
	cmpl	$0, %eax
	jne	LBB1_27
## BB#26:
	leaq	L_.str.59(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movq	-1056(%rbp), %rdx
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	_log_error
	movb	$1, _m+44(%rip)
LBB1_27:
	jmp	LBB1_29
LBB1_28:
	leaq	L_.str.60(%rip), %rdi
	movq	_asm2C_INT.file(%rip), %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	_log_debug2
LBB1_29:
	movq	-1056(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, _m(%rip)
LBB1_30:
	jmp	LBB1_61
LBB1_31:
	movl	$0, -1060(%rbp)
	movzbl	-1017(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1140(%rbp)       ## 4-byte Spill
	je	LBB1_32
	jmp	LBB1_67
LBB1_67:
	movl	-1140(%rbp), %eax       ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -1144(%rbp)       ## 4-byte Spill
	je	LBB1_33
	jmp	LBB1_68
LBB1_68:
	movl	-1140(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1148(%rbp)       ## 4-byte Spill
	je	LBB1_34
	jmp	LBB1_35
LBB1_32:
	movl	$0, -1060(%rbp)
	jmp	LBB1_35
LBB1_33:
	movl	$1, -1060(%rbp)
	jmp	LBB1_35
LBB1_34:
	movl	$2, -1060(%rbp)
LBB1_35:
	leaq	L_.str.61(%rip), %rdi
	movzwl	-1024(%rbp), %eax
	shll	$16, %eax
	movzwl	-1026(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, -1072(%rbp)
	movq	-1072(%rbp), %rsi
	movl	-1060(%rbp), %edx
	movb	$0, %al
	callq	_log_debug2
	movq	_asm2C_INT.file(%rip), %rdi
	movq	-1072(%rbp), %rsi
	movl	-1060(%rbp), %edx
	callq	_fseek
	cmpl	$0, %eax
	je	LBB1_37
## BB#36:
	leaq	L_.str.62(%rip), %rdi
	movb	$0, %al
	callq	_log_error
LBB1_37:
	jmp	LBB1_61
LBB1_38:
	callq	_stackDump
	movb	$1, _m+49(%rip)
	movb	$1, _m+50(%rip)
	movb	-1018(%rbp), %al
	movb	%al, _m+51(%rip)
	jmp	LBB1_61
LBB1_39:
	jmp	LBB1_40
LBB1_40:
	jmp	LBB1_41
LBB1_41:
	movzwl	-1020(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1152(%rbp)       ## 4-byte Spill
	je	LBB1_42
	jmp	LBB1_69
LBB1_69:
	movl	-1152(%rbp), %eax       ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1156(%rbp)       ## 4-byte Spill
	je	LBB1_46
	jmp	LBB1_70
LBB1_70:
	movl	-1152(%rbp), %eax       ## 4-byte Reload
	subl	$7, %eax
	movl	%eax, -1160(%rbp)       ## 4-byte Spill
	je	LBB1_49
	jmp	LBB1_71
LBB1_71:
	movl	-1152(%rbp), %eax       ## 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1164(%rbp)       ## 4-byte Spill
	je	LBB1_52
	jmp	LBB1_72
LBB1_72:
	movl	-1152(%rbp), %eax       ## 4-byte Reload
	subl	$517, %eax              ## imm = 0x205
	movl	%eax, -1168(%rbp)       ## 4-byte Spill
	je	LBB1_56
	jmp	LBB1_73
LBB1_73:
	movl	-1152(%rbp), %eax       ## 4-byte Reload
	subl	$1281, %eax             ## imm = 0x501
	movl	%eax, -1172(%rbp)       ## 4-byte Spill
	je	LBB1_53
	jmp	LBB1_57
LBB1_42:
	leaq	L_.str.63(%rip), %rdi
	movzwl	-1024(%rbp), %esi
	movb	$0, %al
	callq	_log_debug2
	movl	_m+4916(%rip), %esi
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %esi
	cmpl	$128, %esi
	jb	LBB1_44
## BB#43:
	leaq	L_.str.64(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_log_error
	jmp	LBB1_61
LBB1_44:
	leaq	L_.str.65(%rip), %rdi
	movl	_m+4916(%rip), %eax
	movl	%eax, _m(%rip)
	movzwl	-1024(%rbp), %eax
	addl	_m+4916(%rip), %eax
	movl	%eax, _m+4916(%rip)
	movl	_m(%rip), %esi
	movb	$0, %al
	callq	_log_debug2
## BB#45:
	jmp	LBB1_61
LBB1_46:
	leaq	L_.str.66(%rip), %rdi
	movl	_m+4(%rip), %esi
	movb	$0, %al
	callq	_log_debug2
	movl	_m+4916(%rip), %esi
	addl	$1, %esi
	cmpl	$128, %esi
	jb	LBB1_48
## BB#47:
	leaq	L_.str.64(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_log_error
	jmp	LBB1_61
LBB1_48:
	leaq	L_.str.67(%rip), %rdi
	leaq	_m(%rip), %rax
	movl	_m+4916(%rip), %ecx
	movl	%ecx, %edx
	movl	$4280128, 4920(%rax,%rdx,4) ## imm = 0x414F40
	movl	_m+4916(%rip), %ecx
	movl	%ecx, _m(%rip)
	movl	_m(%rip), %esi
	movb	$0, %al
	callq	_log_debug2
	movl	_m+4916(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _m+4916(%rip)
	jmp	LBB1_61
LBB1_49:
	leaq	L_.str.68(%rip), %rdi
	movl	_m+4(%rip), %esi
	movl	_m+12(%rip), %edx
	movl	_m+8(%rip), %ecx
	movb	$0, %al
	callq	_log_debug2
	movzwl	-1022(%rbp), %ecx
	cmpl	_m+4916(%rip), %ecx
	jbe	LBB1_51
## BB#50:
	leaq	L_.str.69(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_log_error
	jmp	LBB1_61
LBB1_51:
	leaq	L_.str.70(%rip), %rdi
	leaq	_m(%rip), %rax
	movzwl	_m+12(%rip), %ecx
	andl	$65535, %ecx            ## imm = 0xFFFF
	movzwl	_m+8(%rip), %edx
	shll	$16, %edx
	addl	%edx, %ecx
	movzwl	-1022(%rbp), %edx
	movl	%edx, %esi
	movl	%ecx, 4920(%rax,%rsi,4)
	movzwl	-1022(%rbp), %esi
	movzwl	-1022(%rbp), %ecx
	movl	%ecx, %r8d
	movl	4920(%rax,%r8,4), %edx
	movb	$0, %al
	callq	_log_debug2
	jmp	LBB1_61
LBB1_52:
	leaq	L_.str.71(%rip), %rdi
	movzwl	-1022(%rbp), %esi
	movb	$0, %al
	callq	_log_debug2
	jmp	LBB1_61
LBB1_53:
	leaq	L_.str.72(%rip), %rdi
	movzwl	-1022(%rbp), %eax
	shll	$16, %eax
	movzwl	-1024(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -1076(%rbp)
	movl	-1076(%rbp), %esi
	movb	$0, %al
	callq	_log_debug2
	movl	_m+21820(%rip), %ecx
	addl	-1076(%rbp), %ecx
	cmpl	$4194304, %ecx          ## imm = 0x400000
	jb	LBB1_55
## BB#54:
	leaq	L_.str.73(%rip), %rdi
	movb	$1, _m+44(%rip)
	movb	$0, %al
	callq	_log_error
	movl	$1, %edi
	callq	_exit
LBB1_55:
	leaq	L_.str.74(%rip), %rdi
	movl	_m+21820(%rip), %eax
	movl	%eax, %ecx
	addq	$21824, %rcx            ## imm = 0x5540
	movl	%ecx, %eax
	movl	%eax, -1080(%rbp)
	movl	-1076(%rbp), %eax
	addl	_m+21820(%rip), %eax
	movl	%eax, _m+21820(%rip)
	movl	_m+21820(%rip), %eax
	addl	$21824, %eax            ## imm = 0x5540
	movl	%eax, %esi
	movb	$0, %al
	callq	_log_debug2
	leaq	L_.str.75(%rip), %rdi
	movl	-1080(%rbp), %esi
	andl	$65535, %esi            ## imm = 0xFFFF
	movl	%esi, _m+8(%rip)
	movl	-1080(%rbp), %esi
	shrl	$16, %esi
	movl	%esi, _m+4(%rip)
	movl	$0, _m+20(%rip)
	movl	$0, _m+16(%rip)
	movl	-1080(%rbp), %esi
	movl	_m+4(%rip), %edx
	movl	_m+8(%rip), %ecx
	movb	$0, %al
	callq	_log_debug2
	jmp	LBB1_61
LBB1_56:
	jmp	LBB1_61
LBB1_57:
	jmp	LBB1_58
LBB1_58:
	jmp	LBB1_60
LBB1_59:
	jmp	LBB1_60
LBB1_60:
	leaq	L_.str.76(%rip), %rdi
	movb	$1, _m+44(%rip)
	movl	-1012(%rbp), %esi
	movzbl	-1017(%rbp), %edx
	movzbl	-1018(%rbp), %ecx
	movb	$0, %al
	callq	_log_error
LBB1_61:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB1_63
## BB#62:
	addq	$1184, %rsp             ## imm = 0x4A0
	popq	%rbp
	retq
LBB1_63:
	callq	___stack_chk_fail
	.cfi_endproc
	.align	2, 0x90
L1_0_set_6 = LBB1_6-LJTI1_0
L1_0_set_39 = LBB1_39-LJTI1_0
L1_0_set_11 = LBB1_11-LJTI1_0
L1_0_set_12 = LBB1_12-LJTI1_0
L1_0_set_19 = LBB1_19-LJTI1_0
L1_0_set_22 = LBB1_22-LJTI1_0
L1_0_set_31 = LBB1_31-LJTI1_0
L1_0_set_38 = LBB1_38-LJTI1_0
LJTI1_0:
	.long	L1_0_set_6
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_11
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_12
	.long	L1_0_set_19
	.long	L1_0_set_22
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_31
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_39
	.long	L1_0_set_38

	.globl	_asm2C_printOffsets
	.align	4, 0x90
_asm2C_printOffsets:                    ## @asm2C_printOffsets
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str.2(%rip), %rax
	leaq	L_.str.3(%rip), %rsi
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	_fopen
	leaq	L_.str.4(%rip), %rsi
	movl	$52, %ecx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	subl	-4(%rbp), %edx
	movb	$0, %al
	callq	_fprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_fclose
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_log_error
	.align	4, 0x90
_log_error:                             ## @log_error
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$1472, %rsp             ## imm = 0x5C0
	testb	%al, %al
	movaps	%xmm7, -1280(%rbp)      ## 16-byte Spill
	movaps	%xmm6, -1296(%rbp)      ## 16-byte Spill
	movaps	%xmm5, -1312(%rbp)      ## 16-byte Spill
	movaps	%xmm4, -1328(%rbp)      ## 16-byte Spill
	movaps	%xmm3, -1344(%rbp)      ## 16-byte Spill
	movaps	%xmm2, -1360(%rbp)      ## 16-byte Spill
	movaps	%xmm1, -1376(%rbp)      ## 16-byte Spill
	movaps	%xmm0, -1392(%rbp)      ## 16-byte Spill
	movq	%rdi, -1400(%rbp)       ## 8-byte Spill
	movq	%r9, -1408(%rbp)        ## 8-byte Spill
	movq	%r8, -1416(%rbp)        ## 8-byte Spill
	movq	%rcx, -1424(%rbp)       ## 8-byte Spill
	movq	%rdx, -1432(%rbp)       ## 8-byte Spill
	movq	%rsi, -1440(%rbp)       ## 8-byte Spill
	je	LBB3_7
## BB#6:
	movaps	-1392(%rbp), %xmm0      ## 16-byte Reload
	movaps	%xmm0, -1216(%rbp)
	movaps	-1376(%rbp), %xmm1      ## 16-byte Reload
	movaps	%xmm1, -1200(%rbp)
	movaps	-1360(%rbp), %xmm2      ## 16-byte Reload
	movaps	%xmm2, -1184(%rbp)
	movaps	-1344(%rbp), %xmm3      ## 16-byte Reload
	movaps	%xmm3, -1168(%rbp)
	movaps	-1328(%rbp), %xmm4      ## 16-byte Reload
	movaps	%xmm4, -1152(%rbp)
	movaps	-1312(%rbp), %xmm5      ## 16-byte Reload
	movaps	%xmm5, -1136(%rbp)
	movaps	-1296(%rbp), %xmm6      ## 16-byte Reload
	movaps	%xmm6, -1120(%rbp)
	movaps	-1280(%rbp), %xmm7      ## 16-byte Reload
	movaps	%xmm7, -1104(%rbp)
LBB3_7:
	movq	-1408(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1224(%rbp)
	movq	-1416(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -1232(%rbp)
	movq	-1424(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -1240(%rbp)
	movq	-1432(%rbp), %rsi       ## 8-byte Reload
	movq	%rsi, -1248(%rbp)
	movq	-1440(%rbp), %rdi       ## 8-byte Reload
	movq	%rdi, -1256(%rbp)
	movq	-1400(%rbp), %r8        ## 8-byte Reload
	xorl	%esi, %esi
	movl	$1024, %r9d             ## imm = 0x400
	movl	%r9d, %edx
	leaq	-1072(%rbp), %r10
	leaq	-1040(%rbp), %rdi
	movq	___stack_chk_guard@GOTPCREL(%rip), %r11
	movq	(%r11), %r11
	movq	%r11, -8(%rbp)
	movq	%r8, -1080(%rbp)
	movq	%r10, %r8
	leaq	-1264(%rbp), %r11
	movq	%r11, 16(%r8)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-1080(%rbp), %rcx
	movq	%r10, %r8
	callq	___vsprintf_chk
	leaq	-1072(%rbp), %rcx
	cmpq	$0, _logDebug(%rip)
	movl	%eax, -1444(%rbp)       ## 4-byte Spill
	movq	%rcx, -1456(%rbp)       ## 8-byte Spill
	je	LBB3_2
## BB#1:
	leaq	L_.str.5(%rip), %rsi
	leaq	-1040(%rbp), %rdx
	movq	_logDebug(%rip), %rdi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -1460(%rbp)       ## 4-byte Spill
	jmp	LBB3_3
LBB3_2:
	leaq	L_.str.5(%rip), %rdi
	leaq	-1040(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1464(%rbp)       ## 4-byte Spill
LBB3_3:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB3_5
## BB#4:
	addq	$1472, %rsp             ## imm = 0x5C0
	popq	%rbp
	retq
LBB3_5:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_log_debug
	.align	4, 0x90
_log_debug:                             ## @log_debug
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_log_info
	.align	4, 0x90
_log_info:                              ## @log_info
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$1472, %rsp             ## imm = 0x5C0
	testb	%al, %al
	movaps	%xmm7, -1280(%rbp)      ## 16-byte Spill
	movaps	%xmm6, -1296(%rbp)      ## 16-byte Spill
	movaps	%xmm5, -1312(%rbp)      ## 16-byte Spill
	movaps	%xmm4, -1328(%rbp)      ## 16-byte Spill
	movaps	%xmm3, -1344(%rbp)      ## 16-byte Spill
	movaps	%xmm2, -1360(%rbp)      ## 16-byte Spill
	movaps	%xmm1, -1376(%rbp)      ## 16-byte Spill
	movaps	%xmm0, -1392(%rbp)      ## 16-byte Spill
	movq	%rdi, -1400(%rbp)       ## 8-byte Spill
	movq	%r9, -1408(%rbp)        ## 8-byte Spill
	movq	%r8, -1416(%rbp)        ## 8-byte Spill
	movq	%rcx, -1424(%rbp)       ## 8-byte Spill
	movq	%rdx, -1432(%rbp)       ## 8-byte Spill
	movq	%rsi, -1440(%rbp)       ## 8-byte Spill
	je	LBB5_7
## BB#6:
	movaps	-1392(%rbp), %xmm0      ## 16-byte Reload
	movaps	%xmm0, -1216(%rbp)
	movaps	-1376(%rbp), %xmm1      ## 16-byte Reload
	movaps	%xmm1, -1200(%rbp)
	movaps	-1360(%rbp), %xmm2      ## 16-byte Reload
	movaps	%xmm2, -1184(%rbp)
	movaps	-1344(%rbp), %xmm3      ## 16-byte Reload
	movaps	%xmm3, -1168(%rbp)
	movaps	-1328(%rbp), %xmm4      ## 16-byte Reload
	movaps	%xmm4, -1152(%rbp)
	movaps	-1312(%rbp), %xmm5      ## 16-byte Reload
	movaps	%xmm5, -1136(%rbp)
	movaps	-1296(%rbp), %xmm6      ## 16-byte Reload
	movaps	%xmm6, -1120(%rbp)
	movaps	-1280(%rbp), %xmm7      ## 16-byte Reload
	movaps	%xmm7, -1104(%rbp)
LBB5_7:
	movq	-1408(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1224(%rbp)
	movq	-1416(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -1232(%rbp)
	movq	-1424(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -1240(%rbp)
	movq	-1432(%rbp), %rsi       ## 8-byte Reload
	movq	%rsi, -1248(%rbp)
	movq	-1440(%rbp), %rdi       ## 8-byte Reload
	movq	%rdi, -1256(%rbp)
	movq	-1400(%rbp), %r8        ## 8-byte Reload
	xorl	%esi, %esi
	movl	$1024, %r9d             ## imm = 0x400
	movl	%r9d, %edx
	leaq	-1072(%rbp), %r10
	leaq	-1040(%rbp), %rdi
	movq	___stack_chk_guard@GOTPCREL(%rip), %r11
	movq	(%r11), %r11
	movq	%r11, -8(%rbp)
	movq	%r8, -1080(%rbp)
	movq	%r10, %r8
	leaq	-1264(%rbp), %r11
	movq	%r11, 16(%r8)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-1080(%rbp), %rcx
	movq	%r10, %r8
	callq	___vsprintf_chk
	leaq	-1072(%rbp), %rcx
	cmpq	$0, _logDebug(%rip)
	movl	%eax, -1444(%rbp)       ## 4-byte Spill
	movq	%rcx, -1456(%rbp)       ## 8-byte Spill
	je	LBB5_2
## BB#1:
	leaq	L_.str.5(%rip), %rsi
	leaq	-1040(%rbp), %rdx
	movq	_logDebug(%rip), %rdi
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -1460(%rbp)       ## 4-byte Spill
	jmp	LBB5_3
LBB5_2:
	leaq	L_.str.5(%rip), %rdi
	leaq	-1040(%rbp), %rsi
	movb	$0, %al
	callq	_printf
	movl	%eax, -1464(%rbp)       ## 4-byte Spill
LBB5_3:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB5_5
## BB#4:
	addq	$1472, %rsp             ## imm = 0x5C0
	popq	%rbp
	retq
LBB5_5:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_log_debug2
	.align	4, 0x90
_log_debug2:                            ## @log_debug2
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_checkIfVgaRamEmpty
	.align	4, 0x90
_checkIfVgaRamEmpty:                    ## @checkIfVgaRamEmpty
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$64000, -4(%rbp)        ## imm = 0xFA00
	jge	LBB7_6
## BB#2:                                ##   in Loop: Header=BB7_1 Depth=1
	leaq	_m(%rip), %rax
	movslq	-4(%rbp), %rcx
	cmpb	$0, 4280128(%rax,%rcx)
	je	LBB7_4
## BB#3:                                ##   in Loop: Header=BB7_1 Depth=1
	movl	$0, -8(%rbp)
LBB7_4:                                 ##   in Loop: Header=BB7_1 Depth=1
	jmp	LBB7_5
LBB7_5:                                 ##   in Loop: Header=BB7_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB7_1
LBB7_6:
	leaq	L_.str.6(%rip), %rdi
	leaq	L_.str.8(%rip), %rax
	leaq	L_.str.7(%rip), %rcx
	cmpl	$0, -8(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	_log_debug
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_stackDump
	.align	4, 0x90
_stackDump:                             ## @stackDump
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	leaq	L_.str.9(%rip), %rdi
	movb	_m+48(%rip), %al
	andb	$1, %al
	movzbl	%al, %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.10(%rip), %rdi
	movl	$4, %esi
                                        ## 
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.11(%rip), %rdi
	movl	$8, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.12(%rip), %rdi
	movl	$2, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.13(%rip), %rdi
	movl	$1, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.14(%rip), %rdi
	movl	$4408136, %ecx          ## imm = 0x434348
	movl	%ecx, %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.15(%rip), %rdi
	movl	_m(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	leaq	_m(%rip), %rdi
	movl	$4, %esi
	callq	_hexDump
	leaq	L_.str.16(%rip), %rdi
	movl	_m+4(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.17(%rip), %rdi
	movl	_m+8(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.18(%rip), %rdi
	movl	_m+12(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.19(%rip), %rdi
	movl	_m+24(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.20(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+32(%rip), %esi
	movzwl	_m+32(%rip), %ecx
	movl	%ecx, %r8d
	movl	4920(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.21(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+34(%rip), %esi
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %r8d
	movl	4920(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.22(%rip), %rdi
	movl	_m+16(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.23(%rip), %rdi
	leaq	_m(%rip), %rdx
	movl	_m+16(%rip), %ecx
	movl	%ecx, %r8d
	movq	%rdx, %r9
	addq	%r8, %r9
	movzwl	_m+34(%rip), %ecx
	movl	%ecx, %r8d
	movl	4920(%rdx,%r8,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r9
	movq	%r9, %rsi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.24(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+36(%rip), %esi
	movzwl	_m+36(%rip), %ecx
	movl	%ecx, %r8d
	movl	4920(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movb	$0, %al
	callq	_log_debug
	leaq	_m(%rip), %rdx
	addq	$36, %rdx
	movl	$4, %esi
	movq	%rdx, %rdi
	callq	_hexDump
	leaq	L_.str.25(%rip), %rdi
	movl	_m+20(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.26(%rip), %rdi
	leaq	_m(%rip), %rdx
	movl	_m+20(%rip), %ecx
	movl	%ecx, %r8d
	movq	%rdx, %r9
	addq	%r8, %r9
	movzwl	_m+36(%rip), %ecx
	movl	%ecx, %r8d
	movl	4920(%rdx,%r8,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r9
	movq	%r9, %rsi
	movb	$0, %al
	callq	_log_debug
	movl	$50, %esi
	leaq	_m(%rip), %rdx
	movl	_m+20(%rip), %ecx
	movl	%ecx, %edi
	movq	%rdx, %r8
	addq	%rdi, %r8
	movzwl	_m+36(%rip), %ecx
	movl	%ecx, %edi
	movl	4920(%rdx,%rdi,4), %ecx
	movl	%ecx, %edx
	addq	%rdx, %r8
	movq	%r8, %rdi
	callq	_hexDump
	leaq	L_.str.27(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+38(%rip), %esi
	movzwl	_m+38(%rip), %ecx
	movl	%ecx, %r8d
	movl	4920(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.28(%rip), %rdi
	leaq	_m(%rip), %rdx
	movzwl	_m+40(%rip), %esi
	movzwl	_m+40(%rip), %ecx
	movl	%ecx, %r8d
	movl	4920(%rdx,%r8,4), %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdx
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.29(%rip), %rdi
	leaq	_m(%rip), %rdx
	addq	$21824, %rdx            ## imm = 0x5540
	movq	%rdx, %rsi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.30(%rip), %rdi
	leaq	_m(%rip), %rdx
	addq	$4280128, %rdx          ## imm = 0x414F40
	movq	%rdx, %rsi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.31(%rip), %rdi
	movzbl	_m+4280128(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.32(%rip), %rdi
	movb	_m+45(%rip), %al
	andb	$1, %al
	movzbl	%al, %esi
	movb	$0, %al
	callq	_log_debug
	leaq	L_.str.33(%rip), %rdi
	movl	_m+5432(%rip), %esi
	movb	$0, %al
	callq	_log_debug
	callq	_checkIfVgaRamEmpty
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_hexDump
	.align	4, 0x90
_hexDump:                               ## @hexDump
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	L_.str.34(%rip), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	_log_debug
	cmpl	$0, -44(%rbp)
	jne	LBB9_2
## BB#1:
	leaq	L_.str.35(%rip), %rdi
	movb	$0, %al
	callq	_log_debug
	jmp	LBB9_20
LBB9_2:
	cmpl	$0, -44(%rbp)
	jge	LBB9_4
## BB#3:
	leaq	L_.str.36(%rip), %rdi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	_log_debug
	jmp	LBB9_20
LBB9_4:
	movl	$0, -48(%rbp)
LBB9_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB9_16
## BB#6:                                ##   in Loop: Header=BB9_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB9_10
## BB#7:                                ##   in Loop: Header=BB9_5 Depth=1
	cmpl	$0, -48(%rbp)
	je	LBB9_9
## BB#8:                                ##   in Loop: Header=BB9_5 Depth=1
	leaq	L_.str.37(%rip), %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_log_debug
LBB9_9:                                 ##   in Loop: Header=BB9_5 Depth=1
	leaq	L_.str.38(%rip), %rdi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	_log_debug
LBB9_10:                                ##   in Loop: Header=BB9_5 Depth=1
	leaq	L_.str.39(%rip), %rdi
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movb	$0, %al
	callq	_log_debug
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movzbl	(%rdi,%rcx), %esi
	cmpl	$32, %esi
	jl	LBB9_12
## BB#11:                               ##   in Loop: Header=BB9_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$126, %edx
	jle	LBB9_13
LBB9_12:                                ##   in Loop: Header=BB9_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-64(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rsi
	movb	$46, -32(%rbp,%rsi)
	jmp	LBB9_14
LBB9_13:                                ##   in Loop: Header=BB9_5 Depth=1
	movl	$16, %eax
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-48(%rbp), %edi
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-68(%rbp), %edi         ## 4-byte Reload
	idivl	%edi
	movslq	%edx, %rcx
	movb	%sil, -32(%rbp,%rcx)
LBB9_14:                                ##   in Loop: Header=BB9_5 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	$1, %edx
	movslq	%edx, %rsi
	movb	$0, -32(%rbp,%rsi)
## BB#15:                               ##   in Loop: Header=BB9_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB9_5
LBB9_16:
	jmp	LBB9_17
LBB9_17:                                ## =>This Inner Loop Header: Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	LBB9_19
## BB#18:                               ##   in Loop: Header=BB9_17 Depth=1
	leaq	L_.str.40(%rip), %rdi
	movb	$0, %al
	callq	_log_debug
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	jmp	LBB9_17
LBB9_19:
	leaq	L_.str.37(%rip), %rdi
	leaq	-32(%rbp), %rsi
	movb	$0, %al
	callq	_log_debug
LBB9_20:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB9_22
## BB#21:
	addq	$80, %rsp
	popq	%rbp
	retq
LBB9_22:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_asm2C_OUT
	.align	4, 0x90
_asm2C_OUT:                             ## @asm2C_OUT
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movl	%esi, -8(%rbp)
	movswl	-2(%rbp), %esi
	movl	%esi, %edi
	subl	$968, %edi              ## imm = 0x3C8
	movl	%esi, -12(%rbp)         ## 4-byte Spill
	movl	%edi, -16(%rbp)         ## 4-byte Spill
	je	LBB10_1
	jmp	LBB10_8
LBB10_8:
	movl	-12(%rbp), %eax         ## 4-byte Reload
	subl	$969, %eax              ## imm = 0x3C9
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	je	LBB10_2
	jmp	LBB10_6
LBB10_1:
	movl	-8(%rbp), %eax
	movl	%eax, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB10_7
LBB10_2:
	cmpl	$768, _asm2C_OUT.indexPalette(%rip) ## imm = 0x300
	jge	LBB10_4
## BB#3:
	leaq	_m(%rip), %rax
	movl	-8(%rbp), %ecx
	movb	%cl, %dl
	movslq	_asm2C_OUT.indexPalette(%rip), %rsi
	movb	%dl, 4148(%rax,%rsi)
	movl	_asm2C_OUT.indexPalette(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, _asm2C_OUT.indexPalette(%rip)
	jmp	LBB10_5
LBB10_4:
	leaq	L_.str.41(%rip), %rdi
	movl	_asm2C_OUT.indexPalette(%rip), %esi
	movb	$0, %al
	callq	_log_error
LBB10_5:
	jmp	LBB10_7
LBB10_6:
	leaq	L_.str.42(%rip), %rdi
	movswl	-2(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	_log_error
LBB10_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_asm2C_IN
	.align	4, 0x90
_asm2C_IN:                              ## @asm2C_IN
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, %ax
	movw	%ax, -4(%rbp)
	movzwl	%ax, %edi
	subl	$986, %edi              ## imm = 0x3DA
	movl	%edi, -8(%rbp)          ## 4-byte Spill
	jne	LBB11_4
	jmp	LBB11_1
LBB11_1:
	testb	$1, _asm2C_IN.vblTick(%rip)
	je	LBB11_3
## BB#2:
	movb	$0, _asm2C_IN.vblTick(%rip)
	movb	$0, -1(%rbp)
	jmp	LBB11_5
LBB11_3:
	movb	$1, _asm2C_IN.vblTick(%rip)
	movb	$1, _m+49(%rip)
	movb	$8, -1(%rbp)
	jmp	LBB11_5
LBB11_4:
	leaq	L_.str.43(%rip), %rdi
	movswl	-4(%rbp), %esi
	movb	$0, %al
	callq	_log_error
	movb	$0, -1(%rbp)
LBB11_5:
	movsbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_is_little_endian_real_check
	.align	4, 0x90
_is_little_endian_real_check:           ## @is_little_endian_real_check
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	movw	$1, -8(%rbp)
	cmpb	$0, -8(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_is_little_endian
	.align	4, 0x90
_is_little_endian:                      ## @is_little_endian
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_asm2C_init
	.align	4, 0x90
_asm2C_init:                            ## @asm2C_init
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	_is_little_endian
	andb	$1, %al
	movb	%al, _m+48(%rip)
	movb	_m+48(%rip), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)          ## 4-byte Spill
	callq	_is_little_endian_real_check
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-4(%rbp), %edx          ## 4-byte Reload
	cmpl	%ecx, %edx
	je	LBB14_2
## BB#1:
	leaq	L_.str.44(%rip), %rdi
	movb	$0, %al
	callq	_log_error
	movl	$1, %edi
	callq	_exit
LBB14_2:
	leaq	L_.str.45(%rip), %rdi
	movb	_m+48(%rip), %al
	andb	$1, %al
	movzbl	%al, %esi
	movb	$0, %al
	callq	_log_debug2
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_m                      ## @m
	.align	3
_m:
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	4
	.space	2
	.space	2
	.space	2
	.space	2
	.space	2
	.space	2
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.byte	0                       ## 0x0
	.space	4096
	.space	768
	.long	1                       ## 0x1
	.space	512
	.long	0                       ## 0x0
	.space	16384
	.long	0                       ## 0x0
	.space	4194304
	.space	64000
	.space	64000
	.space	64000
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
L___func__.program:                     ## @__func__.program
	.asciz	"program"

L_.str:                                 ## @.str
	.asciz	"xor.c"

L_.str.1:                               ## @.str.1
	.asciz	"m.stackPointer<STACK_SIZE"

L_.str.2:                               ## @.str.2
	.asciz	"./memoryMap.log"

L_.str.3:                               ## @.str.3
	.asciz	"w"

L_.str.4:                               ## @.str.4
	.asciz	"xox %x (from beg RW) %x:dummy1\n"

	.globl	_logDebug               ## @logDebug
.zerofill __DATA,__common,_logDebug,8,3
L_.str.5:                               ## @.str.5
	.asciz	"%s"

L_.str.6:                               ## @.str.6
	.asciz	"vgaram_empty : %s\n"

L_.str.7:                               ## @.str.7
	.asciz	"true"

L_.str.8:                               ## @.str.8
	.asciz	"false"

L_.str.9:                               ## @.str.9
	.asciz	"is_little_endian()=%d\n"

L_.str.10:                              ## @.str.10
	.asciz	"sizeof(dd)=%zu\n"

L_.str.11:                              ## @.str.11
	.asciz	"sizeof(dd *)=%zu\n"

L_.str.12:                              ## @.str.12
	.asciz	"sizeof(dw)=%zu\n"

L_.str.13:                              ## @.str.13
	.asciz	"sizeof(db)=%zu\n"

L_.str.14:                              ## @.str.14
	.asciz	"sizeof(mem)=%zu\n"

L_.str.15:                              ## @.str.15
	.asciz	"eax: %x\n"

L_.str.16:                              ## @.str.16
	.asciz	"ebx: %x\n"

L_.str.17:                              ## @.str.17
	.asciz	"ecx: %x\n"

L_.str.18:                              ## @.str.18
	.asciz	"edx: %x\n"

L_.str.19:                              ## @.str.19
	.asciz	"ebp: %x\n"

L_.str.20:                              ## @.str.20
	.asciz	"cs: %d -> %p\n"

L_.str.21:                              ## @.str.21
	.asciz	"ds: %d -> %p\n"

L_.str.22:                              ## @.str.22
	.asciz	"esi: %x\n"

L_.str.23:                              ## @.str.23
	.asciz	"ds:esi %p\n"

L_.str.24:                              ## @.str.24
	.asciz	"es: %d -> %p\n"

L_.str.25:                              ## @.str.25
	.asciz	"edi: %x\n"

L_.str.26:                              ## @.str.26
	.asciz	"es:edi %p\n"

L_.str.27:                              ## @.str.27
	.asciz	"fs: %d -> %p\n"

L_.str.28:                              ## @.str.28
	.asciz	"gs: %d -> %p\n"

L_.str.29:                              ## @.str.29
	.asciz	"adress heap: %p\n"

L_.str.30:                              ## @.str.30
	.asciz	"adress vgaRam: %p\n"

L_.str.31:                              ## @.str.31
	.asciz	"first pixels vgaRam: %x\n"

L_.str.32:                              ## @.str.32
	.asciz	"flags: ZF = %d\n"

L_.str.33:                              ## @.str.33
	.asciz	"top stack=%d\n"

L_.str.34:                              ## @.str.34
	.asciz	"hexDump %p:\n"

L_.str.35:                              ## @.str.35
	.asciz	"  ZERO LENGTH\n"

L_.str.36:                              ## @.str.36
	.asciz	"  NEGATIVE LENGTH: %i\n"

L_.str.37:                              ## @.str.37
	.asciz	"  %s\n"

L_.str.38:                              ## @.str.38
	.asciz	"  %04x "

L_.str.39:                              ## @.str.39
	.asciz	" %02x"

L_.str.40:                              ## @.str.40
	.asciz	"   "

.zerofill __DATA,__bss,_asm2C_OUT.indexPalette,4,2 ## @asm2C_OUT.indexPalette
L_.str.41:                              ## @.str.41
	.asciz	"error: indexPalette>767 %d\n"

L_.str.42:                              ## @.str.42
	.asciz	"unknown OUT %d,%d\n"

	.section	__DATA,__data
_asm2C_IN.vblTick:                      ## @asm2C_IN.vblTick
	.byte	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str.43:                              ## @.str.43
	.asciz	"Unknown IN %d\n"

L_.str.44:                              ## @.str.44
	.asciz	"Inconsistency in little/big endianess detection. Please check if the Makefile sets MSB_FIRST properly for this architecture.\n"

L_.str.45:                              ## @.str.45
	.asciz	"asm2C_init is_little_endian:%d\n"

.zerofill __DATA,__bss,_asm2C_INT.file,8,3 ## @asm2C_INT.file
L_.str.46:                              ## @.str.46
	.asciz	"asm2C_INT ah=%x al=%x ax=%x bx=%x cx=%x dx=%x\n"

L_.str.47:                              ## @.str.47
	.asciz	"Switch to text mode\n"

L_.str.48:                              ## @.str.48
	.asciz	"Switch to VGA\n"

L_.str.49:                              ## @.str.49
	.asciz	"%c"

L_.str.50:                              ## @.str.50
	.asciz	"%s/%s"

L_.str.51:                              ## @.str.51
	.asciz	"rb"

L_.str.52:                              ## @.str.52
	.asciz	"Opening file %s -> %p\n"

L_.str.53:                              ## @.str.53
	.asciz	"Error opening file %s\n"

L_.str.54:                              ## @.str.54
	.asciz	"Closing file. bx:%d\n"

L_.str.55:                              ## @.str.55
	.asciz	"Error"

L_.str.56:                              ## @.str.56
	.asciz	"Error closing file ? bx:%d %p\n"

L_.str.57:                              ## @.str.57
	.asciz	"feof(file)\n"

L_.str.58:                              ## @.str.58
	.asciz	"r!=cx cx:%d R:%zu \n"

L_.str.59:                              ## @.str.59
	.asciz	"Error reading ? %d %zu %p\n"

L_.str.60:                              ## @.str.60
	.asciz	"Reading OK %p\n"

L_.str.61:                              ## @.str.61
	.asciz	"Seeking to offset %ld %d\n"

L_.str.62:                              ## @.str.62
	.asciz	"Error seeking\n"

L_.str.63:                              ## @.str.63
	.asciz	"Function 0000h - Allocate %d Descriptors\n"

L_.str.64:                              ## @.str.64
	.asciz	"Not enough free selectors (increase NB_SELECTORS)\n"

L_.str.65:                              ## @.str.65
	.asciz	"Return %x\n"

L_.str.66:                              ## @.str.66
	.asciz	"Function 0002h - Converts a real mode segment into a protected mode descriptor real mode segment: %d\n"

L_.str.67:                              ## @.str.67
	.asciz	"Returns new selector: eax: %d\n"

L_.str.68:                              ## @.str.68
	.asciz	"Function 0007h - Set Segment Base Address: ebx: %x, edx:%x ecx:%x\n"

L_.str.69:                              ## @.str.69
	.asciz	"Error: selector number doesnt exist\n"

L_.str.70:                              ## @.str.70
	.asciz	"Address for selector %d: %x\n"

L_.str.71:                              ## @.str.71
	.asciz	"Function 0008h - Set Segment Limit for selector %d (Ignored)\n"

L_.str.72:                              ## @.str.72
	.asciz	"Function 0501h - Allocate Memory Block: %d bytes\n"

L_.str.73:                              ## @.str.73
	.asciz	"Not enough memory (increase HEAP_SIZE)\n"

L_.str.74:                              ## @.str.74
	.asciz	"New top of heap: %x\n"

L_.str.75:                              ## @.str.75
	.asciz	"Return %x ebx:ecx %x:%x\n"

L_.str.76:                              ## @.str.76
	.asciz	"Error DOSInt 0x%x ah:0x%x al:0x%x: not supported.\n"


.subsections_via_symbols
