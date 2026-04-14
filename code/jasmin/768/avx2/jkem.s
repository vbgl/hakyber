	.att_syntax
	.text
	.p2align	5
	.global	jade_kem_mlkem_mlkem768_amd64_avx2_dec
	.global	jade_kem_mlkem_mlkem768_amd64_avx2_enc
	.global	jade_kem_mlkem_mlkem768_amd64_avx2_keypair
	.global	jade_kem_mlkem_mlkem768_amd64_avx2_enc_derand
	.global	jade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand
	.type	jade_kem_mlkem_mlkem768_amd64_avx2_dec, %function
jade_kem_mlkem_mlkem768_amd64_avx2_dec:
	movq	%rsp, %rax
	leaq	-15232(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 15176(%rsp)
	movq	%rbp, 15184(%rsp)
	movq	%r12, 15192(%rsp)
	movq	%r13, 15200(%rsp)
	movq	%r14, 15208(%rsp)
	movq	%r15, 15216(%rsp)
	movq	%rax, 15224(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %mm1
	movq	%rsi, %mm2
	leaq	2368(%rdx), %rax
	movb	(%rax), %cl
	movb	%cl, 3264(%rsp)
	movb	1(%rax), %cl
	movb	%cl, 3265(%rsp)
	movb	2(%rax), %cl
	movb	%cl, 3266(%rsp)
	movb	3(%rax), %cl
	movb	%cl, 3267(%rsp)
	movb	4(%rax), %cl
	movb	%cl, 3268(%rsp)
	movb	5(%rax), %cl
	movb	%cl, 3269(%rsp)
	movb	6(%rax), %cl
	movb	%cl, 3270(%rsp)
	movb	7(%rax), %cl
	movb	%cl, 3271(%rsp)
	movb	8(%rax), %cl
	movb	%cl, 3272(%rsp)
	movb	9(%rax), %cl
	movb	%cl, 3273(%rsp)
	movb	10(%rax), %cl
	movb	%cl, 3274(%rsp)
	movb	11(%rax), %cl
	movb	%cl, 3275(%rsp)
	movb	12(%rax), %cl
	movb	%cl, 3276(%rsp)
	movb	13(%rax), %cl
	movb	%cl, 3277(%rsp)
	movb	14(%rax), %cl
	movb	%cl, 3278(%rsp)
	movb	15(%rax), %cl
	movb	%cl, 3279(%rsp)
	movb	16(%rax), %cl
	movb	%cl, 3280(%rsp)
	movb	17(%rax), %cl
	movb	%cl, 3281(%rsp)
	movb	18(%rax), %cl
	movb	%cl, 3282(%rsp)
	movb	19(%rax), %cl
	movb	%cl, 3283(%rsp)
	movb	20(%rax), %cl
	movb	%cl, 3284(%rsp)
	movb	21(%rax), %cl
	movb	%cl, 3285(%rsp)
	movb	22(%rax), %cl
	movb	%cl, 3286(%rsp)
	movb	23(%rax), %cl
	movb	%cl, 3287(%rsp)
	movb	24(%rax), %cl
	movb	%cl, 3288(%rsp)
	movb	25(%rax), %cl
	movb	%cl, 3289(%rsp)
	movb	26(%rax), %cl
	movb	%cl, 3290(%rsp)
	movb	27(%rax), %cl
	movb	%cl, 3291(%rsp)
	movb	28(%rax), %cl
	movb	%cl, 3292(%rsp)
	movb	29(%rax), %cl
	movb	%cl, 3293(%rsp)
	movb	30(%rax), %cl
	movb	%cl, 3294(%rsp)
	movb	31(%rax), %cl
	movb	%cl, 3295(%rsp)
	movq	%rsp, %rax
	movq	%rdx, %r8
	vpbroadcastd	glob_data + 4956(%rip), %ymm0
	vmovdqu	glob_data + 160(%rip), %ymm1
	vpbroadcastq	glob_data + 4752(%rip), %ymm2
	vpbroadcastd	glob_data + 4952(%rip), %ymm3
	vmovdqu	(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4384(%rsp)
	vmovdqu	20(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4416(%rsp)
	vmovdqu	40(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4448(%rsp)
	vmovdqu	60(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4480(%rsp)
	vmovdqu	80(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4512(%rsp)
	vmovdqu	100(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4544(%rsp)
	vmovdqu	120(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4576(%rsp)
	vmovdqu	140(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4608(%rsp)
	vmovdqu	160(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4640(%rsp)
	vmovdqu	180(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4672(%rsp)
	vmovdqu	200(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4704(%rsp)
	vmovdqu	220(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4736(%rsp)
	vmovdqu	240(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4768(%rsp)
	vmovdqu	260(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4800(%rsp)
	vmovdqu	280(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4832(%rsp)
	vmovdqu	300(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4864(%rsp)
	vmovdqu	320(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4896(%rsp)
	vmovdqu	340(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4928(%rsp)
	vmovdqu	360(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4960(%rsp)
	vmovdqu	380(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 4992(%rsp)
	vmovdqu	400(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5024(%rsp)
	vmovdqu	420(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5056(%rsp)
	vmovdqu	440(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5088(%rsp)
	vmovdqu	460(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5120(%rsp)
	vmovdqu	480(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5152(%rsp)
	vmovdqu	500(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5184(%rsp)
	vmovdqu	520(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5216(%rsp)
	vmovdqu	540(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5248(%rsp)
	vmovdqu	560(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5280(%rsp)
	vmovdqu	580(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5312(%rsp)
	vmovdqu	600(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5344(%rsp)
	vmovdqu	620(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5376(%rsp)
	vmovdqu	640(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5408(%rsp)
	vmovdqu	660(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5440(%rsp)
	vmovdqu	680(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5472(%rsp)
	vmovdqu	700(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5504(%rsp)
	vmovdqu	720(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5536(%rsp)
	vmovdqu	740(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5568(%rsp)
	vmovdqu	760(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5600(%rsp)
	vmovdqu	780(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5632(%rsp)
	vmovdqu	800(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5664(%rsp)
	vmovdqu	820(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5696(%rsp)
	vmovdqu	840(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5728(%rsp)
	vmovdqu	860(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5760(%rsp)
	vmovdqu	880(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5792(%rsp)
	vmovdqu	900(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5824(%rsp)
	vmovdqu	920(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 5856(%rsp)
	vmovdqu	940(%rsi), %ymm4
	vpermq	$148, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpsrlw	$1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm3
	vpmulhrsw	%ymm0, %ymm3, %ymm3
	vmovdqu	%ymm3, 5888(%rsp)
	leaq	128(%rsp), %rcx
	leaq	960(%rsi), %rsi
	leaq	-24(%rsp), %rsp
	call	L_i_poly_decompress$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$60:
	leaq	24(%rsp), %rsp
	leaq	5920(%rsp), %rcx
	movq	%r8, %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$59:
	leaq	6432(%rsp), %rcx
	leaq	384(%r8), %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$58:
	leaq	6944(%rsp), %rcx
	leaq	768(%r8), %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$57:
	leaq	4384(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$56:
	leaq	4896(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$55:
	leaq	5408(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$54:
	leaq	640(%rsp), %rcx
	leaq	5920(%rsp), %rsi
	leaq	4384(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$53:
	leaq	1152(%rsp), %rcx
	leaq	6432(%rsp), %rsi
	leaq	4896(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$52:
	leaq	640(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$51:
	leaq	1152(%rsp), %rcx
	leaq	6944(%rsp), %rsi
	leaq	5408(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$50:
	leaq	640(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$49:
	leaq	640(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$48:
	leaq	1152(%rsp), %rcx
	leaq	128(%rsp), %rsi
	leaq	640(%rsp), %rdi
	call	L_poly_sub$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$47:
	leaq	1152(%rsp), %rcx
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rcx)
	vmovdqu	32(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rcx)
	vmovdqu	64(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rcx)
	vmovdqu	96(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rcx)
	vmovdqu	128(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rcx)
	vmovdqu	160(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rcx)
	vmovdqu	192(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rcx)
	vmovdqu	224(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rcx)
	vmovdqu	256(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rcx)
	vmovdqu	288(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rcx)
	vmovdqu	320(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rcx)
	vmovdqu	352(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rcx)
	vmovdqu	384(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rcx)
	vmovdqu	416(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rcx)
	vmovdqu	448(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rcx)
	vmovdqu	480(%rcx), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rcx)
	leaq	1152(%rsp), %rsi
	call	L_i_poly_tomsg$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$46:
	leaq	2336(%rdx), %rax
	movb	(%rax), %cl
	movb	%cl, 32(%rsp)
	movb	1(%rax), %cl
	movb	%cl, 33(%rsp)
	movb	2(%rax), %cl
	movb	%cl, 34(%rsp)
	movb	3(%rax), %cl
	movb	%cl, 35(%rsp)
	movb	4(%rax), %cl
	movb	%cl, 36(%rsp)
	movb	5(%rax), %cl
	movb	%cl, 37(%rsp)
	movb	6(%rax), %cl
	movb	%cl, 38(%rsp)
	movb	7(%rax), %cl
	movb	%cl, 39(%rsp)
	movb	8(%rax), %cl
	movb	%cl, 40(%rsp)
	movb	9(%rax), %cl
	movb	%cl, 41(%rsp)
	movb	10(%rax), %cl
	movb	%cl, 42(%rsp)
	movb	11(%rax), %cl
	movb	%cl, 43(%rsp)
	movb	12(%rax), %cl
	movb	%cl, 44(%rsp)
	movb	13(%rax), %cl
	movb	%cl, 45(%rsp)
	movb	14(%rax), %cl
	movb	%cl, 46(%rsp)
	movb	15(%rax), %cl
	movb	%cl, 47(%rsp)
	movb	16(%rax), %cl
	movb	%cl, 48(%rsp)
	movb	17(%rax), %cl
	movb	%cl, 49(%rsp)
	movb	18(%rax), %cl
	movb	%cl, 50(%rsp)
	movb	19(%rax), %cl
	movb	%cl, 51(%rsp)
	movb	20(%rax), %cl
	movb	%cl, 52(%rsp)
	movb	21(%rax), %cl
	movb	%cl, 53(%rsp)
	movb	22(%rax), %cl
	movb	%cl, 54(%rsp)
	movb	23(%rax), %cl
	movb	%cl, 55(%rsp)
	movb	24(%rax), %cl
	movb	%cl, 56(%rsp)
	movb	25(%rax), %cl
	movb	%cl, 57(%rsp)
	movb	26(%rax), %cl
	movb	%cl, 58(%rsp)
	movb	27(%rax), %cl
	movb	%cl, 59(%rsp)
	movb	28(%rax), %cl
	movb	%cl, 60(%rsp)
	movb	29(%rax), %cl
	movb	%cl, 61(%rsp)
	movb	30(%rax), %cl
	movb	%cl, 62(%rsp)
	movb	31(%rax), %cl
	movb	%cl, 63(%rsp)
	leaq	64(%rsp), %rsi
	movq	%rsp, %rbp
	call	L_sha3_512A_A64$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$45:
	leaq	2176(%rsp), %rbx
	movq	%rsp, %rax
	leaq	1152(%rdx), %rbp
	leaq	96(%rsp), %rdi
	movq	%rbx, %mm3
	movq	%rbp, %rsi
	leaq	4384(%rsp), %rcx
	movq	%rsi, %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$44:
	leaq	4896(%rsp), %rcx
	leaq	384(%rsi), %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$43:
	leaq	5408(%rsp), %rcx
	leaq	768(%rsi), %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$42:
	movq	1152(%rbp), %rcx
	movq	%rcx, 15136(%rsp)
	movq	1160(%rbp), %rcx
	movq	%rcx, 15144(%rsp)
	movq	1168(%rbp), %rcx
	movq	%rcx, 15152(%rsp)
	movq	1176(%rbp), %rcx
	movq	%rcx, 15160(%rsp)
	leaq	1152(%rsp), %rcx
	call	L_i_poly_frommsg$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$41:
	movq	$1, %rcx
	leaq	10528(%rsp), %rax
	leaq	15136(%rsp), %rdx
	leaq	-2200(%rsp), %rsp
	call	L_gen_matrix_avx2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$40:
	leaq	2200(%rsp), %rsp
	movb	$0, %r9b
	leaq	7456(%rsp), %rax
	leaq	7968(%rsp), %rcx
	leaq	8480(%rsp), %rdx
	leaq	5920(%rsp), %r8
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$39:
	leaq	600(%rsp), %rsp
	movb	$4, %r9b
	leaq	6432(%rsp), %rax
	leaq	6944(%rsp), %rcx
	leaq	640(%rsp), %rdx
	leaq	8992(%rsp), %r8
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$38:
	leaq	600(%rsp), %rsp
	leaq	7456(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$37:
	leaq	7968(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$36:
	leaq	8480(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$35:
	leaq	8992(%rsp), %rcx
	leaq	10528(%rsp), %rsi
	leaq	7456(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$34:
	leaq	128(%rsp), %rcx
	leaq	11040(%rsp), %rsi
	leaq	7968(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$33:
	leaq	8992(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$32:
	leaq	128(%rsp), %rcx
	leaq	11552(%rsp), %rsi
	leaq	8480(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$31:
	leaq	8992(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$30:
	leaq	9504(%rsp), %rcx
	leaq	12064(%rsp), %rsi
	leaq	7456(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$29:
	leaq	128(%rsp), %rcx
	leaq	12576(%rsp), %rsi
	leaq	7968(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$28:
	leaq	9504(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$27:
	leaq	128(%rsp), %rcx
	leaq	13088(%rsp), %rsi
	leaq	8480(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$26:
	leaq	9504(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$25:
	leaq	10016(%rsp), %rcx
	leaq	13600(%rsp), %rsi
	leaq	7456(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$24:
	leaq	128(%rsp), %rcx
	leaq	14112(%rsp), %rsi
	leaq	7968(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$23:
	leaq	10016(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$22:
	leaq	128(%rsp), %rcx
	leaq	14624(%rsp), %rsi
	leaq	8480(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$21:
	leaq	10016(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$20:
	leaq	128(%rsp), %rcx
	leaq	4384(%rsp), %rsi
	leaq	7456(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$19:
	leaq	1664(%rsp), %rcx
	leaq	4896(%rsp), %rsi
	leaq	7968(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$18:
	leaq	128(%rsp), %rcx
	leaq	1664(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$17:
	leaq	1664(%rsp), %rcx
	leaq	5408(%rsp), %rsi
	leaq	8480(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$16:
	leaq	128(%rsp), %rcx
	leaq	1664(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$15:
	leaq	8992(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$14:
	leaq	9504(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$13:
	leaq	10016(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$12:
	leaq	128(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$11:
	leaq	8992(%rsp), %rcx
	leaq	5920(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$10:
	leaq	9504(%rsp), %rcx
	leaq	6432(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$9:
	leaq	10016(%rsp), %rcx
	leaq	6944(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$8:
	leaq	128(%rsp), %rcx
	leaq	640(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$7:
	leaq	128(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$6:
	leaq	8992(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	9504(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	10016(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	128(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	movq	%mm3, %rbx
	movq	%rbx, %rax
	leaq	8992(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$5:
	leaq	9504(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$4:
	leaq	10016(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$3:
	leaq	glob_data + 928(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 4972(%rip), %ymm2
	vpbroadcastw	glob_data + 4970(%rip), %ymm3
	vpbroadcastw	glob_data + 4968(%rip), %ymm4
	vpbroadcastq	glob_data + 4744(%rip), %ymm5
	vpbroadcastq	glob_data + 4736(%rip), %ymm6
	vmovdqu	glob_data + 128(%rip), %ymm7
	vmovdqu	8992(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, (%rax)
	vpextrd	$0, %xmm8, 16(%rax)
	vmovdqu	9024(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 20(%rax)
	vpextrd	$0, %xmm8, 36(%rax)
	vmovdqu	9056(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 40(%rax)
	vpextrd	$0, %xmm8, 56(%rax)
	vmovdqu	9088(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 60(%rax)
	vpextrd	$0, %xmm8, 76(%rax)
	vmovdqu	9120(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 80(%rax)
	vpextrd	$0, %xmm8, 96(%rax)
	vmovdqu	9152(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 100(%rax)
	vpextrd	$0, %xmm8, 116(%rax)
	vmovdqu	9184(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 120(%rax)
	vpextrd	$0, %xmm8, 136(%rax)
	vmovdqu	9216(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 140(%rax)
	vpextrd	$0, %xmm8, 156(%rax)
	vmovdqu	9248(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 160(%rax)
	vpextrd	$0, %xmm8, 176(%rax)
	vmovdqu	9280(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 180(%rax)
	vpextrd	$0, %xmm8, 196(%rax)
	vmovdqu	9312(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 200(%rax)
	vpextrd	$0, %xmm8, 216(%rax)
	vmovdqu	9344(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 220(%rax)
	vpextrd	$0, %xmm8, 236(%rax)
	vmovdqu	9376(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 240(%rax)
	vpextrd	$0, %xmm8, 256(%rax)
	vmovdqu	9408(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 260(%rax)
	vpextrd	$0, %xmm8, 276(%rax)
	vmovdqu	9440(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 280(%rax)
	vpextrd	$0, %xmm8, 296(%rax)
	vmovdqu	9472(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 300(%rax)
	vpextrd	$0, %xmm8, 316(%rax)
	vmovdqu	9504(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 320(%rax)
	vpextrd	$0, %xmm8, 336(%rax)
	vmovdqu	9536(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 340(%rax)
	vpextrd	$0, %xmm8, 356(%rax)
	vmovdqu	9568(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 360(%rax)
	vpextrd	$0, %xmm8, 376(%rax)
	vmovdqu	9600(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 380(%rax)
	vpextrd	$0, %xmm8, 396(%rax)
	vmovdqu	9632(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 400(%rax)
	vpextrd	$0, %xmm8, 416(%rax)
	vmovdqu	9664(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 420(%rax)
	vpextrd	$0, %xmm8, 436(%rax)
	vmovdqu	9696(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 440(%rax)
	vpextrd	$0, %xmm8, 456(%rax)
	vmovdqu	9728(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 460(%rax)
	vpextrd	$0, %xmm8, 476(%rax)
	vmovdqu	9760(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 480(%rax)
	vpextrd	$0, %xmm8, 496(%rax)
	vmovdqu	9792(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 500(%rax)
	vpextrd	$0, %xmm8, 516(%rax)
	vmovdqu	9824(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 520(%rax)
	vpextrd	$0, %xmm8, 536(%rax)
	vmovdqu	9856(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 540(%rax)
	vpextrd	$0, %xmm8, 556(%rax)
	vmovdqu	9888(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 560(%rax)
	vpextrd	$0, %xmm8, 576(%rax)
	vmovdqu	9920(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 580(%rax)
	vpextrd	$0, %xmm8, 596(%rax)
	vmovdqu	9952(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 600(%rax)
	vpextrd	$0, %xmm8, 616(%rax)
	vmovdqu	9984(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 620(%rax)
	vpextrd	$0, %xmm8, 636(%rax)
	vmovdqu	10016(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 640(%rax)
	vpextrd	$0, %xmm8, 656(%rax)
	vmovdqu	10048(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 660(%rax)
	vpextrd	$0, %xmm8, 676(%rax)
	vmovdqu	10080(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 680(%rax)
	vpextrd	$0, %xmm8, 696(%rax)
	vmovdqu	10112(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 700(%rax)
	vpextrd	$0, %xmm8, 716(%rax)
	vmovdqu	10144(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 720(%rax)
	vpextrd	$0, %xmm8, 736(%rax)
	vmovdqu	10176(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 740(%rax)
	vpextrd	$0, %xmm8, 756(%rax)
	vmovdqu	10208(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 760(%rax)
	vpextrd	$0, %xmm8, 776(%rax)
	vmovdqu	10240(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 780(%rax)
	vpextrd	$0, %xmm8, 796(%rax)
	vmovdqu	10272(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 800(%rax)
	vpextrd	$0, %xmm8, 816(%rax)
	vmovdqu	10304(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 820(%rax)
	vpextrd	$0, %xmm8, 836(%rax)
	vmovdqu	10336(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 840(%rax)
	vpextrd	$0, %xmm8, 856(%rax)
	vmovdqu	10368(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 860(%rax)
	vpextrd	$0, %xmm8, 876(%rax)
	vmovdqu	10400(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 880(%rax)
	vpextrd	$0, %xmm8, 896(%rax)
	vmovdqu	10432(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 900(%rax)
	vpextrd	$0, %xmm8, 916(%rax)
	vmovdqu	10464(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 920(%rax)
	vpextrd	$0, %xmm8, 936(%rax)
	vmovdqu	10496(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm4
	vpmaddwd	%ymm5, %ymm4, %ymm4
	vpsllvd	%ymm6, %ymm4, %ymm4
	vpsrlq	$12, %ymm4, %ymm4
	vpshufb	%ymm7, %ymm4, %ymm4
	vmovdqu	%xmm4, %xmm2
	vextracti128	$1, %ymm4, %xmm3
	vpblendw	$224, %xmm3, %xmm2, %xmm2
	vmovdqu	%xmm2, 940(%rax)
	vpextrd	$0, %xmm3, 956(%rax)
	leaq	960(%rbx), %rax
	leaq	128(%rsp), %rsi
	call	L_i_poly_compress$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$2:
	movq	%mm2, %rbx
	leaq	2176(%rsp), %rcx
	movq	$0, %rax
	movq	$1, %rdx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	(%rcx), %ymm3
	vmovdqu	(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	32(%rcx), %ymm3
	vmovdqu	32(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	64(%rcx), %ymm3
	vmovdqu	64(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	96(%rcx), %ymm3
	vmovdqu	96(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	128(%rcx), %ymm3
	vmovdqu	128(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	160(%rcx), %ymm3
	vmovdqu	160(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	192(%rcx), %ymm3
	vmovdqu	192(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	224(%rcx), %ymm3
	vmovdqu	224(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	256(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	288(%rcx), %ymm3
	vmovdqu	288(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	320(%rcx), %ymm3
	vmovdqu	320(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	352(%rcx), %ymm3
	vmovdqu	352(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	384(%rcx), %ymm3
	vmovdqu	384(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	416(%rcx), %ymm3
	vmovdqu	416(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	448(%rcx), %ymm3
	vmovdqu	448(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	480(%rcx), %ymm3
	vmovdqu	480(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	512(%rcx), %ymm3
	vmovdqu	512(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	544(%rcx), %ymm3
	vmovdqu	544(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	576(%rcx), %ymm3
	vmovdqu	576(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	608(%rcx), %ymm3
	vmovdqu	608(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	640(%rcx), %ymm3
	vmovdqu	640(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	672(%rcx), %ymm3
	vmovdqu	672(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	704(%rcx), %ymm3
	vmovdqu	704(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	736(%rcx), %ymm3
	vmovdqu	736(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	768(%rcx), %ymm3
	vmovdqu	768(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	800(%rcx), %ymm3
	vmovdqu	800(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	832(%rcx), %ymm3
	vmovdqu	832(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	864(%rcx), %ymm3
	vmovdqu	864(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	896(%rcx), %ymm3
	vmovdqu	896(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	928(%rcx), %ymm3
	vmovdqu	928(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	960(%rcx), %ymm3
	vmovdqu	960(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	992(%rcx), %ymm3
	vmovdqu	992(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	1024(%rcx), %ymm3
	vmovdqu	1024(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vmovdqu	1056(%rcx), %ymm3
	vmovdqu	1056(%rbx), %ymm1
	vpxor	%ymm1, %ymm3, %ymm3
	vpor	%ymm3, %ymm0, %ymm0
	vptest	%ymm0, %ymm0
	cmovne	%rdx, %rax
	movb	(%rbx), %cl
	movb	%cl, 3296(%rsp)
	movb	1(%rbx), %cl
	movb	%cl, 3297(%rsp)
	movb	2(%rbx), %cl
	movb	%cl, 3298(%rsp)
	movb	3(%rbx), %cl
	movb	%cl, 3299(%rsp)
	movb	4(%rbx), %cl
	movb	%cl, 3300(%rsp)
	movb	5(%rbx), %cl
	movb	%cl, 3301(%rsp)
	movb	6(%rbx), %cl
	movb	%cl, 3302(%rsp)
	movb	7(%rbx), %cl
	movb	%cl, 3303(%rsp)
	movb	8(%rbx), %cl
	movb	%cl, 3304(%rsp)
	movb	9(%rbx), %cl
	movb	%cl, 3305(%rsp)
	movb	10(%rbx), %cl
	movb	%cl, 3306(%rsp)
	movb	11(%rbx), %cl
	movb	%cl, 3307(%rsp)
	movb	12(%rbx), %cl
	movb	%cl, 3308(%rsp)
	movb	13(%rbx), %cl
	movb	%cl, 3309(%rsp)
	movb	14(%rbx), %cl
	movb	%cl, 3310(%rsp)
	movb	15(%rbx), %cl
	movb	%cl, 3311(%rsp)
	movb	16(%rbx), %cl
	movb	%cl, 3312(%rsp)
	movb	17(%rbx), %cl
	movb	%cl, 3313(%rsp)
	movb	18(%rbx), %cl
	movb	%cl, 3314(%rsp)
	movb	19(%rbx), %cl
	movb	%cl, 3315(%rsp)
	movb	20(%rbx), %cl
	movb	%cl, 3316(%rsp)
	movb	21(%rbx), %cl
	movb	%cl, 3317(%rsp)
	movb	22(%rbx), %cl
	movb	%cl, 3318(%rsp)
	movb	23(%rbx), %cl
	movb	%cl, 3319(%rsp)
	movb	24(%rbx), %cl
	movb	%cl, 3320(%rsp)
	movb	25(%rbx), %cl
	movb	%cl, 3321(%rsp)
	movb	26(%rbx), %cl
	movb	%cl, 3322(%rsp)
	movb	27(%rbx), %cl
	movb	%cl, 3323(%rsp)
	movb	28(%rbx), %cl
	movb	%cl, 3324(%rsp)
	movb	29(%rbx), %cl
	movb	%cl, 3325(%rsp)
	movb	30(%rbx), %cl
	movb	%cl, 3326(%rsp)
	movb	31(%rbx), %cl
	movb	%cl, 3327(%rsp)
	movb	32(%rbx), %cl
	movb	%cl, 3328(%rsp)
	movb	33(%rbx), %cl
	movb	%cl, 3329(%rsp)
	movb	34(%rbx), %cl
	movb	%cl, 3330(%rsp)
	movb	35(%rbx), %cl
	movb	%cl, 3331(%rsp)
	movb	36(%rbx), %cl
	movb	%cl, 3332(%rsp)
	movb	37(%rbx), %cl
	movb	%cl, 3333(%rsp)
	movb	38(%rbx), %cl
	movb	%cl, 3334(%rsp)
	movb	39(%rbx), %cl
	movb	%cl, 3335(%rsp)
	movb	40(%rbx), %cl
	movb	%cl, 3336(%rsp)
	movb	41(%rbx), %cl
	movb	%cl, 3337(%rsp)
	movb	42(%rbx), %cl
	movb	%cl, 3338(%rsp)
	movb	43(%rbx), %cl
	movb	%cl, 3339(%rsp)
	movb	44(%rbx), %cl
	movb	%cl, 3340(%rsp)
	movb	45(%rbx), %cl
	movb	%cl, 3341(%rsp)
	movb	46(%rbx), %cl
	movb	%cl, 3342(%rsp)
	movb	47(%rbx), %cl
	movb	%cl, 3343(%rsp)
	movb	48(%rbx), %cl
	movb	%cl, 3344(%rsp)
	movb	49(%rbx), %cl
	movb	%cl, 3345(%rsp)
	movb	50(%rbx), %cl
	movb	%cl, 3346(%rsp)
	movb	51(%rbx), %cl
	movb	%cl, 3347(%rsp)
	movb	52(%rbx), %cl
	movb	%cl, 3348(%rsp)
	movb	53(%rbx), %cl
	movb	%cl, 3349(%rsp)
	movb	54(%rbx), %cl
	movb	%cl, 3350(%rsp)
	movb	55(%rbx), %cl
	movb	%cl, 3351(%rsp)
	movb	56(%rbx), %cl
	movb	%cl, 3352(%rsp)
	movb	57(%rbx), %cl
	movb	%cl, 3353(%rsp)
	movb	58(%rbx), %cl
	movb	%cl, 3354(%rsp)
	movb	59(%rbx), %cl
	movb	%cl, 3355(%rsp)
	movb	60(%rbx), %cl
	movb	%cl, 3356(%rsp)
	movb	61(%rbx), %cl
	movb	%cl, 3357(%rsp)
	movb	62(%rbx), %cl
	movb	%cl, 3358(%rsp)
	movb	63(%rbx), %cl
	movb	%cl, 3359(%rsp)
	movb	64(%rbx), %cl
	movb	%cl, 3360(%rsp)
	movb	65(%rbx), %cl
	movb	%cl, 3361(%rsp)
	movb	66(%rbx), %cl
	movb	%cl, 3362(%rsp)
	movb	67(%rbx), %cl
	movb	%cl, 3363(%rsp)
	movb	68(%rbx), %cl
	movb	%cl, 3364(%rsp)
	movb	69(%rbx), %cl
	movb	%cl, 3365(%rsp)
	movb	70(%rbx), %cl
	movb	%cl, 3366(%rsp)
	movb	71(%rbx), %cl
	movb	%cl, 3367(%rsp)
	movb	72(%rbx), %cl
	movb	%cl, 3368(%rsp)
	movb	73(%rbx), %cl
	movb	%cl, 3369(%rsp)
	movb	74(%rbx), %cl
	movb	%cl, 3370(%rsp)
	movb	75(%rbx), %cl
	movb	%cl, 3371(%rsp)
	movb	76(%rbx), %cl
	movb	%cl, 3372(%rsp)
	movb	77(%rbx), %cl
	movb	%cl, 3373(%rsp)
	movb	78(%rbx), %cl
	movb	%cl, 3374(%rsp)
	movb	79(%rbx), %cl
	movb	%cl, 3375(%rsp)
	movb	80(%rbx), %cl
	movb	%cl, 3376(%rsp)
	movb	81(%rbx), %cl
	movb	%cl, 3377(%rsp)
	movb	82(%rbx), %cl
	movb	%cl, 3378(%rsp)
	movb	83(%rbx), %cl
	movb	%cl, 3379(%rsp)
	movb	84(%rbx), %cl
	movb	%cl, 3380(%rsp)
	movb	85(%rbx), %cl
	movb	%cl, 3381(%rsp)
	movb	86(%rbx), %cl
	movb	%cl, 3382(%rsp)
	movb	87(%rbx), %cl
	movb	%cl, 3383(%rsp)
	movb	88(%rbx), %cl
	movb	%cl, 3384(%rsp)
	movb	89(%rbx), %cl
	movb	%cl, 3385(%rsp)
	movb	90(%rbx), %cl
	movb	%cl, 3386(%rsp)
	movb	91(%rbx), %cl
	movb	%cl, 3387(%rsp)
	movb	92(%rbx), %cl
	movb	%cl, 3388(%rsp)
	movb	93(%rbx), %cl
	movb	%cl, 3389(%rsp)
	movb	94(%rbx), %cl
	movb	%cl, 3390(%rsp)
	movb	95(%rbx), %cl
	movb	%cl, 3391(%rsp)
	movb	96(%rbx), %cl
	movb	%cl, 3392(%rsp)
	movb	97(%rbx), %cl
	movb	%cl, 3393(%rsp)
	movb	98(%rbx), %cl
	movb	%cl, 3394(%rsp)
	movb	99(%rbx), %cl
	movb	%cl, 3395(%rsp)
	movb	100(%rbx), %cl
	movb	%cl, 3396(%rsp)
	movb	101(%rbx), %cl
	movb	%cl, 3397(%rsp)
	movb	102(%rbx), %cl
	movb	%cl, 3398(%rsp)
	movb	103(%rbx), %cl
	movb	%cl, 3399(%rsp)
	movb	104(%rbx), %cl
	movb	%cl, 3400(%rsp)
	movb	105(%rbx), %cl
	movb	%cl, 3401(%rsp)
	movb	106(%rbx), %cl
	movb	%cl, 3402(%rsp)
	movb	107(%rbx), %cl
	movb	%cl, 3403(%rsp)
	movb	108(%rbx), %cl
	movb	%cl, 3404(%rsp)
	movb	109(%rbx), %cl
	movb	%cl, 3405(%rsp)
	movb	110(%rbx), %cl
	movb	%cl, 3406(%rsp)
	movb	111(%rbx), %cl
	movb	%cl, 3407(%rsp)
	movb	112(%rbx), %cl
	movb	%cl, 3408(%rsp)
	movb	113(%rbx), %cl
	movb	%cl, 3409(%rsp)
	movb	114(%rbx), %cl
	movb	%cl, 3410(%rsp)
	movb	115(%rbx), %cl
	movb	%cl, 3411(%rsp)
	movb	116(%rbx), %cl
	movb	%cl, 3412(%rsp)
	movb	117(%rbx), %cl
	movb	%cl, 3413(%rsp)
	movb	118(%rbx), %cl
	movb	%cl, 3414(%rsp)
	movb	119(%rbx), %cl
	movb	%cl, 3415(%rsp)
	movb	120(%rbx), %cl
	movb	%cl, 3416(%rsp)
	movb	121(%rbx), %cl
	movb	%cl, 3417(%rsp)
	movb	122(%rbx), %cl
	movb	%cl, 3418(%rsp)
	movb	123(%rbx), %cl
	movb	%cl, 3419(%rsp)
	movb	124(%rbx), %cl
	movb	%cl, 3420(%rsp)
	movb	125(%rbx), %cl
	movb	%cl, 3421(%rsp)
	movb	126(%rbx), %cl
	movb	%cl, 3422(%rsp)
	movb	127(%rbx), %cl
	movb	%cl, 3423(%rsp)
	movb	128(%rbx), %cl
	movb	%cl, 3424(%rsp)
	movb	129(%rbx), %cl
	movb	%cl, 3425(%rsp)
	movb	130(%rbx), %cl
	movb	%cl, 3426(%rsp)
	movb	131(%rbx), %cl
	movb	%cl, 3427(%rsp)
	movb	132(%rbx), %cl
	movb	%cl, 3428(%rsp)
	movb	133(%rbx), %cl
	movb	%cl, 3429(%rsp)
	movb	134(%rbx), %cl
	movb	%cl, 3430(%rsp)
	movb	135(%rbx), %cl
	movb	%cl, 3431(%rsp)
	movb	136(%rbx), %cl
	movb	%cl, 3432(%rsp)
	movb	137(%rbx), %cl
	movb	%cl, 3433(%rsp)
	movb	138(%rbx), %cl
	movb	%cl, 3434(%rsp)
	movb	139(%rbx), %cl
	movb	%cl, 3435(%rsp)
	movb	140(%rbx), %cl
	movb	%cl, 3436(%rsp)
	movb	141(%rbx), %cl
	movb	%cl, 3437(%rsp)
	movb	142(%rbx), %cl
	movb	%cl, 3438(%rsp)
	movb	143(%rbx), %cl
	movb	%cl, 3439(%rsp)
	movb	144(%rbx), %cl
	movb	%cl, 3440(%rsp)
	movb	145(%rbx), %cl
	movb	%cl, 3441(%rsp)
	movb	146(%rbx), %cl
	movb	%cl, 3442(%rsp)
	movb	147(%rbx), %cl
	movb	%cl, 3443(%rsp)
	movb	148(%rbx), %cl
	movb	%cl, 3444(%rsp)
	movb	149(%rbx), %cl
	movb	%cl, 3445(%rsp)
	movb	150(%rbx), %cl
	movb	%cl, 3446(%rsp)
	movb	151(%rbx), %cl
	movb	%cl, 3447(%rsp)
	movb	152(%rbx), %cl
	movb	%cl, 3448(%rsp)
	movb	153(%rbx), %cl
	movb	%cl, 3449(%rsp)
	movb	154(%rbx), %cl
	movb	%cl, 3450(%rsp)
	movb	155(%rbx), %cl
	movb	%cl, 3451(%rsp)
	movb	156(%rbx), %cl
	movb	%cl, 3452(%rsp)
	movb	157(%rbx), %cl
	movb	%cl, 3453(%rsp)
	movb	158(%rbx), %cl
	movb	%cl, 3454(%rsp)
	movb	159(%rbx), %cl
	movb	%cl, 3455(%rsp)
	movb	160(%rbx), %cl
	movb	%cl, 3456(%rsp)
	movb	161(%rbx), %cl
	movb	%cl, 3457(%rsp)
	movb	162(%rbx), %cl
	movb	%cl, 3458(%rsp)
	movb	163(%rbx), %cl
	movb	%cl, 3459(%rsp)
	movb	164(%rbx), %cl
	movb	%cl, 3460(%rsp)
	movb	165(%rbx), %cl
	movb	%cl, 3461(%rsp)
	movb	166(%rbx), %cl
	movb	%cl, 3462(%rsp)
	movb	167(%rbx), %cl
	movb	%cl, 3463(%rsp)
	movb	168(%rbx), %cl
	movb	%cl, 3464(%rsp)
	movb	169(%rbx), %cl
	movb	%cl, 3465(%rsp)
	movb	170(%rbx), %cl
	movb	%cl, 3466(%rsp)
	movb	171(%rbx), %cl
	movb	%cl, 3467(%rsp)
	movb	172(%rbx), %cl
	movb	%cl, 3468(%rsp)
	movb	173(%rbx), %cl
	movb	%cl, 3469(%rsp)
	movb	174(%rbx), %cl
	movb	%cl, 3470(%rsp)
	movb	175(%rbx), %cl
	movb	%cl, 3471(%rsp)
	movb	176(%rbx), %cl
	movb	%cl, 3472(%rsp)
	movb	177(%rbx), %cl
	movb	%cl, 3473(%rsp)
	movb	178(%rbx), %cl
	movb	%cl, 3474(%rsp)
	movb	179(%rbx), %cl
	movb	%cl, 3475(%rsp)
	movb	180(%rbx), %cl
	movb	%cl, 3476(%rsp)
	movb	181(%rbx), %cl
	movb	%cl, 3477(%rsp)
	movb	182(%rbx), %cl
	movb	%cl, 3478(%rsp)
	movb	183(%rbx), %cl
	movb	%cl, 3479(%rsp)
	movb	184(%rbx), %cl
	movb	%cl, 3480(%rsp)
	movb	185(%rbx), %cl
	movb	%cl, 3481(%rsp)
	movb	186(%rbx), %cl
	movb	%cl, 3482(%rsp)
	movb	187(%rbx), %cl
	movb	%cl, 3483(%rsp)
	movb	188(%rbx), %cl
	movb	%cl, 3484(%rsp)
	movb	189(%rbx), %cl
	movb	%cl, 3485(%rsp)
	movb	190(%rbx), %cl
	movb	%cl, 3486(%rsp)
	movb	191(%rbx), %cl
	movb	%cl, 3487(%rsp)
	movb	192(%rbx), %cl
	movb	%cl, 3488(%rsp)
	movb	193(%rbx), %cl
	movb	%cl, 3489(%rsp)
	movb	194(%rbx), %cl
	movb	%cl, 3490(%rsp)
	movb	195(%rbx), %cl
	movb	%cl, 3491(%rsp)
	movb	196(%rbx), %cl
	movb	%cl, 3492(%rsp)
	movb	197(%rbx), %cl
	movb	%cl, 3493(%rsp)
	movb	198(%rbx), %cl
	movb	%cl, 3494(%rsp)
	movb	199(%rbx), %cl
	movb	%cl, 3495(%rsp)
	movb	200(%rbx), %cl
	movb	%cl, 3496(%rsp)
	movb	201(%rbx), %cl
	movb	%cl, 3497(%rsp)
	movb	202(%rbx), %cl
	movb	%cl, 3498(%rsp)
	movb	203(%rbx), %cl
	movb	%cl, 3499(%rsp)
	movb	204(%rbx), %cl
	movb	%cl, 3500(%rsp)
	movb	205(%rbx), %cl
	movb	%cl, 3501(%rsp)
	movb	206(%rbx), %cl
	movb	%cl, 3502(%rsp)
	movb	207(%rbx), %cl
	movb	%cl, 3503(%rsp)
	movb	208(%rbx), %cl
	movb	%cl, 3504(%rsp)
	movb	209(%rbx), %cl
	movb	%cl, 3505(%rsp)
	movb	210(%rbx), %cl
	movb	%cl, 3506(%rsp)
	movb	211(%rbx), %cl
	movb	%cl, 3507(%rsp)
	movb	212(%rbx), %cl
	movb	%cl, 3508(%rsp)
	movb	213(%rbx), %cl
	movb	%cl, 3509(%rsp)
	movb	214(%rbx), %cl
	movb	%cl, 3510(%rsp)
	movb	215(%rbx), %cl
	movb	%cl, 3511(%rsp)
	movb	216(%rbx), %cl
	movb	%cl, 3512(%rsp)
	movb	217(%rbx), %cl
	movb	%cl, 3513(%rsp)
	movb	218(%rbx), %cl
	movb	%cl, 3514(%rsp)
	movb	219(%rbx), %cl
	movb	%cl, 3515(%rsp)
	movb	220(%rbx), %cl
	movb	%cl, 3516(%rsp)
	movb	221(%rbx), %cl
	movb	%cl, 3517(%rsp)
	movb	222(%rbx), %cl
	movb	%cl, 3518(%rsp)
	movb	223(%rbx), %cl
	movb	%cl, 3519(%rsp)
	movb	224(%rbx), %cl
	movb	%cl, 3520(%rsp)
	movb	225(%rbx), %cl
	movb	%cl, 3521(%rsp)
	movb	226(%rbx), %cl
	movb	%cl, 3522(%rsp)
	movb	227(%rbx), %cl
	movb	%cl, 3523(%rsp)
	movb	228(%rbx), %cl
	movb	%cl, 3524(%rsp)
	movb	229(%rbx), %cl
	movb	%cl, 3525(%rsp)
	movb	230(%rbx), %cl
	movb	%cl, 3526(%rsp)
	movb	231(%rbx), %cl
	movb	%cl, 3527(%rsp)
	movb	232(%rbx), %cl
	movb	%cl, 3528(%rsp)
	movb	233(%rbx), %cl
	movb	%cl, 3529(%rsp)
	movb	234(%rbx), %cl
	movb	%cl, 3530(%rsp)
	movb	235(%rbx), %cl
	movb	%cl, 3531(%rsp)
	movb	236(%rbx), %cl
	movb	%cl, 3532(%rsp)
	movb	237(%rbx), %cl
	movb	%cl, 3533(%rsp)
	movb	238(%rbx), %cl
	movb	%cl, 3534(%rsp)
	movb	239(%rbx), %cl
	movb	%cl, 3535(%rsp)
	movb	240(%rbx), %cl
	movb	%cl, 3536(%rsp)
	movb	241(%rbx), %cl
	movb	%cl, 3537(%rsp)
	movb	242(%rbx), %cl
	movb	%cl, 3538(%rsp)
	movb	243(%rbx), %cl
	movb	%cl, 3539(%rsp)
	movb	244(%rbx), %cl
	movb	%cl, 3540(%rsp)
	movb	245(%rbx), %cl
	movb	%cl, 3541(%rsp)
	movb	246(%rbx), %cl
	movb	%cl, 3542(%rsp)
	movb	247(%rbx), %cl
	movb	%cl, 3543(%rsp)
	movb	248(%rbx), %cl
	movb	%cl, 3544(%rsp)
	movb	249(%rbx), %cl
	movb	%cl, 3545(%rsp)
	movb	250(%rbx), %cl
	movb	%cl, 3546(%rsp)
	movb	251(%rbx), %cl
	movb	%cl, 3547(%rsp)
	movb	252(%rbx), %cl
	movb	%cl, 3548(%rsp)
	movb	253(%rbx), %cl
	movb	%cl, 3549(%rsp)
	movb	254(%rbx), %cl
	movb	%cl, 3550(%rsp)
	movb	255(%rbx), %cl
	movb	%cl, 3551(%rsp)
	movb	256(%rbx), %cl
	movb	%cl, 3552(%rsp)
	movb	257(%rbx), %cl
	movb	%cl, 3553(%rsp)
	movb	258(%rbx), %cl
	movb	%cl, 3554(%rsp)
	movb	259(%rbx), %cl
	movb	%cl, 3555(%rsp)
	movb	260(%rbx), %cl
	movb	%cl, 3556(%rsp)
	movb	261(%rbx), %cl
	movb	%cl, 3557(%rsp)
	movb	262(%rbx), %cl
	movb	%cl, 3558(%rsp)
	movb	263(%rbx), %cl
	movb	%cl, 3559(%rsp)
	movb	264(%rbx), %cl
	movb	%cl, 3560(%rsp)
	movb	265(%rbx), %cl
	movb	%cl, 3561(%rsp)
	movb	266(%rbx), %cl
	movb	%cl, 3562(%rsp)
	movb	267(%rbx), %cl
	movb	%cl, 3563(%rsp)
	movb	268(%rbx), %cl
	movb	%cl, 3564(%rsp)
	movb	269(%rbx), %cl
	movb	%cl, 3565(%rsp)
	movb	270(%rbx), %cl
	movb	%cl, 3566(%rsp)
	movb	271(%rbx), %cl
	movb	%cl, 3567(%rsp)
	movb	272(%rbx), %cl
	movb	%cl, 3568(%rsp)
	movb	273(%rbx), %cl
	movb	%cl, 3569(%rsp)
	movb	274(%rbx), %cl
	movb	%cl, 3570(%rsp)
	movb	275(%rbx), %cl
	movb	%cl, 3571(%rsp)
	movb	276(%rbx), %cl
	movb	%cl, 3572(%rsp)
	movb	277(%rbx), %cl
	movb	%cl, 3573(%rsp)
	movb	278(%rbx), %cl
	movb	%cl, 3574(%rsp)
	movb	279(%rbx), %cl
	movb	%cl, 3575(%rsp)
	movb	280(%rbx), %cl
	movb	%cl, 3576(%rsp)
	movb	281(%rbx), %cl
	movb	%cl, 3577(%rsp)
	movb	282(%rbx), %cl
	movb	%cl, 3578(%rsp)
	movb	283(%rbx), %cl
	movb	%cl, 3579(%rsp)
	movb	284(%rbx), %cl
	movb	%cl, 3580(%rsp)
	movb	285(%rbx), %cl
	movb	%cl, 3581(%rsp)
	movb	286(%rbx), %cl
	movb	%cl, 3582(%rsp)
	movb	287(%rbx), %cl
	movb	%cl, 3583(%rsp)
	movb	288(%rbx), %cl
	movb	%cl, 3584(%rsp)
	movb	289(%rbx), %cl
	movb	%cl, 3585(%rsp)
	movb	290(%rbx), %cl
	movb	%cl, 3586(%rsp)
	movb	291(%rbx), %cl
	movb	%cl, 3587(%rsp)
	movb	292(%rbx), %cl
	movb	%cl, 3588(%rsp)
	movb	293(%rbx), %cl
	movb	%cl, 3589(%rsp)
	movb	294(%rbx), %cl
	movb	%cl, 3590(%rsp)
	movb	295(%rbx), %cl
	movb	%cl, 3591(%rsp)
	movb	296(%rbx), %cl
	movb	%cl, 3592(%rsp)
	movb	297(%rbx), %cl
	movb	%cl, 3593(%rsp)
	movb	298(%rbx), %cl
	movb	%cl, 3594(%rsp)
	movb	299(%rbx), %cl
	movb	%cl, 3595(%rsp)
	movb	300(%rbx), %cl
	movb	%cl, 3596(%rsp)
	movb	301(%rbx), %cl
	movb	%cl, 3597(%rsp)
	movb	302(%rbx), %cl
	movb	%cl, 3598(%rsp)
	movb	303(%rbx), %cl
	movb	%cl, 3599(%rsp)
	movb	304(%rbx), %cl
	movb	%cl, 3600(%rsp)
	movb	305(%rbx), %cl
	movb	%cl, 3601(%rsp)
	movb	306(%rbx), %cl
	movb	%cl, 3602(%rsp)
	movb	307(%rbx), %cl
	movb	%cl, 3603(%rsp)
	movb	308(%rbx), %cl
	movb	%cl, 3604(%rsp)
	movb	309(%rbx), %cl
	movb	%cl, 3605(%rsp)
	movb	310(%rbx), %cl
	movb	%cl, 3606(%rsp)
	movb	311(%rbx), %cl
	movb	%cl, 3607(%rsp)
	movb	312(%rbx), %cl
	movb	%cl, 3608(%rsp)
	movb	313(%rbx), %cl
	movb	%cl, 3609(%rsp)
	movb	314(%rbx), %cl
	movb	%cl, 3610(%rsp)
	movb	315(%rbx), %cl
	movb	%cl, 3611(%rsp)
	movb	316(%rbx), %cl
	movb	%cl, 3612(%rsp)
	movb	317(%rbx), %cl
	movb	%cl, 3613(%rsp)
	movb	318(%rbx), %cl
	movb	%cl, 3614(%rsp)
	movb	319(%rbx), %cl
	movb	%cl, 3615(%rsp)
	movb	320(%rbx), %cl
	movb	%cl, 3616(%rsp)
	movb	321(%rbx), %cl
	movb	%cl, 3617(%rsp)
	movb	322(%rbx), %cl
	movb	%cl, 3618(%rsp)
	movb	323(%rbx), %cl
	movb	%cl, 3619(%rsp)
	movb	324(%rbx), %cl
	movb	%cl, 3620(%rsp)
	movb	325(%rbx), %cl
	movb	%cl, 3621(%rsp)
	movb	326(%rbx), %cl
	movb	%cl, 3622(%rsp)
	movb	327(%rbx), %cl
	movb	%cl, 3623(%rsp)
	movb	328(%rbx), %cl
	movb	%cl, 3624(%rsp)
	movb	329(%rbx), %cl
	movb	%cl, 3625(%rsp)
	movb	330(%rbx), %cl
	movb	%cl, 3626(%rsp)
	movb	331(%rbx), %cl
	movb	%cl, 3627(%rsp)
	movb	332(%rbx), %cl
	movb	%cl, 3628(%rsp)
	movb	333(%rbx), %cl
	movb	%cl, 3629(%rsp)
	movb	334(%rbx), %cl
	movb	%cl, 3630(%rsp)
	movb	335(%rbx), %cl
	movb	%cl, 3631(%rsp)
	movb	336(%rbx), %cl
	movb	%cl, 3632(%rsp)
	movb	337(%rbx), %cl
	movb	%cl, 3633(%rsp)
	movb	338(%rbx), %cl
	movb	%cl, 3634(%rsp)
	movb	339(%rbx), %cl
	movb	%cl, 3635(%rsp)
	movb	340(%rbx), %cl
	movb	%cl, 3636(%rsp)
	movb	341(%rbx), %cl
	movb	%cl, 3637(%rsp)
	movb	342(%rbx), %cl
	movb	%cl, 3638(%rsp)
	movb	343(%rbx), %cl
	movb	%cl, 3639(%rsp)
	movb	344(%rbx), %cl
	movb	%cl, 3640(%rsp)
	movb	345(%rbx), %cl
	movb	%cl, 3641(%rsp)
	movb	346(%rbx), %cl
	movb	%cl, 3642(%rsp)
	movb	347(%rbx), %cl
	movb	%cl, 3643(%rsp)
	movb	348(%rbx), %cl
	movb	%cl, 3644(%rsp)
	movb	349(%rbx), %cl
	movb	%cl, 3645(%rsp)
	movb	350(%rbx), %cl
	movb	%cl, 3646(%rsp)
	movb	351(%rbx), %cl
	movb	%cl, 3647(%rsp)
	movb	352(%rbx), %cl
	movb	%cl, 3648(%rsp)
	movb	353(%rbx), %cl
	movb	%cl, 3649(%rsp)
	movb	354(%rbx), %cl
	movb	%cl, 3650(%rsp)
	movb	355(%rbx), %cl
	movb	%cl, 3651(%rsp)
	movb	356(%rbx), %cl
	movb	%cl, 3652(%rsp)
	movb	357(%rbx), %cl
	movb	%cl, 3653(%rsp)
	movb	358(%rbx), %cl
	movb	%cl, 3654(%rsp)
	movb	359(%rbx), %cl
	movb	%cl, 3655(%rsp)
	movb	360(%rbx), %cl
	movb	%cl, 3656(%rsp)
	movb	361(%rbx), %cl
	movb	%cl, 3657(%rsp)
	movb	362(%rbx), %cl
	movb	%cl, 3658(%rsp)
	movb	363(%rbx), %cl
	movb	%cl, 3659(%rsp)
	movb	364(%rbx), %cl
	movb	%cl, 3660(%rsp)
	movb	365(%rbx), %cl
	movb	%cl, 3661(%rsp)
	movb	366(%rbx), %cl
	movb	%cl, 3662(%rsp)
	movb	367(%rbx), %cl
	movb	%cl, 3663(%rsp)
	movb	368(%rbx), %cl
	movb	%cl, 3664(%rsp)
	movb	369(%rbx), %cl
	movb	%cl, 3665(%rsp)
	movb	370(%rbx), %cl
	movb	%cl, 3666(%rsp)
	movb	371(%rbx), %cl
	movb	%cl, 3667(%rsp)
	movb	372(%rbx), %cl
	movb	%cl, 3668(%rsp)
	movb	373(%rbx), %cl
	movb	%cl, 3669(%rsp)
	movb	374(%rbx), %cl
	movb	%cl, 3670(%rsp)
	movb	375(%rbx), %cl
	movb	%cl, 3671(%rsp)
	movb	376(%rbx), %cl
	movb	%cl, 3672(%rsp)
	movb	377(%rbx), %cl
	movb	%cl, 3673(%rsp)
	movb	378(%rbx), %cl
	movb	%cl, 3674(%rsp)
	movb	379(%rbx), %cl
	movb	%cl, 3675(%rsp)
	movb	380(%rbx), %cl
	movb	%cl, 3676(%rsp)
	movb	381(%rbx), %cl
	movb	%cl, 3677(%rsp)
	movb	382(%rbx), %cl
	movb	%cl, 3678(%rsp)
	movb	383(%rbx), %cl
	movb	%cl, 3679(%rsp)
	movb	384(%rbx), %cl
	movb	%cl, 3680(%rsp)
	movb	385(%rbx), %cl
	movb	%cl, 3681(%rsp)
	movb	386(%rbx), %cl
	movb	%cl, 3682(%rsp)
	movb	387(%rbx), %cl
	movb	%cl, 3683(%rsp)
	movb	388(%rbx), %cl
	movb	%cl, 3684(%rsp)
	movb	389(%rbx), %cl
	movb	%cl, 3685(%rsp)
	movb	390(%rbx), %cl
	movb	%cl, 3686(%rsp)
	movb	391(%rbx), %cl
	movb	%cl, 3687(%rsp)
	movb	392(%rbx), %cl
	movb	%cl, 3688(%rsp)
	movb	393(%rbx), %cl
	movb	%cl, 3689(%rsp)
	movb	394(%rbx), %cl
	movb	%cl, 3690(%rsp)
	movb	395(%rbx), %cl
	movb	%cl, 3691(%rsp)
	movb	396(%rbx), %cl
	movb	%cl, 3692(%rsp)
	movb	397(%rbx), %cl
	movb	%cl, 3693(%rsp)
	movb	398(%rbx), %cl
	movb	%cl, 3694(%rsp)
	movb	399(%rbx), %cl
	movb	%cl, 3695(%rsp)
	movb	400(%rbx), %cl
	movb	%cl, 3696(%rsp)
	movb	401(%rbx), %cl
	movb	%cl, 3697(%rsp)
	movb	402(%rbx), %cl
	movb	%cl, 3698(%rsp)
	movb	403(%rbx), %cl
	movb	%cl, 3699(%rsp)
	movb	404(%rbx), %cl
	movb	%cl, 3700(%rsp)
	movb	405(%rbx), %cl
	movb	%cl, 3701(%rsp)
	movb	406(%rbx), %cl
	movb	%cl, 3702(%rsp)
	movb	407(%rbx), %cl
	movb	%cl, 3703(%rsp)
	movb	408(%rbx), %cl
	movb	%cl, 3704(%rsp)
	movb	409(%rbx), %cl
	movb	%cl, 3705(%rsp)
	movb	410(%rbx), %cl
	movb	%cl, 3706(%rsp)
	movb	411(%rbx), %cl
	movb	%cl, 3707(%rsp)
	movb	412(%rbx), %cl
	movb	%cl, 3708(%rsp)
	movb	413(%rbx), %cl
	movb	%cl, 3709(%rsp)
	movb	414(%rbx), %cl
	movb	%cl, 3710(%rsp)
	movb	415(%rbx), %cl
	movb	%cl, 3711(%rsp)
	movb	416(%rbx), %cl
	movb	%cl, 3712(%rsp)
	movb	417(%rbx), %cl
	movb	%cl, 3713(%rsp)
	movb	418(%rbx), %cl
	movb	%cl, 3714(%rsp)
	movb	419(%rbx), %cl
	movb	%cl, 3715(%rsp)
	movb	420(%rbx), %cl
	movb	%cl, 3716(%rsp)
	movb	421(%rbx), %cl
	movb	%cl, 3717(%rsp)
	movb	422(%rbx), %cl
	movb	%cl, 3718(%rsp)
	movb	423(%rbx), %cl
	movb	%cl, 3719(%rsp)
	movb	424(%rbx), %cl
	movb	%cl, 3720(%rsp)
	movb	425(%rbx), %cl
	movb	%cl, 3721(%rsp)
	movb	426(%rbx), %cl
	movb	%cl, 3722(%rsp)
	movb	427(%rbx), %cl
	movb	%cl, 3723(%rsp)
	movb	428(%rbx), %cl
	movb	%cl, 3724(%rsp)
	movb	429(%rbx), %cl
	movb	%cl, 3725(%rsp)
	movb	430(%rbx), %cl
	movb	%cl, 3726(%rsp)
	movb	431(%rbx), %cl
	movb	%cl, 3727(%rsp)
	movb	432(%rbx), %cl
	movb	%cl, 3728(%rsp)
	movb	433(%rbx), %cl
	movb	%cl, 3729(%rsp)
	movb	434(%rbx), %cl
	movb	%cl, 3730(%rsp)
	movb	435(%rbx), %cl
	movb	%cl, 3731(%rsp)
	movb	436(%rbx), %cl
	movb	%cl, 3732(%rsp)
	movb	437(%rbx), %cl
	movb	%cl, 3733(%rsp)
	movb	438(%rbx), %cl
	movb	%cl, 3734(%rsp)
	movb	439(%rbx), %cl
	movb	%cl, 3735(%rsp)
	movb	440(%rbx), %cl
	movb	%cl, 3736(%rsp)
	movb	441(%rbx), %cl
	movb	%cl, 3737(%rsp)
	movb	442(%rbx), %cl
	movb	%cl, 3738(%rsp)
	movb	443(%rbx), %cl
	movb	%cl, 3739(%rsp)
	movb	444(%rbx), %cl
	movb	%cl, 3740(%rsp)
	movb	445(%rbx), %cl
	movb	%cl, 3741(%rsp)
	movb	446(%rbx), %cl
	movb	%cl, 3742(%rsp)
	movb	447(%rbx), %cl
	movb	%cl, 3743(%rsp)
	movb	448(%rbx), %cl
	movb	%cl, 3744(%rsp)
	movb	449(%rbx), %cl
	movb	%cl, 3745(%rsp)
	movb	450(%rbx), %cl
	movb	%cl, 3746(%rsp)
	movb	451(%rbx), %cl
	movb	%cl, 3747(%rsp)
	movb	452(%rbx), %cl
	movb	%cl, 3748(%rsp)
	movb	453(%rbx), %cl
	movb	%cl, 3749(%rsp)
	movb	454(%rbx), %cl
	movb	%cl, 3750(%rsp)
	movb	455(%rbx), %cl
	movb	%cl, 3751(%rsp)
	movb	456(%rbx), %cl
	movb	%cl, 3752(%rsp)
	movb	457(%rbx), %cl
	movb	%cl, 3753(%rsp)
	movb	458(%rbx), %cl
	movb	%cl, 3754(%rsp)
	movb	459(%rbx), %cl
	movb	%cl, 3755(%rsp)
	movb	460(%rbx), %cl
	movb	%cl, 3756(%rsp)
	movb	461(%rbx), %cl
	movb	%cl, 3757(%rsp)
	movb	462(%rbx), %cl
	movb	%cl, 3758(%rsp)
	movb	463(%rbx), %cl
	movb	%cl, 3759(%rsp)
	movb	464(%rbx), %cl
	movb	%cl, 3760(%rsp)
	movb	465(%rbx), %cl
	movb	%cl, 3761(%rsp)
	movb	466(%rbx), %cl
	movb	%cl, 3762(%rsp)
	movb	467(%rbx), %cl
	movb	%cl, 3763(%rsp)
	movb	468(%rbx), %cl
	movb	%cl, 3764(%rsp)
	movb	469(%rbx), %cl
	movb	%cl, 3765(%rsp)
	movb	470(%rbx), %cl
	movb	%cl, 3766(%rsp)
	movb	471(%rbx), %cl
	movb	%cl, 3767(%rsp)
	movb	472(%rbx), %cl
	movb	%cl, 3768(%rsp)
	movb	473(%rbx), %cl
	movb	%cl, 3769(%rsp)
	movb	474(%rbx), %cl
	movb	%cl, 3770(%rsp)
	movb	475(%rbx), %cl
	movb	%cl, 3771(%rsp)
	movb	476(%rbx), %cl
	movb	%cl, 3772(%rsp)
	movb	477(%rbx), %cl
	movb	%cl, 3773(%rsp)
	movb	478(%rbx), %cl
	movb	%cl, 3774(%rsp)
	movb	479(%rbx), %cl
	movb	%cl, 3775(%rsp)
	movb	480(%rbx), %cl
	movb	%cl, 3776(%rsp)
	movb	481(%rbx), %cl
	movb	%cl, 3777(%rsp)
	movb	482(%rbx), %cl
	movb	%cl, 3778(%rsp)
	movb	483(%rbx), %cl
	movb	%cl, 3779(%rsp)
	movb	484(%rbx), %cl
	movb	%cl, 3780(%rsp)
	movb	485(%rbx), %cl
	movb	%cl, 3781(%rsp)
	movb	486(%rbx), %cl
	movb	%cl, 3782(%rsp)
	movb	487(%rbx), %cl
	movb	%cl, 3783(%rsp)
	movb	488(%rbx), %cl
	movb	%cl, 3784(%rsp)
	movb	489(%rbx), %cl
	movb	%cl, 3785(%rsp)
	movb	490(%rbx), %cl
	movb	%cl, 3786(%rsp)
	movb	491(%rbx), %cl
	movb	%cl, 3787(%rsp)
	movb	492(%rbx), %cl
	movb	%cl, 3788(%rsp)
	movb	493(%rbx), %cl
	movb	%cl, 3789(%rsp)
	movb	494(%rbx), %cl
	movb	%cl, 3790(%rsp)
	movb	495(%rbx), %cl
	movb	%cl, 3791(%rsp)
	movb	496(%rbx), %cl
	movb	%cl, 3792(%rsp)
	movb	497(%rbx), %cl
	movb	%cl, 3793(%rsp)
	movb	498(%rbx), %cl
	movb	%cl, 3794(%rsp)
	movb	499(%rbx), %cl
	movb	%cl, 3795(%rsp)
	movb	500(%rbx), %cl
	movb	%cl, 3796(%rsp)
	movb	501(%rbx), %cl
	movb	%cl, 3797(%rsp)
	movb	502(%rbx), %cl
	movb	%cl, 3798(%rsp)
	movb	503(%rbx), %cl
	movb	%cl, 3799(%rsp)
	movb	504(%rbx), %cl
	movb	%cl, 3800(%rsp)
	movb	505(%rbx), %cl
	movb	%cl, 3801(%rsp)
	movb	506(%rbx), %cl
	movb	%cl, 3802(%rsp)
	movb	507(%rbx), %cl
	movb	%cl, 3803(%rsp)
	movb	508(%rbx), %cl
	movb	%cl, 3804(%rsp)
	movb	509(%rbx), %cl
	movb	%cl, 3805(%rsp)
	movb	510(%rbx), %cl
	movb	%cl, 3806(%rsp)
	movb	511(%rbx), %cl
	movb	%cl, 3807(%rsp)
	movb	512(%rbx), %cl
	movb	%cl, 3808(%rsp)
	movb	513(%rbx), %cl
	movb	%cl, 3809(%rsp)
	movb	514(%rbx), %cl
	movb	%cl, 3810(%rsp)
	movb	515(%rbx), %cl
	movb	%cl, 3811(%rsp)
	movb	516(%rbx), %cl
	movb	%cl, 3812(%rsp)
	movb	517(%rbx), %cl
	movb	%cl, 3813(%rsp)
	movb	518(%rbx), %cl
	movb	%cl, 3814(%rsp)
	movb	519(%rbx), %cl
	movb	%cl, 3815(%rsp)
	movb	520(%rbx), %cl
	movb	%cl, 3816(%rsp)
	movb	521(%rbx), %cl
	movb	%cl, 3817(%rsp)
	movb	522(%rbx), %cl
	movb	%cl, 3818(%rsp)
	movb	523(%rbx), %cl
	movb	%cl, 3819(%rsp)
	movb	524(%rbx), %cl
	movb	%cl, 3820(%rsp)
	movb	525(%rbx), %cl
	movb	%cl, 3821(%rsp)
	movb	526(%rbx), %cl
	movb	%cl, 3822(%rsp)
	movb	527(%rbx), %cl
	movb	%cl, 3823(%rsp)
	movb	528(%rbx), %cl
	movb	%cl, 3824(%rsp)
	movb	529(%rbx), %cl
	movb	%cl, 3825(%rsp)
	movb	530(%rbx), %cl
	movb	%cl, 3826(%rsp)
	movb	531(%rbx), %cl
	movb	%cl, 3827(%rsp)
	movb	532(%rbx), %cl
	movb	%cl, 3828(%rsp)
	movb	533(%rbx), %cl
	movb	%cl, 3829(%rsp)
	movb	534(%rbx), %cl
	movb	%cl, 3830(%rsp)
	movb	535(%rbx), %cl
	movb	%cl, 3831(%rsp)
	movb	536(%rbx), %cl
	movb	%cl, 3832(%rsp)
	movb	537(%rbx), %cl
	movb	%cl, 3833(%rsp)
	movb	538(%rbx), %cl
	movb	%cl, 3834(%rsp)
	movb	539(%rbx), %cl
	movb	%cl, 3835(%rsp)
	movb	540(%rbx), %cl
	movb	%cl, 3836(%rsp)
	movb	541(%rbx), %cl
	movb	%cl, 3837(%rsp)
	movb	542(%rbx), %cl
	movb	%cl, 3838(%rsp)
	movb	543(%rbx), %cl
	movb	%cl, 3839(%rsp)
	movb	544(%rbx), %cl
	movb	%cl, 3840(%rsp)
	movb	545(%rbx), %cl
	movb	%cl, 3841(%rsp)
	movb	546(%rbx), %cl
	movb	%cl, 3842(%rsp)
	movb	547(%rbx), %cl
	movb	%cl, 3843(%rsp)
	movb	548(%rbx), %cl
	movb	%cl, 3844(%rsp)
	movb	549(%rbx), %cl
	movb	%cl, 3845(%rsp)
	movb	550(%rbx), %cl
	movb	%cl, 3846(%rsp)
	movb	551(%rbx), %cl
	movb	%cl, 3847(%rsp)
	movb	552(%rbx), %cl
	movb	%cl, 3848(%rsp)
	movb	553(%rbx), %cl
	movb	%cl, 3849(%rsp)
	movb	554(%rbx), %cl
	movb	%cl, 3850(%rsp)
	movb	555(%rbx), %cl
	movb	%cl, 3851(%rsp)
	movb	556(%rbx), %cl
	movb	%cl, 3852(%rsp)
	movb	557(%rbx), %cl
	movb	%cl, 3853(%rsp)
	movb	558(%rbx), %cl
	movb	%cl, 3854(%rsp)
	movb	559(%rbx), %cl
	movb	%cl, 3855(%rsp)
	movb	560(%rbx), %cl
	movb	%cl, 3856(%rsp)
	movb	561(%rbx), %cl
	movb	%cl, 3857(%rsp)
	movb	562(%rbx), %cl
	movb	%cl, 3858(%rsp)
	movb	563(%rbx), %cl
	movb	%cl, 3859(%rsp)
	movb	564(%rbx), %cl
	movb	%cl, 3860(%rsp)
	movb	565(%rbx), %cl
	movb	%cl, 3861(%rsp)
	movb	566(%rbx), %cl
	movb	%cl, 3862(%rsp)
	movb	567(%rbx), %cl
	movb	%cl, 3863(%rsp)
	movb	568(%rbx), %cl
	movb	%cl, 3864(%rsp)
	movb	569(%rbx), %cl
	movb	%cl, 3865(%rsp)
	movb	570(%rbx), %cl
	movb	%cl, 3866(%rsp)
	movb	571(%rbx), %cl
	movb	%cl, 3867(%rsp)
	movb	572(%rbx), %cl
	movb	%cl, 3868(%rsp)
	movb	573(%rbx), %cl
	movb	%cl, 3869(%rsp)
	movb	574(%rbx), %cl
	movb	%cl, 3870(%rsp)
	movb	575(%rbx), %cl
	movb	%cl, 3871(%rsp)
	movb	576(%rbx), %cl
	movb	%cl, 3872(%rsp)
	movb	577(%rbx), %cl
	movb	%cl, 3873(%rsp)
	movb	578(%rbx), %cl
	movb	%cl, 3874(%rsp)
	movb	579(%rbx), %cl
	movb	%cl, 3875(%rsp)
	movb	580(%rbx), %cl
	movb	%cl, 3876(%rsp)
	movb	581(%rbx), %cl
	movb	%cl, 3877(%rsp)
	movb	582(%rbx), %cl
	movb	%cl, 3878(%rsp)
	movb	583(%rbx), %cl
	movb	%cl, 3879(%rsp)
	movb	584(%rbx), %cl
	movb	%cl, 3880(%rsp)
	movb	585(%rbx), %cl
	movb	%cl, 3881(%rsp)
	movb	586(%rbx), %cl
	movb	%cl, 3882(%rsp)
	movb	587(%rbx), %cl
	movb	%cl, 3883(%rsp)
	movb	588(%rbx), %cl
	movb	%cl, 3884(%rsp)
	movb	589(%rbx), %cl
	movb	%cl, 3885(%rsp)
	movb	590(%rbx), %cl
	movb	%cl, 3886(%rsp)
	movb	591(%rbx), %cl
	movb	%cl, 3887(%rsp)
	movb	592(%rbx), %cl
	movb	%cl, 3888(%rsp)
	movb	593(%rbx), %cl
	movb	%cl, 3889(%rsp)
	movb	594(%rbx), %cl
	movb	%cl, 3890(%rsp)
	movb	595(%rbx), %cl
	movb	%cl, 3891(%rsp)
	movb	596(%rbx), %cl
	movb	%cl, 3892(%rsp)
	movb	597(%rbx), %cl
	movb	%cl, 3893(%rsp)
	movb	598(%rbx), %cl
	movb	%cl, 3894(%rsp)
	movb	599(%rbx), %cl
	movb	%cl, 3895(%rsp)
	movb	600(%rbx), %cl
	movb	%cl, 3896(%rsp)
	movb	601(%rbx), %cl
	movb	%cl, 3897(%rsp)
	movb	602(%rbx), %cl
	movb	%cl, 3898(%rsp)
	movb	603(%rbx), %cl
	movb	%cl, 3899(%rsp)
	movb	604(%rbx), %cl
	movb	%cl, 3900(%rsp)
	movb	605(%rbx), %cl
	movb	%cl, 3901(%rsp)
	movb	606(%rbx), %cl
	movb	%cl, 3902(%rsp)
	movb	607(%rbx), %cl
	movb	%cl, 3903(%rsp)
	movb	608(%rbx), %cl
	movb	%cl, 3904(%rsp)
	movb	609(%rbx), %cl
	movb	%cl, 3905(%rsp)
	movb	610(%rbx), %cl
	movb	%cl, 3906(%rsp)
	movb	611(%rbx), %cl
	movb	%cl, 3907(%rsp)
	movb	612(%rbx), %cl
	movb	%cl, 3908(%rsp)
	movb	613(%rbx), %cl
	movb	%cl, 3909(%rsp)
	movb	614(%rbx), %cl
	movb	%cl, 3910(%rsp)
	movb	615(%rbx), %cl
	movb	%cl, 3911(%rsp)
	movb	616(%rbx), %cl
	movb	%cl, 3912(%rsp)
	movb	617(%rbx), %cl
	movb	%cl, 3913(%rsp)
	movb	618(%rbx), %cl
	movb	%cl, 3914(%rsp)
	movb	619(%rbx), %cl
	movb	%cl, 3915(%rsp)
	movb	620(%rbx), %cl
	movb	%cl, 3916(%rsp)
	movb	621(%rbx), %cl
	movb	%cl, 3917(%rsp)
	movb	622(%rbx), %cl
	movb	%cl, 3918(%rsp)
	movb	623(%rbx), %cl
	movb	%cl, 3919(%rsp)
	movb	624(%rbx), %cl
	movb	%cl, 3920(%rsp)
	movb	625(%rbx), %cl
	movb	%cl, 3921(%rsp)
	movb	626(%rbx), %cl
	movb	%cl, 3922(%rsp)
	movb	627(%rbx), %cl
	movb	%cl, 3923(%rsp)
	movb	628(%rbx), %cl
	movb	%cl, 3924(%rsp)
	movb	629(%rbx), %cl
	movb	%cl, 3925(%rsp)
	movb	630(%rbx), %cl
	movb	%cl, 3926(%rsp)
	movb	631(%rbx), %cl
	movb	%cl, 3927(%rsp)
	movb	632(%rbx), %cl
	movb	%cl, 3928(%rsp)
	movb	633(%rbx), %cl
	movb	%cl, 3929(%rsp)
	movb	634(%rbx), %cl
	movb	%cl, 3930(%rsp)
	movb	635(%rbx), %cl
	movb	%cl, 3931(%rsp)
	movb	636(%rbx), %cl
	movb	%cl, 3932(%rsp)
	movb	637(%rbx), %cl
	movb	%cl, 3933(%rsp)
	movb	638(%rbx), %cl
	movb	%cl, 3934(%rsp)
	movb	639(%rbx), %cl
	movb	%cl, 3935(%rsp)
	movb	640(%rbx), %cl
	movb	%cl, 3936(%rsp)
	movb	641(%rbx), %cl
	movb	%cl, 3937(%rsp)
	movb	642(%rbx), %cl
	movb	%cl, 3938(%rsp)
	movb	643(%rbx), %cl
	movb	%cl, 3939(%rsp)
	movb	644(%rbx), %cl
	movb	%cl, 3940(%rsp)
	movb	645(%rbx), %cl
	movb	%cl, 3941(%rsp)
	movb	646(%rbx), %cl
	movb	%cl, 3942(%rsp)
	movb	647(%rbx), %cl
	movb	%cl, 3943(%rsp)
	movb	648(%rbx), %cl
	movb	%cl, 3944(%rsp)
	movb	649(%rbx), %cl
	movb	%cl, 3945(%rsp)
	movb	650(%rbx), %cl
	movb	%cl, 3946(%rsp)
	movb	651(%rbx), %cl
	movb	%cl, 3947(%rsp)
	movb	652(%rbx), %cl
	movb	%cl, 3948(%rsp)
	movb	653(%rbx), %cl
	movb	%cl, 3949(%rsp)
	movb	654(%rbx), %cl
	movb	%cl, 3950(%rsp)
	movb	655(%rbx), %cl
	movb	%cl, 3951(%rsp)
	movb	656(%rbx), %cl
	movb	%cl, 3952(%rsp)
	movb	657(%rbx), %cl
	movb	%cl, 3953(%rsp)
	movb	658(%rbx), %cl
	movb	%cl, 3954(%rsp)
	movb	659(%rbx), %cl
	movb	%cl, 3955(%rsp)
	movb	660(%rbx), %cl
	movb	%cl, 3956(%rsp)
	movb	661(%rbx), %cl
	movb	%cl, 3957(%rsp)
	movb	662(%rbx), %cl
	movb	%cl, 3958(%rsp)
	movb	663(%rbx), %cl
	movb	%cl, 3959(%rsp)
	movb	664(%rbx), %cl
	movb	%cl, 3960(%rsp)
	movb	665(%rbx), %cl
	movb	%cl, 3961(%rsp)
	movb	666(%rbx), %cl
	movb	%cl, 3962(%rsp)
	movb	667(%rbx), %cl
	movb	%cl, 3963(%rsp)
	movb	668(%rbx), %cl
	movb	%cl, 3964(%rsp)
	movb	669(%rbx), %cl
	movb	%cl, 3965(%rsp)
	movb	670(%rbx), %cl
	movb	%cl, 3966(%rsp)
	movb	671(%rbx), %cl
	movb	%cl, 3967(%rsp)
	movb	672(%rbx), %cl
	movb	%cl, 3968(%rsp)
	movb	673(%rbx), %cl
	movb	%cl, 3969(%rsp)
	movb	674(%rbx), %cl
	movb	%cl, 3970(%rsp)
	movb	675(%rbx), %cl
	movb	%cl, 3971(%rsp)
	movb	676(%rbx), %cl
	movb	%cl, 3972(%rsp)
	movb	677(%rbx), %cl
	movb	%cl, 3973(%rsp)
	movb	678(%rbx), %cl
	movb	%cl, 3974(%rsp)
	movb	679(%rbx), %cl
	movb	%cl, 3975(%rsp)
	movb	680(%rbx), %cl
	movb	%cl, 3976(%rsp)
	movb	681(%rbx), %cl
	movb	%cl, 3977(%rsp)
	movb	682(%rbx), %cl
	movb	%cl, 3978(%rsp)
	movb	683(%rbx), %cl
	movb	%cl, 3979(%rsp)
	movb	684(%rbx), %cl
	movb	%cl, 3980(%rsp)
	movb	685(%rbx), %cl
	movb	%cl, 3981(%rsp)
	movb	686(%rbx), %cl
	movb	%cl, 3982(%rsp)
	movb	687(%rbx), %cl
	movb	%cl, 3983(%rsp)
	movb	688(%rbx), %cl
	movb	%cl, 3984(%rsp)
	movb	689(%rbx), %cl
	movb	%cl, 3985(%rsp)
	movb	690(%rbx), %cl
	movb	%cl, 3986(%rsp)
	movb	691(%rbx), %cl
	movb	%cl, 3987(%rsp)
	movb	692(%rbx), %cl
	movb	%cl, 3988(%rsp)
	movb	693(%rbx), %cl
	movb	%cl, 3989(%rsp)
	movb	694(%rbx), %cl
	movb	%cl, 3990(%rsp)
	movb	695(%rbx), %cl
	movb	%cl, 3991(%rsp)
	movb	696(%rbx), %cl
	movb	%cl, 3992(%rsp)
	movb	697(%rbx), %cl
	movb	%cl, 3993(%rsp)
	movb	698(%rbx), %cl
	movb	%cl, 3994(%rsp)
	movb	699(%rbx), %cl
	movb	%cl, 3995(%rsp)
	movb	700(%rbx), %cl
	movb	%cl, 3996(%rsp)
	movb	701(%rbx), %cl
	movb	%cl, 3997(%rsp)
	movb	702(%rbx), %cl
	movb	%cl, 3998(%rsp)
	movb	703(%rbx), %cl
	movb	%cl, 3999(%rsp)
	movb	704(%rbx), %cl
	movb	%cl, 4000(%rsp)
	movb	705(%rbx), %cl
	movb	%cl, 4001(%rsp)
	movb	706(%rbx), %cl
	movb	%cl, 4002(%rsp)
	movb	707(%rbx), %cl
	movb	%cl, 4003(%rsp)
	movb	708(%rbx), %cl
	movb	%cl, 4004(%rsp)
	movb	709(%rbx), %cl
	movb	%cl, 4005(%rsp)
	movb	710(%rbx), %cl
	movb	%cl, 4006(%rsp)
	movb	711(%rbx), %cl
	movb	%cl, 4007(%rsp)
	movb	712(%rbx), %cl
	movb	%cl, 4008(%rsp)
	movb	713(%rbx), %cl
	movb	%cl, 4009(%rsp)
	movb	714(%rbx), %cl
	movb	%cl, 4010(%rsp)
	movb	715(%rbx), %cl
	movb	%cl, 4011(%rsp)
	movb	716(%rbx), %cl
	movb	%cl, 4012(%rsp)
	movb	717(%rbx), %cl
	movb	%cl, 4013(%rsp)
	movb	718(%rbx), %cl
	movb	%cl, 4014(%rsp)
	movb	719(%rbx), %cl
	movb	%cl, 4015(%rsp)
	movb	720(%rbx), %cl
	movb	%cl, 4016(%rsp)
	movb	721(%rbx), %cl
	movb	%cl, 4017(%rsp)
	movb	722(%rbx), %cl
	movb	%cl, 4018(%rsp)
	movb	723(%rbx), %cl
	movb	%cl, 4019(%rsp)
	movb	724(%rbx), %cl
	movb	%cl, 4020(%rsp)
	movb	725(%rbx), %cl
	movb	%cl, 4021(%rsp)
	movb	726(%rbx), %cl
	movb	%cl, 4022(%rsp)
	movb	727(%rbx), %cl
	movb	%cl, 4023(%rsp)
	movb	728(%rbx), %cl
	movb	%cl, 4024(%rsp)
	movb	729(%rbx), %cl
	movb	%cl, 4025(%rsp)
	movb	730(%rbx), %cl
	movb	%cl, 4026(%rsp)
	movb	731(%rbx), %cl
	movb	%cl, 4027(%rsp)
	movb	732(%rbx), %cl
	movb	%cl, 4028(%rsp)
	movb	733(%rbx), %cl
	movb	%cl, 4029(%rsp)
	movb	734(%rbx), %cl
	movb	%cl, 4030(%rsp)
	movb	735(%rbx), %cl
	movb	%cl, 4031(%rsp)
	movb	736(%rbx), %cl
	movb	%cl, 4032(%rsp)
	movb	737(%rbx), %cl
	movb	%cl, 4033(%rsp)
	movb	738(%rbx), %cl
	movb	%cl, 4034(%rsp)
	movb	739(%rbx), %cl
	movb	%cl, 4035(%rsp)
	movb	740(%rbx), %cl
	movb	%cl, 4036(%rsp)
	movb	741(%rbx), %cl
	movb	%cl, 4037(%rsp)
	movb	742(%rbx), %cl
	movb	%cl, 4038(%rsp)
	movb	743(%rbx), %cl
	movb	%cl, 4039(%rsp)
	movb	744(%rbx), %cl
	movb	%cl, 4040(%rsp)
	movb	745(%rbx), %cl
	movb	%cl, 4041(%rsp)
	movb	746(%rbx), %cl
	movb	%cl, 4042(%rsp)
	movb	747(%rbx), %cl
	movb	%cl, 4043(%rsp)
	movb	748(%rbx), %cl
	movb	%cl, 4044(%rsp)
	movb	749(%rbx), %cl
	movb	%cl, 4045(%rsp)
	movb	750(%rbx), %cl
	movb	%cl, 4046(%rsp)
	movb	751(%rbx), %cl
	movb	%cl, 4047(%rsp)
	movb	752(%rbx), %cl
	movb	%cl, 4048(%rsp)
	movb	753(%rbx), %cl
	movb	%cl, 4049(%rsp)
	movb	754(%rbx), %cl
	movb	%cl, 4050(%rsp)
	movb	755(%rbx), %cl
	movb	%cl, 4051(%rsp)
	movb	756(%rbx), %cl
	movb	%cl, 4052(%rsp)
	movb	757(%rbx), %cl
	movb	%cl, 4053(%rsp)
	movb	758(%rbx), %cl
	movb	%cl, 4054(%rsp)
	movb	759(%rbx), %cl
	movb	%cl, 4055(%rsp)
	movb	760(%rbx), %cl
	movb	%cl, 4056(%rsp)
	movb	761(%rbx), %cl
	movb	%cl, 4057(%rsp)
	movb	762(%rbx), %cl
	movb	%cl, 4058(%rsp)
	movb	763(%rbx), %cl
	movb	%cl, 4059(%rsp)
	movb	764(%rbx), %cl
	movb	%cl, 4060(%rsp)
	movb	765(%rbx), %cl
	movb	%cl, 4061(%rsp)
	movb	766(%rbx), %cl
	movb	%cl, 4062(%rsp)
	movb	767(%rbx), %cl
	movb	%cl, 4063(%rsp)
	movb	768(%rbx), %cl
	movb	%cl, 4064(%rsp)
	movb	769(%rbx), %cl
	movb	%cl, 4065(%rsp)
	movb	770(%rbx), %cl
	movb	%cl, 4066(%rsp)
	movb	771(%rbx), %cl
	movb	%cl, 4067(%rsp)
	movb	772(%rbx), %cl
	movb	%cl, 4068(%rsp)
	movb	773(%rbx), %cl
	movb	%cl, 4069(%rsp)
	movb	774(%rbx), %cl
	movb	%cl, 4070(%rsp)
	movb	775(%rbx), %cl
	movb	%cl, 4071(%rsp)
	movb	776(%rbx), %cl
	movb	%cl, 4072(%rsp)
	movb	777(%rbx), %cl
	movb	%cl, 4073(%rsp)
	movb	778(%rbx), %cl
	movb	%cl, 4074(%rsp)
	movb	779(%rbx), %cl
	movb	%cl, 4075(%rsp)
	movb	780(%rbx), %cl
	movb	%cl, 4076(%rsp)
	movb	781(%rbx), %cl
	movb	%cl, 4077(%rsp)
	movb	782(%rbx), %cl
	movb	%cl, 4078(%rsp)
	movb	783(%rbx), %cl
	movb	%cl, 4079(%rsp)
	movb	784(%rbx), %cl
	movb	%cl, 4080(%rsp)
	movb	785(%rbx), %cl
	movb	%cl, 4081(%rsp)
	movb	786(%rbx), %cl
	movb	%cl, 4082(%rsp)
	movb	787(%rbx), %cl
	movb	%cl, 4083(%rsp)
	movb	788(%rbx), %cl
	movb	%cl, 4084(%rsp)
	movb	789(%rbx), %cl
	movb	%cl, 4085(%rsp)
	movb	790(%rbx), %cl
	movb	%cl, 4086(%rsp)
	movb	791(%rbx), %cl
	movb	%cl, 4087(%rsp)
	movb	792(%rbx), %cl
	movb	%cl, 4088(%rsp)
	movb	793(%rbx), %cl
	movb	%cl, 4089(%rsp)
	movb	794(%rbx), %cl
	movb	%cl, 4090(%rsp)
	movb	795(%rbx), %cl
	movb	%cl, 4091(%rsp)
	movb	796(%rbx), %cl
	movb	%cl, 4092(%rsp)
	movb	797(%rbx), %cl
	movb	%cl, 4093(%rsp)
	movb	798(%rbx), %cl
	movb	%cl, 4094(%rsp)
	movb	799(%rbx), %cl
	movb	%cl, 4095(%rsp)
	movb	800(%rbx), %cl
	movb	%cl, 4096(%rsp)
	movb	801(%rbx), %cl
	movb	%cl, 4097(%rsp)
	movb	802(%rbx), %cl
	movb	%cl, 4098(%rsp)
	movb	803(%rbx), %cl
	movb	%cl, 4099(%rsp)
	movb	804(%rbx), %cl
	movb	%cl, 4100(%rsp)
	movb	805(%rbx), %cl
	movb	%cl, 4101(%rsp)
	movb	806(%rbx), %cl
	movb	%cl, 4102(%rsp)
	movb	807(%rbx), %cl
	movb	%cl, 4103(%rsp)
	movb	808(%rbx), %cl
	movb	%cl, 4104(%rsp)
	movb	809(%rbx), %cl
	movb	%cl, 4105(%rsp)
	movb	810(%rbx), %cl
	movb	%cl, 4106(%rsp)
	movb	811(%rbx), %cl
	movb	%cl, 4107(%rsp)
	movb	812(%rbx), %cl
	movb	%cl, 4108(%rsp)
	movb	813(%rbx), %cl
	movb	%cl, 4109(%rsp)
	movb	814(%rbx), %cl
	movb	%cl, 4110(%rsp)
	movb	815(%rbx), %cl
	movb	%cl, 4111(%rsp)
	movb	816(%rbx), %cl
	movb	%cl, 4112(%rsp)
	movb	817(%rbx), %cl
	movb	%cl, 4113(%rsp)
	movb	818(%rbx), %cl
	movb	%cl, 4114(%rsp)
	movb	819(%rbx), %cl
	movb	%cl, 4115(%rsp)
	movb	820(%rbx), %cl
	movb	%cl, 4116(%rsp)
	movb	821(%rbx), %cl
	movb	%cl, 4117(%rsp)
	movb	822(%rbx), %cl
	movb	%cl, 4118(%rsp)
	movb	823(%rbx), %cl
	movb	%cl, 4119(%rsp)
	movb	824(%rbx), %cl
	movb	%cl, 4120(%rsp)
	movb	825(%rbx), %cl
	movb	%cl, 4121(%rsp)
	movb	826(%rbx), %cl
	movb	%cl, 4122(%rsp)
	movb	827(%rbx), %cl
	movb	%cl, 4123(%rsp)
	movb	828(%rbx), %cl
	movb	%cl, 4124(%rsp)
	movb	829(%rbx), %cl
	movb	%cl, 4125(%rsp)
	movb	830(%rbx), %cl
	movb	%cl, 4126(%rsp)
	movb	831(%rbx), %cl
	movb	%cl, 4127(%rsp)
	movb	832(%rbx), %cl
	movb	%cl, 4128(%rsp)
	movb	833(%rbx), %cl
	movb	%cl, 4129(%rsp)
	movb	834(%rbx), %cl
	movb	%cl, 4130(%rsp)
	movb	835(%rbx), %cl
	movb	%cl, 4131(%rsp)
	movb	836(%rbx), %cl
	movb	%cl, 4132(%rsp)
	movb	837(%rbx), %cl
	movb	%cl, 4133(%rsp)
	movb	838(%rbx), %cl
	movb	%cl, 4134(%rsp)
	movb	839(%rbx), %cl
	movb	%cl, 4135(%rsp)
	movb	840(%rbx), %cl
	movb	%cl, 4136(%rsp)
	movb	841(%rbx), %cl
	movb	%cl, 4137(%rsp)
	movb	842(%rbx), %cl
	movb	%cl, 4138(%rsp)
	movb	843(%rbx), %cl
	movb	%cl, 4139(%rsp)
	movb	844(%rbx), %cl
	movb	%cl, 4140(%rsp)
	movb	845(%rbx), %cl
	movb	%cl, 4141(%rsp)
	movb	846(%rbx), %cl
	movb	%cl, 4142(%rsp)
	movb	847(%rbx), %cl
	movb	%cl, 4143(%rsp)
	movb	848(%rbx), %cl
	movb	%cl, 4144(%rsp)
	movb	849(%rbx), %cl
	movb	%cl, 4145(%rsp)
	movb	850(%rbx), %cl
	movb	%cl, 4146(%rsp)
	movb	851(%rbx), %cl
	movb	%cl, 4147(%rsp)
	movb	852(%rbx), %cl
	movb	%cl, 4148(%rsp)
	movb	853(%rbx), %cl
	movb	%cl, 4149(%rsp)
	movb	854(%rbx), %cl
	movb	%cl, 4150(%rsp)
	movb	855(%rbx), %cl
	movb	%cl, 4151(%rsp)
	movb	856(%rbx), %cl
	movb	%cl, 4152(%rsp)
	movb	857(%rbx), %cl
	movb	%cl, 4153(%rsp)
	movb	858(%rbx), %cl
	movb	%cl, 4154(%rsp)
	movb	859(%rbx), %cl
	movb	%cl, 4155(%rsp)
	movb	860(%rbx), %cl
	movb	%cl, 4156(%rsp)
	movb	861(%rbx), %cl
	movb	%cl, 4157(%rsp)
	movb	862(%rbx), %cl
	movb	%cl, 4158(%rsp)
	movb	863(%rbx), %cl
	movb	%cl, 4159(%rsp)
	movb	864(%rbx), %cl
	movb	%cl, 4160(%rsp)
	movb	865(%rbx), %cl
	movb	%cl, 4161(%rsp)
	movb	866(%rbx), %cl
	movb	%cl, 4162(%rsp)
	movb	867(%rbx), %cl
	movb	%cl, 4163(%rsp)
	movb	868(%rbx), %cl
	movb	%cl, 4164(%rsp)
	movb	869(%rbx), %cl
	movb	%cl, 4165(%rsp)
	movb	870(%rbx), %cl
	movb	%cl, 4166(%rsp)
	movb	871(%rbx), %cl
	movb	%cl, 4167(%rsp)
	movb	872(%rbx), %cl
	movb	%cl, 4168(%rsp)
	movb	873(%rbx), %cl
	movb	%cl, 4169(%rsp)
	movb	874(%rbx), %cl
	movb	%cl, 4170(%rsp)
	movb	875(%rbx), %cl
	movb	%cl, 4171(%rsp)
	movb	876(%rbx), %cl
	movb	%cl, 4172(%rsp)
	movb	877(%rbx), %cl
	movb	%cl, 4173(%rsp)
	movb	878(%rbx), %cl
	movb	%cl, 4174(%rsp)
	movb	879(%rbx), %cl
	movb	%cl, 4175(%rsp)
	movb	880(%rbx), %cl
	movb	%cl, 4176(%rsp)
	movb	881(%rbx), %cl
	movb	%cl, 4177(%rsp)
	movb	882(%rbx), %cl
	movb	%cl, 4178(%rsp)
	movb	883(%rbx), %cl
	movb	%cl, 4179(%rsp)
	movb	884(%rbx), %cl
	movb	%cl, 4180(%rsp)
	movb	885(%rbx), %cl
	movb	%cl, 4181(%rsp)
	movb	886(%rbx), %cl
	movb	%cl, 4182(%rsp)
	movb	887(%rbx), %cl
	movb	%cl, 4183(%rsp)
	movb	888(%rbx), %cl
	movb	%cl, 4184(%rsp)
	movb	889(%rbx), %cl
	movb	%cl, 4185(%rsp)
	movb	890(%rbx), %cl
	movb	%cl, 4186(%rsp)
	movb	891(%rbx), %cl
	movb	%cl, 4187(%rsp)
	movb	892(%rbx), %cl
	movb	%cl, 4188(%rsp)
	movb	893(%rbx), %cl
	movb	%cl, 4189(%rsp)
	movb	894(%rbx), %cl
	movb	%cl, 4190(%rsp)
	movb	895(%rbx), %cl
	movb	%cl, 4191(%rsp)
	movb	896(%rbx), %cl
	movb	%cl, 4192(%rsp)
	movb	897(%rbx), %cl
	movb	%cl, 4193(%rsp)
	movb	898(%rbx), %cl
	movb	%cl, 4194(%rsp)
	movb	899(%rbx), %cl
	movb	%cl, 4195(%rsp)
	movb	900(%rbx), %cl
	movb	%cl, 4196(%rsp)
	movb	901(%rbx), %cl
	movb	%cl, 4197(%rsp)
	movb	902(%rbx), %cl
	movb	%cl, 4198(%rsp)
	movb	903(%rbx), %cl
	movb	%cl, 4199(%rsp)
	movb	904(%rbx), %cl
	movb	%cl, 4200(%rsp)
	movb	905(%rbx), %cl
	movb	%cl, 4201(%rsp)
	movb	906(%rbx), %cl
	movb	%cl, 4202(%rsp)
	movb	907(%rbx), %cl
	movb	%cl, 4203(%rsp)
	movb	908(%rbx), %cl
	movb	%cl, 4204(%rsp)
	movb	909(%rbx), %cl
	movb	%cl, 4205(%rsp)
	movb	910(%rbx), %cl
	movb	%cl, 4206(%rsp)
	movb	911(%rbx), %cl
	movb	%cl, 4207(%rsp)
	movb	912(%rbx), %cl
	movb	%cl, 4208(%rsp)
	movb	913(%rbx), %cl
	movb	%cl, 4209(%rsp)
	movb	914(%rbx), %cl
	movb	%cl, 4210(%rsp)
	movb	915(%rbx), %cl
	movb	%cl, 4211(%rsp)
	movb	916(%rbx), %cl
	movb	%cl, 4212(%rsp)
	movb	917(%rbx), %cl
	movb	%cl, 4213(%rsp)
	movb	918(%rbx), %cl
	movb	%cl, 4214(%rsp)
	movb	919(%rbx), %cl
	movb	%cl, 4215(%rsp)
	movb	920(%rbx), %cl
	movb	%cl, 4216(%rsp)
	movb	921(%rbx), %cl
	movb	%cl, 4217(%rsp)
	movb	922(%rbx), %cl
	movb	%cl, 4218(%rsp)
	movb	923(%rbx), %cl
	movb	%cl, 4219(%rsp)
	movb	924(%rbx), %cl
	movb	%cl, 4220(%rsp)
	movb	925(%rbx), %cl
	movb	%cl, 4221(%rsp)
	movb	926(%rbx), %cl
	movb	%cl, 4222(%rsp)
	movb	927(%rbx), %cl
	movb	%cl, 4223(%rsp)
	movb	928(%rbx), %cl
	movb	%cl, 4224(%rsp)
	movb	929(%rbx), %cl
	movb	%cl, 4225(%rsp)
	movb	930(%rbx), %cl
	movb	%cl, 4226(%rsp)
	movb	931(%rbx), %cl
	movb	%cl, 4227(%rsp)
	movb	932(%rbx), %cl
	movb	%cl, 4228(%rsp)
	movb	933(%rbx), %cl
	movb	%cl, 4229(%rsp)
	movb	934(%rbx), %cl
	movb	%cl, 4230(%rsp)
	movb	935(%rbx), %cl
	movb	%cl, 4231(%rsp)
	movb	936(%rbx), %cl
	movb	%cl, 4232(%rsp)
	movb	937(%rbx), %cl
	movb	%cl, 4233(%rsp)
	movb	938(%rbx), %cl
	movb	%cl, 4234(%rsp)
	movb	939(%rbx), %cl
	movb	%cl, 4235(%rsp)
	movb	940(%rbx), %cl
	movb	%cl, 4236(%rsp)
	movb	941(%rbx), %cl
	movb	%cl, 4237(%rsp)
	movb	942(%rbx), %cl
	movb	%cl, 4238(%rsp)
	movb	943(%rbx), %cl
	movb	%cl, 4239(%rsp)
	movb	944(%rbx), %cl
	movb	%cl, 4240(%rsp)
	movb	945(%rbx), %cl
	movb	%cl, 4241(%rsp)
	movb	946(%rbx), %cl
	movb	%cl, 4242(%rsp)
	movb	947(%rbx), %cl
	movb	%cl, 4243(%rsp)
	movb	948(%rbx), %cl
	movb	%cl, 4244(%rsp)
	movb	949(%rbx), %cl
	movb	%cl, 4245(%rsp)
	movb	950(%rbx), %cl
	movb	%cl, 4246(%rsp)
	movb	951(%rbx), %cl
	movb	%cl, 4247(%rsp)
	movb	952(%rbx), %cl
	movb	%cl, 4248(%rsp)
	movb	953(%rbx), %cl
	movb	%cl, 4249(%rsp)
	movb	954(%rbx), %cl
	movb	%cl, 4250(%rsp)
	movb	955(%rbx), %cl
	movb	%cl, 4251(%rsp)
	movb	956(%rbx), %cl
	movb	%cl, 4252(%rsp)
	movb	957(%rbx), %cl
	movb	%cl, 4253(%rsp)
	movb	958(%rbx), %cl
	movb	%cl, 4254(%rsp)
	movb	959(%rbx), %cl
	movb	%cl, 4255(%rsp)
	movb	960(%rbx), %cl
	movb	%cl, 4256(%rsp)
	movb	961(%rbx), %cl
	movb	%cl, 4257(%rsp)
	movb	962(%rbx), %cl
	movb	%cl, 4258(%rsp)
	movb	963(%rbx), %cl
	movb	%cl, 4259(%rsp)
	movb	964(%rbx), %cl
	movb	%cl, 4260(%rsp)
	movb	965(%rbx), %cl
	movb	%cl, 4261(%rsp)
	movb	966(%rbx), %cl
	movb	%cl, 4262(%rsp)
	movb	967(%rbx), %cl
	movb	%cl, 4263(%rsp)
	movb	968(%rbx), %cl
	movb	%cl, 4264(%rsp)
	movb	969(%rbx), %cl
	movb	%cl, 4265(%rsp)
	movb	970(%rbx), %cl
	movb	%cl, 4266(%rsp)
	movb	971(%rbx), %cl
	movb	%cl, 4267(%rsp)
	movb	972(%rbx), %cl
	movb	%cl, 4268(%rsp)
	movb	973(%rbx), %cl
	movb	%cl, 4269(%rsp)
	movb	974(%rbx), %cl
	movb	%cl, 4270(%rsp)
	movb	975(%rbx), %cl
	movb	%cl, 4271(%rsp)
	movb	976(%rbx), %cl
	movb	%cl, 4272(%rsp)
	movb	977(%rbx), %cl
	movb	%cl, 4273(%rsp)
	movb	978(%rbx), %cl
	movb	%cl, 4274(%rsp)
	movb	979(%rbx), %cl
	movb	%cl, 4275(%rsp)
	movb	980(%rbx), %cl
	movb	%cl, 4276(%rsp)
	movb	981(%rbx), %cl
	movb	%cl, 4277(%rsp)
	movb	982(%rbx), %cl
	movb	%cl, 4278(%rsp)
	movb	983(%rbx), %cl
	movb	%cl, 4279(%rsp)
	movb	984(%rbx), %cl
	movb	%cl, 4280(%rsp)
	movb	985(%rbx), %cl
	movb	%cl, 4281(%rsp)
	movb	986(%rbx), %cl
	movb	%cl, 4282(%rsp)
	movb	987(%rbx), %cl
	movb	%cl, 4283(%rsp)
	movb	988(%rbx), %cl
	movb	%cl, 4284(%rsp)
	movb	989(%rbx), %cl
	movb	%cl, 4285(%rsp)
	movb	990(%rbx), %cl
	movb	%cl, 4286(%rsp)
	movb	991(%rbx), %cl
	movb	%cl, 4287(%rsp)
	movb	992(%rbx), %cl
	movb	%cl, 4288(%rsp)
	movb	993(%rbx), %cl
	movb	%cl, 4289(%rsp)
	movb	994(%rbx), %cl
	movb	%cl, 4290(%rsp)
	movb	995(%rbx), %cl
	movb	%cl, 4291(%rsp)
	movb	996(%rbx), %cl
	movb	%cl, 4292(%rsp)
	movb	997(%rbx), %cl
	movb	%cl, 4293(%rsp)
	movb	998(%rbx), %cl
	movb	%cl, 4294(%rsp)
	movb	999(%rbx), %cl
	movb	%cl, 4295(%rsp)
	movb	1000(%rbx), %cl
	movb	%cl, 4296(%rsp)
	movb	1001(%rbx), %cl
	movb	%cl, 4297(%rsp)
	movb	1002(%rbx), %cl
	movb	%cl, 4298(%rsp)
	movb	1003(%rbx), %cl
	movb	%cl, 4299(%rsp)
	movb	1004(%rbx), %cl
	movb	%cl, 4300(%rsp)
	movb	1005(%rbx), %cl
	movb	%cl, 4301(%rsp)
	movb	1006(%rbx), %cl
	movb	%cl, 4302(%rsp)
	movb	1007(%rbx), %cl
	movb	%cl, 4303(%rsp)
	movb	1008(%rbx), %cl
	movb	%cl, 4304(%rsp)
	movb	1009(%rbx), %cl
	movb	%cl, 4305(%rsp)
	movb	1010(%rbx), %cl
	movb	%cl, 4306(%rsp)
	movb	1011(%rbx), %cl
	movb	%cl, 4307(%rsp)
	movb	1012(%rbx), %cl
	movb	%cl, 4308(%rsp)
	movb	1013(%rbx), %cl
	movb	%cl, 4309(%rsp)
	movb	1014(%rbx), %cl
	movb	%cl, 4310(%rsp)
	movb	1015(%rbx), %cl
	movb	%cl, 4311(%rsp)
	movb	1016(%rbx), %cl
	movb	%cl, 4312(%rsp)
	movb	1017(%rbx), %cl
	movb	%cl, 4313(%rsp)
	movb	1018(%rbx), %cl
	movb	%cl, 4314(%rsp)
	movb	1019(%rbx), %cl
	movb	%cl, 4315(%rsp)
	movb	1020(%rbx), %cl
	movb	%cl, 4316(%rsp)
	movb	1021(%rbx), %cl
	movb	%cl, 4317(%rsp)
	movb	1022(%rbx), %cl
	movb	%cl, 4318(%rsp)
	movb	1023(%rbx), %cl
	movb	%cl, 4319(%rsp)
	movb	1024(%rbx), %cl
	movb	%cl, 4320(%rsp)
	movb	1025(%rbx), %cl
	movb	%cl, 4321(%rsp)
	movb	1026(%rbx), %cl
	movb	%cl, 4322(%rsp)
	movb	1027(%rbx), %cl
	movb	%cl, 4323(%rsp)
	movb	1028(%rbx), %cl
	movb	%cl, 4324(%rsp)
	movb	1029(%rbx), %cl
	movb	%cl, 4325(%rsp)
	movb	1030(%rbx), %cl
	movb	%cl, 4326(%rsp)
	movb	1031(%rbx), %cl
	movb	%cl, 4327(%rsp)
	movb	1032(%rbx), %cl
	movb	%cl, 4328(%rsp)
	movb	1033(%rbx), %cl
	movb	%cl, 4329(%rsp)
	movb	1034(%rbx), %cl
	movb	%cl, 4330(%rsp)
	movb	1035(%rbx), %cl
	movb	%cl, 4331(%rsp)
	movb	1036(%rbx), %cl
	movb	%cl, 4332(%rsp)
	movb	1037(%rbx), %cl
	movb	%cl, 4333(%rsp)
	movb	1038(%rbx), %cl
	movb	%cl, 4334(%rsp)
	movb	1039(%rbx), %cl
	movb	%cl, 4335(%rsp)
	movb	1040(%rbx), %cl
	movb	%cl, 4336(%rsp)
	movb	1041(%rbx), %cl
	movb	%cl, 4337(%rsp)
	movb	1042(%rbx), %cl
	movb	%cl, 4338(%rsp)
	movb	1043(%rbx), %cl
	movb	%cl, 4339(%rsp)
	movb	1044(%rbx), %cl
	movb	%cl, 4340(%rsp)
	movb	1045(%rbx), %cl
	movb	%cl, 4341(%rsp)
	movb	1046(%rbx), %cl
	movb	%cl, 4342(%rsp)
	movb	1047(%rbx), %cl
	movb	%cl, 4343(%rsp)
	movb	1048(%rbx), %cl
	movb	%cl, 4344(%rsp)
	movb	1049(%rbx), %cl
	movb	%cl, 4345(%rsp)
	movb	1050(%rbx), %cl
	movb	%cl, 4346(%rsp)
	movb	1051(%rbx), %cl
	movb	%cl, 4347(%rsp)
	movb	1052(%rbx), %cl
	movb	%cl, 4348(%rsp)
	movb	1053(%rbx), %cl
	movb	%cl, 4349(%rsp)
	movb	1054(%rbx), %cl
	movb	%cl, 4350(%rsp)
	movb	1055(%rbx), %cl
	movb	%cl, 4351(%rsp)
	movb	1056(%rbx), %cl
	movb	%cl, 4352(%rsp)
	movb	1057(%rbx), %cl
	movb	%cl, 4353(%rsp)
	movb	1058(%rbx), %cl
	movb	%cl, 4354(%rsp)
	movb	1059(%rbx), %cl
	movb	%cl, 4355(%rsp)
	movb	1060(%rbx), %cl
	movb	%cl, 4356(%rsp)
	movb	1061(%rbx), %cl
	movb	%cl, 4357(%rsp)
	movb	1062(%rbx), %cl
	movb	%cl, 4358(%rsp)
	movb	1063(%rbx), %cl
	movb	%cl, 4359(%rsp)
	movb	1064(%rbx), %cl
	movb	%cl, 4360(%rsp)
	movb	1065(%rbx), %cl
	movb	%cl, 4361(%rsp)
	movb	1066(%rbx), %cl
	movb	%cl, 4362(%rsp)
	movb	1067(%rbx), %cl
	movb	%cl, 4363(%rsp)
	movb	1068(%rbx), %cl
	movb	%cl, 4364(%rsp)
	movb	1069(%rbx), %cl
	movb	%cl, 4365(%rsp)
	movb	1070(%rbx), %cl
	movb	%cl, 4366(%rsp)
	movb	1071(%rbx), %cl
	movb	%cl, 4367(%rsp)
	movb	1072(%rbx), %cl
	movb	%cl, 4368(%rsp)
	movb	1073(%rbx), %cl
	movb	%cl, 4369(%rsp)
	movb	1074(%rbx), %cl
	movb	%cl, 4370(%rsp)
	movb	1075(%rbx), %cl
	movb	%cl, 4371(%rsp)
	movb	1076(%rbx), %cl
	movb	%cl, 4372(%rsp)
	movb	1077(%rbx), %cl
	movb	%cl, 4373(%rsp)
	movb	1078(%rbx), %cl
	movb	%cl, 4374(%rsp)
	movb	1079(%rbx), %cl
	movb	%cl, 4375(%rsp)
	movb	1080(%rbx), %cl
	movb	%cl, 4376(%rsp)
	movb	1081(%rbx), %cl
	movb	%cl, 4377(%rsp)
	movb	1082(%rbx), %cl
	movb	%cl, 4378(%rsp)
	movb	1083(%rbx), %cl
	movb	%cl, 4379(%rsp)
	movb	1084(%rbx), %cl
	movb	%cl, 4380(%rsp)
	movb	1085(%rbx), %cl
	movb	%cl, 4381(%rsp)
	movb	1086(%rbx), %cl
	movb	%cl, 4382(%rsp)
	movb	1087(%rbx), %cl
	movb	%cl, 4383(%rsp)
	movq	%mm1, %rsi
	leaq	3264(%rsp), %rbp
	call	L_shake256_A32__A1120$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_dec$1:
	leaq	64(%rsp), %rcx
	negq	%rax
	movq	%rax, 15168(%rsp)
	vpbroadcastq	15168(%rsp), %ymm0
	vmovdqu	(%rcx), %ymm3
	vmovdqu	(%rsi), %ymm1
	vpblendvb	%ymm0, %ymm1, %ymm3, %ymm3
	vmovdqu	%ymm3, (%rsi)
	xorl	%eax, %eax
	movq	15176(%rsp), %rbx
	movq	15184(%rsp), %rbp
	movq	15192(%rsp), %r12
	movq	15200(%rsp), %r13
	movq	15208(%rsp), %r14
	movq	15216(%rsp), %r15
	movq	15224(%rsp), %rsp
	ret
	.type	jade_kem_mlkem_mlkem768_amd64_avx2_enc, %function
jade_kem_mlkem_mlkem768_amd64_avx2_enc:
	movq	%rsp, %rax
	leaq	-13016(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 12960(%rsp)
	movq	%rbp, 12968(%rsp)
	movq	%r12, 12976(%rsp)
	movq	%r13, 12984(%rsp)
	movq	%r14, 12992(%rsp)
	movq	%r15, 13000(%rsp)
	movq	%rax, 13008(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movq	%rdx, %rbp
	leaq	12928(%rsp), %rdi
	movq	$32, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%rbp, %mm0
	movq	%r12, %mm1
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%rsp)
	leaq	32(%rsp), %rsi
	call	L_sha3_256A_A1184$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$45:
	leaq	64(%rsp), %rsi
	movq	%rsp, %rbp
	call	L_sha3_512A_A64$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$44:
	movq	%mm0, %rbp
	movq	%rsp, %rax
	leaq	96(%rsp), %rdi
	movq	%rbx, %mm2
	movq	%rbp, %rsi
	leaq	2176(%rsp), %rcx
	movq	%rsi, %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$43:
	leaq	2688(%rsp), %rcx
	leaq	384(%rsi), %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$42:
	leaq	3200(%rsp), %rcx
	leaq	768(%rsi), %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$41:
	movq	1152(%rbp), %rcx
	movq	%rcx, 12928(%rsp)
	movq	1160(%rbp), %rcx
	movq	%rcx, 12936(%rsp)
	movq	1168(%rbp), %rcx
	movq	%rcx, 12944(%rsp)
	movq	1176(%rbp), %rcx
	movq	%rcx, 12952(%rsp)
	leaq	128(%rsp), %rcx
	call	L_i_poly_frommsg$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$40:
	movq	$1, %rcx
	leaq	8320(%rsp), %rax
	leaq	12928(%rsp), %rdx
	leaq	-2200(%rsp), %rsp
	call	L_gen_matrix_avx2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$39:
	leaq	2200(%rsp), %rsp
	movb	$0, %r9b
	leaq	5248(%rsp), %rax
	leaq	5760(%rsp), %rcx
	leaq	6272(%rsp), %rdx
	leaq	3712(%rsp), %r8
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$38:
	leaq	600(%rsp), %rsp
	movb	$4, %r9b
	leaq	4224(%rsp), %rax
	leaq	4736(%rsp), %rcx
	leaq	640(%rsp), %rdx
	leaq	6784(%rsp), %r8
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$37:
	leaq	600(%rsp), %rsp
	leaq	5248(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$36:
	leaq	5760(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$35:
	leaq	6272(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$34:
	leaq	6784(%rsp), %rcx
	leaq	8320(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$33:
	leaq	1152(%rsp), %rcx
	leaq	8832(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$32:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$31:
	leaq	1152(%rsp), %rcx
	leaq	9344(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$30:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$29:
	leaq	7296(%rsp), %rcx
	leaq	9856(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$28:
	leaq	1152(%rsp), %rcx
	leaq	10368(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$27:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$26:
	leaq	1152(%rsp), %rcx
	leaq	10880(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$25:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$24:
	leaq	7808(%rsp), %rcx
	leaq	11392(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$23:
	leaq	1152(%rsp), %rcx
	leaq	11904(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$22:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$21:
	leaq	1152(%rsp), %rcx
	leaq	12416(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$20:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$19:
	leaq	1152(%rsp), %rcx
	leaq	2176(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$18:
	leaq	1664(%rsp), %rcx
	leaq	2688(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$17:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$16:
	leaq	1664(%rsp), %rcx
	leaq	3200(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$15:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$14:
	leaq	6784(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$13:
	leaq	7296(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$12:
	leaq	7808(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$11:
	leaq	1152(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$10:
	leaq	6784(%rsp), %rcx
	leaq	3712(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$9:
	leaq	7296(%rsp), %rcx
	leaq	4224(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$8:
	leaq	7808(%rsp), %rcx
	leaq	4736(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$7:
	leaq	1152(%rsp), %rcx
	leaq	640(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$6:
	leaq	1152(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$5:
	leaq	6784(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	7296(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	7808(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	1152(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	movq	%mm2, %rbx
	movq	%rbx, %rax
	leaq	6784(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$4:
	leaq	7296(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$3:
	leaq	7808(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$2:
	leaq	glob_data + 928(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 4972(%rip), %ymm2
	vpbroadcastw	glob_data + 4970(%rip), %ymm3
	vpbroadcastw	glob_data + 4968(%rip), %ymm4
	vpbroadcastq	glob_data + 4744(%rip), %ymm5
	vpbroadcastq	glob_data + 4736(%rip), %ymm6
	vmovdqu	glob_data + 128(%rip), %ymm7
	vmovdqu	6784(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, (%rax)
	vpextrd	$0, %xmm8, 16(%rax)
	vmovdqu	6816(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 20(%rax)
	vpextrd	$0, %xmm8, 36(%rax)
	vmovdqu	6848(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 40(%rax)
	vpextrd	$0, %xmm8, 56(%rax)
	vmovdqu	6880(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 60(%rax)
	vpextrd	$0, %xmm8, 76(%rax)
	vmovdqu	6912(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 80(%rax)
	vpextrd	$0, %xmm8, 96(%rax)
	vmovdqu	6944(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 100(%rax)
	vpextrd	$0, %xmm8, 116(%rax)
	vmovdqu	6976(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 120(%rax)
	vpextrd	$0, %xmm8, 136(%rax)
	vmovdqu	7008(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 140(%rax)
	vpextrd	$0, %xmm8, 156(%rax)
	vmovdqu	7040(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 160(%rax)
	vpextrd	$0, %xmm8, 176(%rax)
	vmovdqu	7072(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 180(%rax)
	vpextrd	$0, %xmm8, 196(%rax)
	vmovdqu	7104(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 200(%rax)
	vpextrd	$0, %xmm8, 216(%rax)
	vmovdqu	7136(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 220(%rax)
	vpextrd	$0, %xmm8, 236(%rax)
	vmovdqu	7168(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 240(%rax)
	vpextrd	$0, %xmm8, 256(%rax)
	vmovdqu	7200(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 260(%rax)
	vpextrd	$0, %xmm8, 276(%rax)
	vmovdqu	7232(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 280(%rax)
	vpextrd	$0, %xmm8, 296(%rax)
	vmovdqu	7264(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 300(%rax)
	vpextrd	$0, %xmm8, 316(%rax)
	vmovdqu	7296(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 320(%rax)
	vpextrd	$0, %xmm8, 336(%rax)
	vmovdqu	7328(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 340(%rax)
	vpextrd	$0, %xmm8, 356(%rax)
	vmovdqu	7360(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 360(%rax)
	vpextrd	$0, %xmm8, 376(%rax)
	vmovdqu	7392(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 380(%rax)
	vpextrd	$0, %xmm8, 396(%rax)
	vmovdqu	7424(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 400(%rax)
	vpextrd	$0, %xmm8, 416(%rax)
	vmovdqu	7456(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 420(%rax)
	vpextrd	$0, %xmm8, 436(%rax)
	vmovdqu	7488(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 440(%rax)
	vpextrd	$0, %xmm8, 456(%rax)
	vmovdqu	7520(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 460(%rax)
	vpextrd	$0, %xmm8, 476(%rax)
	vmovdqu	7552(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 480(%rax)
	vpextrd	$0, %xmm8, 496(%rax)
	vmovdqu	7584(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 500(%rax)
	vpextrd	$0, %xmm8, 516(%rax)
	vmovdqu	7616(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 520(%rax)
	vpextrd	$0, %xmm8, 536(%rax)
	vmovdqu	7648(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 540(%rax)
	vpextrd	$0, %xmm8, 556(%rax)
	vmovdqu	7680(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 560(%rax)
	vpextrd	$0, %xmm8, 576(%rax)
	vmovdqu	7712(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 580(%rax)
	vpextrd	$0, %xmm8, 596(%rax)
	vmovdqu	7744(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 600(%rax)
	vpextrd	$0, %xmm8, 616(%rax)
	vmovdqu	7776(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 620(%rax)
	vpextrd	$0, %xmm8, 636(%rax)
	vmovdqu	7808(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 640(%rax)
	vpextrd	$0, %xmm8, 656(%rax)
	vmovdqu	7840(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 660(%rax)
	vpextrd	$0, %xmm8, 676(%rax)
	vmovdqu	7872(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 680(%rax)
	vpextrd	$0, %xmm8, 696(%rax)
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 700(%rax)
	vpextrd	$0, %xmm8, 716(%rax)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 720(%rax)
	vpextrd	$0, %xmm8, 736(%rax)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 740(%rax)
	vpextrd	$0, %xmm8, 756(%rax)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 760(%rax)
	vpextrd	$0, %xmm8, 776(%rax)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 780(%rax)
	vpextrd	$0, %xmm8, 796(%rax)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 800(%rax)
	vpextrd	$0, %xmm8, 816(%rax)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 820(%rax)
	vpextrd	$0, %xmm8, 836(%rax)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 840(%rax)
	vpextrd	$0, %xmm8, 856(%rax)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 860(%rax)
	vpextrd	$0, %xmm8, 876(%rax)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 880(%rax)
	vpextrd	$0, %xmm8, 896(%rax)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 900(%rax)
	vpextrd	$0, %xmm8, 916(%rax)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 920(%rax)
	vpextrd	$0, %xmm8, 936(%rax)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm4
	vpmaddwd	%ymm5, %ymm4, %ymm4
	vpsllvd	%ymm6, %ymm4, %ymm4
	vpsrlq	$12, %ymm4, %ymm4
	vpshufb	%ymm7, %ymm4, %ymm4
	vmovdqu	%xmm4, %xmm2
	vextracti128	$1, %ymm4, %xmm3
	vpblendw	$224, %xmm3, %xmm2, %xmm2
	vmovdqu	%xmm2, 940(%rax)
	vpextrd	$0, %xmm3, 956(%rax)
	leaq	960(%rbx), %rax
	leaq	1152(%rsp), %rsi
	call	L_i_poly_compress$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc$1:
	movq	%mm1, %rsi
	movb	64(%rsp), %cl
	movb	%cl, (%rsi)
	movb	65(%rsp), %cl
	movb	%cl, 1(%rsi)
	movb	66(%rsp), %cl
	movb	%cl, 2(%rsi)
	movb	67(%rsp), %cl
	movb	%cl, 3(%rsi)
	movb	68(%rsp), %cl
	movb	%cl, 4(%rsi)
	movb	69(%rsp), %cl
	movb	%cl, 5(%rsi)
	movb	70(%rsp), %cl
	movb	%cl, 6(%rsi)
	movb	71(%rsp), %cl
	movb	%cl, 7(%rsi)
	movb	72(%rsp), %cl
	movb	%cl, 8(%rsi)
	movb	73(%rsp), %cl
	movb	%cl, 9(%rsi)
	movb	74(%rsp), %cl
	movb	%cl, 10(%rsi)
	movb	75(%rsp), %cl
	movb	%cl, 11(%rsi)
	movb	76(%rsp), %cl
	movb	%cl, 12(%rsi)
	movb	77(%rsp), %cl
	movb	%cl, 13(%rsi)
	movb	78(%rsp), %cl
	movb	%cl, 14(%rsi)
	movb	79(%rsp), %cl
	movb	%cl, 15(%rsi)
	movb	80(%rsp), %cl
	movb	%cl, 16(%rsi)
	movb	81(%rsp), %cl
	movb	%cl, 17(%rsi)
	movb	82(%rsp), %cl
	movb	%cl, 18(%rsi)
	movb	83(%rsp), %cl
	movb	%cl, 19(%rsi)
	movb	84(%rsp), %cl
	movb	%cl, 20(%rsi)
	movb	85(%rsp), %cl
	movb	%cl, 21(%rsi)
	movb	86(%rsp), %cl
	movb	%cl, 22(%rsi)
	movb	87(%rsp), %cl
	movb	%cl, 23(%rsi)
	movb	88(%rsp), %cl
	movb	%cl, 24(%rsi)
	movb	89(%rsp), %cl
	movb	%cl, 25(%rsi)
	movb	90(%rsp), %cl
	movb	%cl, 26(%rsi)
	movb	91(%rsp), %cl
	movb	%cl, 27(%rsi)
	movb	92(%rsp), %cl
	movb	%cl, 28(%rsi)
	movb	93(%rsp), %cl
	movb	%cl, 29(%rsi)
	movb	94(%rsp), %cl
	movb	%cl, 30(%rsi)
	movb	95(%rsp), %cl
	movb	%cl, 31(%rsi)
	xorl	%eax, %eax
	movq	12960(%rsp), %rbx
	movq	12968(%rsp), %rbp
	movq	12976(%rsp), %r12
	movq	12984(%rsp), %r13
	movq	12992(%rsp), %r14
	movq	13000(%rsp), %r15
	movq	13008(%rsp), %rsp
	ret
	.type	jade_kem_mlkem_mlkem768_amd64_avx2_keypair, %function
jade_kem_mlkem_mlkem768_amd64_avx2_keypair:
	movq	%rsp, %rax
	leaq	-10016(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 9960(%rsp)
	movq	%rbp, 9968(%rsp)
	movq	%r12, 9976(%rsp)
	movq	%r13, 9984(%rsp)
	movq	%r14, 9992(%rsp)
	movq	%r15, 10000(%rsp)
	movq	%rax, 10008(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdi, %rbp
	movq	%rsi, %rbx
	leaq	9896(%rsp), %rdi
	movq	$64, %rsi
	call	__jasmin_syscall_randombytes__
	movq	%rax, %mm1
	movq	%rbx, %rdx
	movq	%rbx, %mm2
	movq	%rbp, %mm3
	movq	%rdx, %mm4
	movq	(%rax), %rcx
	movq	%rcx, 9824(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 9832(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 9840(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 9848(%rsp)
	movb	$3, 9856(%rsp)
	movq	%rsp, %rsi
	leaq	9824(%rsp), %rbp
	call	L_sha3_512A_A33$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$38:
	movq	(%rsp), %rcx
	movq	%rcx, 9792(%rsp)
	movq	32(%rsp), %rcx
	movq	%rcx, 9864(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 9800(%rsp)
	movq	40(%rsp), %rcx
	movq	%rcx, 9872(%rsp)
	movq	16(%rsp), %rcx
	movq	%rcx, 9808(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 9880(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, 9816(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 9888(%rsp)
	movq	$0, %rcx
	leaq	5184(%rsp), %rax
	leaq	9792(%rsp), %rdx
	leaq	-2200(%rsp), %rsp
	call	L_gen_matrix_avx2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$37:
	leaq	2200(%rsp), %rsp
	movb	$0, %r9b
	leaq	2112(%rsp), %rax
	leaq	2624(%rsp), %rcx
	leaq	3136(%rsp), %rdx
	leaq	576(%rsp), %r8
	leaq	9864(%rsp), %rdi
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$36:
	leaq	600(%rsp), %rsp
	movb	$4, %r9b
	leaq	1088(%rsp), %rax
	leaq	1600(%rsp), %rcx
	leaq	3648(%rsp), %rdx
	leaq	4160(%rsp), %r8
	leaq	9864(%rsp), %rdi
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$35:
	leaq	600(%rsp), %rsp
	leaq	2112(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$34:
	leaq	2624(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$33:
	leaq	3136(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$32:
	leaq	576(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$31:
	leaq	1088(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$30:
	leaq	1600(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$29:
	leaq	3648(%rsp), %rcx
	leaq	5184(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$28:
	leaq	64(%rsp), %rcx
	leaq	5696(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$27:
	leaq	3648(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$26:
	leaq	64(%rsp), %rcx
	leaq	6208(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$25:
	leaq	3648(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$24:
	leaq	3648(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$23:
	leaq	4160(%rsp), %rcx
	leaq	6720(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$22:
	leaq	64(%rsp), %rcx
	leaq	7232(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$21:
	leaq	4160(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$20:
	leaq	64(%rsp), %rcx
	leaq	7744(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$19:
	leaq	4160(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$18:
	leaq	4160(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$17:
	leaq	4672(%rsp), %rcx
	leaq	8256(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$16:
	leaq	64(%rsp), %rcx
	leaq	8768(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$15:
	leaq	4672(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$14:
	leaq	64(%rsp), %rcx
	leaq	9280(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$13:
	leaq	4672(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$12:
	leaq	4672(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$11:
	leaq	3648(%rsp), %rcx
	leaq	576(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$10:
	leaq	4160(%rsp), %rcx
	leaq	1088(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$9:
	leaq	4672(%rsp), %rcx
	leaq	1600(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$8:
	leaq	3648(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	4160(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	4672(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	movq	%mm3, %rbp
	movq	%mm4, %rax
	movq	%rax, %rcx
	leaq	2112(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$7:
	leaq	384(%rax), %rcx
	leaq	2624(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$6:
	leaq	768(%rax), %rcx
	leaq	3136(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$5:
	movq	%rbp, %rax
	movq	%rax, %rcx
	leaq	3648(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$4:
	leaq	384(%rax), %rcx
	leaq	4160(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$3:
	leaq	768(%rax), %rcx
	leaq	4672(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$2:
	movq	9792(%rsp), %rcx
	movq	%rcx, 1152(%rbp)
	movq	9800(%rsp), %rcx
	movq	%rcx, 1160(%rbp)
	movq	9808(%rsp), %rcx
	movq	%rcx, 1168(%rbp)
	movq	9816(%rsp), %rcx
	movq	%rcx, 1176(%rbp)
	movq	%mm2, %rdx
	movq	(%rbp), %rcx
	movq	%rcx, 1152(%rdx)
	movq	8(%rbp), %rcx
	movq	%rcx, 1160(%rdx)
	movq	16(%rbp), %rcx
	movq	%rcx, 1168(%rdx)
	movq	24(%rbp), %rcx
	movq	%rcx, 1176(%rdx)
	movq	32(%rbp), %rcx
	movq	%rcx, 1184(%rdx)
	movq	40(%rbp), %rcx
	movq	%rcx, 1192(%rdx)
	movq	48(%rbp), %rcx
	movq	%rcx, 1200(%rdx)
	movq	56(%rbp), %rcx
	movq	%rcx, 1208(%rdx)
	movq	64(%rbp), %rcx
	movq	%rcx, 1216(%rdx)
	movq	72(%rbp), %rcx
	movq	%rcx, 1224(%rdx)
	movq	80(%rbp), %rcx
	movq	%rcx, 1232(%rdx)
	movq	88(%rbp), %rcx
	movq	%rcx, 1240(%rdx)
	movq	96(%rbp), %rcx
	movq	%rcx, 1248(%rdx)
	movq	104(%rbp), %rcx
	movq	%rcx, 1256(%rdx)
	movq	112(%rbp), %rcx
	movq	%rcx, 1264(%rdx)
	movq	120(%rbp), %rcx
	movq	%rcx, 1272(%rdx)
	movq	128(%rbp), %rcx
	movq	%rcx, 1280(%rdx)
	movq	136(%rbp), %rcx
	movq	%rcx, 1288(%rdx)
	movq	144(%rbp), %rcx
	movq	%rcx, 1296(%rdx)
	movq	152(%rbp), %rcx
	movq	%rcx, 1304(%rdx)
	movq	160(%rbp), %rcx
	movq	%rcx, 1312(%rdx)
	movq	168(%rbp), %rcx
	movq	%rcx, 1320(%rdx)
	movq	176(%rbp), %rcx
	movq	%rcx, 1328(%rdx)
	movq	184(%rbp), %rcx
	movq	%rcx, 1336(%rdx)
	movq	192(%rbp), %rcx
	movq	%rcx, 1344(%rdx)
	movq	200(%rbp), %rcx
	movq	%rcx, 1352(%rdx)
	movq	208(%rbp), %rcx
	movq	%rcx, 1360(%rdx)
	movq	216(%rbp), %rcx
	movq	%rcx, 1368(%rdx)
	movq	224(%rbp), %rcx
	movq	%rcx, 1376(%rdx)
	movq	232(%rbp), %rcx
	movq	%rcx, 1384(%rdx)
	movq	240(%rbp), %rcx
	movq	%rcx, 1392(%rdx)
	movq	248(%rbp), %rcx
	movq	%rcx, 1400(%rdx)
	movq	256(%rbp), %rcx
	movq	%rcx, 1408(%rdx)
	movq	264(%rbp), %rcx
	movq	%rcx, 1416(%rdx)
	movq	272(%rbp), %rcx
	movq	%rcx, 1424(%rdx)
	movq	280(%rbp), %rcx
	movq	%rcx, 1432(%rdx)
	movq	288(%rbp), %rcx
	movq	%rcx, 1440(%rdx)
	movq	296(%rbp), %rcx
	movq	%rcx, 1448(%rdx)
	movq	304(%rbp), %rcx
	movq	%rcx, 1456(%rdx)
	movq	312(%rbp), %rcx
	movq	%rcx, 1464(%rdx)
	movq	320(%rbp), %rcx
	movq	%rcx, 1472(%rdx)
	movq	328(%rbp), %rcx
	movq	%rcx, 1480(%rdx)
	movq	336(%rbp), %rcx
	movq	%rcx, 1488(%rdx)
	movq	344(%rbp), %rcx
	movq	%rcx, 1496(%rdx)
	movq	352(%rbp), %rcx
	movq	%rcx, 1504(%rdx)
	movq	360(%rbp), %rcx
	movq	%rcx, 1512(%rdx)
	movq	368(%rbp), %rcx
	movq	%rcx, 1520(%rdx)
	movq	376(%rbp), %rcx
	movq	%rcx, 1528(%rdx)
	movq	384(%rbp), %rcx
	movq	%rcx, 1536(%rdx)
	movq	392(%rbp), %rcx
	movq	%rcx, 1544(%rdx)
	movq	400(%rbp), %rcx
	movq	%rcx, 1552(%rdx)
	movq	408(%rbp), %rcx
	movq	%rcx, 1560(%rdx)
	movq	416(%rbp), %rcx
	movq	%rcx, 1568(%rdx)
	movq	424(%rbp), %rcx
	movq	%rcx, 1576(%rdx)
	movq	432(%rbp), %rcx
	movq	%rcx, 1584(%rdx)
	movq	440(%rbp), %rcx
	movq	%rcx, 1592(%rdx)
	movq	448(%rbp), %rcx
	movq	%rcx, 1600(%rdx)
	movq	456(%rbp), %rcx
	movq	%rcx, 1608(%rdx)
	movq	464(%rbp), %rcx
	movq	%rcx, 1616(%rdx)
	movq	472(%rbp), %rcx
	movq	%rcx, 1624(%rdx)
	movq	480(%rbp), %rcx
	movq	%rcx, 1632(%rdx)
	movq	488(%rbp), %rcx
	movq	%rcx, 1640(%rdx)
	movq	496(%rbp), %rcx
	movq	%rcx, 1648(%rdx)
	movq	504(%rbp), %rcx
	movq	%rcx, 1656(%rdx)
	movq	512(%rbp), %rcx
	movq	%rcx, 1664(%rdx)
	movq	520(%rbp), %rcx
	movq	%rcx, 1672(%rdx)
	movq	528(%rbp), %rcx
	movq	%rcx, 1680(%rdx)
	movq	536(%rbp), %rcx
	movq	%rcx, 1688(%rdx)
	movq	544(%rbp), %rcx
	movq	%rcx, 1696(%rdx)
	movq	552(%rbp), %rcx
	movq	%rcx, 1704(%rdx)
	movq	560(%rbp), %rcx
	movq	%rcx, 1712(%rdx)
	movq	568(%rbp), %rcx
	movq	%rcx, 1720(%rdx)
	movq	576(%rbp), %rcx
	movq	%rcx, 1728(%rdx)
	movq	584(%rbp), %rcx
	movq	%rcx, 1736(%rdx)
	movq	592(%rbp), %rcx
	movq	%rcx, 1744(%rdx)
	movq	600(%rbp), %rcx
	movq	%rcx, 1752(%rdx)
	movq	608(%rbp), %rcx
	movq	%rcx, 1760(%rdx)
	movq	616(%rbp), %rcx
	movq	%rcx, 1768(%rdx)
	movq	624(%rbp), %rcx
	movq	%rcx, 1776(%rdx)
	movq	632(%rbp), %rcx
	movq	%rcx, 1784(%rdx)
	movq	640(%rbp), %rcx
	movq	%rcx, 1792(%rdx)
	movq	648(%rbp), %rcx
	movq	%rcx, 1800(%rdx)
	movq	656(%rbp), %rcx
	movq	%rcx, 1808(%rdx)
	movq	664(%rbp), %rcx
	movq	%rcx, 1816(%rdx)
	movq	672(%rbp), %rcx
	movq	%rcx, 1824(%rdx)
	movq	680(%rbp), %rcx
	movq	%rcx, 1832(%rdx)
	movq	688(%rbp), %rcx
	movq	%rcx, 1840(%rdx)
	movq	696(%rbp), %rcx
	movq	%rcx, 1848(%rdx)
	movq	704(%rbp), %rcx
	movq	%rcx, 1856(%rdx)
	movq	712(%rbp), %rcx
	movq	%rcx, 1864(%rdx)
	movq	720(%rbp), %rcx
	movq	%rcx, 1872(%rdx)
	movq	728(%rbp), %rcx
	movq	%rcx, 1880(%rdx)
	movq	736(%rbp), %rcx
	movq	%rcx, 1888(%rdx)
	movq	744(%rbp), %rcx
	movq	%rcx, 1896(%rdx)
	movq	752(%rbp), %rcx
	movq	%rcx, 1904(%rdx)
	movq	760(%rbp), %rcx
	movq	%rcx, 1912(%rdx)
	movq	768(%rbp), %rcx
	movq	%rcx, 1920(%rdx)
	movq	776(%rbp), %rcx
	movq	%rcx, 1928(%rdx)
	movq	784(%rbp), %rcx
	movq	%rcx, 1936(%rdx)
	movq	792(%rbp), %rcx
	movq	%rcx, 1944(%rdx)
	movq	800(%rbp), %rcx
	movq	%rcx, 1952(%rdx)
	movq	808(%rbp), %rcx
	movq	%rcx, 1960(%rdx)
	movq	816(%rbp), %rcx
	movq	%rcx, 1968(%rdx)
	movq	824(%rbp), %rcx
	movq	%rcx, 1976(%rdx)
	movq	832(%rbp), %rcx
	movq	%rcx, 1984(%rdx)
	movq	840(%rbp), %rcx
	movq	%rcx, 1992(%rdx)
	movq	848(%rbp), %rcx
	movq	%rcx, 2000(%rdx)
	movq	856(%rbp), %rcx
	movq	%rcx, 2008(%rdx)
	movq	864(%rbp), %rcx
	movq	%rcx, 2016(%rdx)
	movq	872(%rbp), %rcx
	movq	%rcx, 2024(%rdx)
	movq	880(%rbp), %rcx
	movq	%rcx, 2032(%rdx)
	movq	888(%rbp), %rcx
	movq	%rcx, 2040(%rdx)
	movq	896(%rbp), %rcx
	movq	%rcx, 2048(%rdx)
	movq	904(%rbp), %rcx
	movq	%rcx, 2056(%rdx)
	movq	912(%rbp), %rcx
	movq	%rcx, 2064(%rdx)
	movq	920(%rbp), %rcx
	movq	%rcx, 2072(%rdx)
	movq	928(%rbp), %rcx
	movq	%rcx, 2080(%rdx)
	movq	936(%rbp), %rcx
	movq	%rcx, 2088(%rdx)
	movq	944(%rbp), %rcx
	movq	%rcx, 2096(%rdx)
	movq	952(%rbp), %rcx
	movq	%rcx, 2104(%rdx)
	movq	960(%rbp), %rcx
	movq	%rcx, 2112(%rdx)
	movq	968(%rbp), %rcx
	movq	%rcx, 2120(%rdx)
	movq	976(%rbp), %rcx
	movq	%rcx, 2128(%rdx)
	movq	984(%rbp), %rcx
	movq	%rcx, 2136(%rdx)
	movq	992(%rbp), %rcx
	movq	%rcx, 2144(%rdx)
	movq	1000(%rbp), %rcx
	movq	%rcx, 2152(%rdx)
	movq	1008(%rbp), %rcx
	movq	%rcx, 2160(%rdx)
	movq	1016(%rbp), %rcx
	movq	%rcx, 2168(%rdx)
	movq	1024(%rbp), %rcx
	movq	%rcx, 2176(%rdx)
	movq	1032(%rbp), %rcx
	movq	%rcx, 2184(%rdx)
	movq	1040(%rbp), %rcx
	movq	%rcx, 2192(%rdx)
	movq	1048(%rbp), %rcx
	movq	%rcx, 2200(%rdx)
	movq	1056(%rbp), %rcx
	movq	%rcx, 2208(%rdx)
	movq	1064(%rbp), %rcx
	movq	%rcx, 2216(%rdx)
	movq	1072(%rbp), %rcx
	movq	%rcx, 2224(%rdx)
	movq	1080(%rbp), %rcx
	movq	%rcx, 2232(%rdx)
	movq	1088(%rbp), %rcx
	movq	%rcx, 2240(%rdx)
	movq	1096(%rbp), %rcx
	movq	%rcx, 2248(%rdx)
	movq	1104(%rbp), %rcx
	movq	%rcx, 2256(%rdx)
	movq	1112(%rbp), %rcx
	movq	%rcx, 2264(%rdx)
	movq	1120(%rbp), %rcx
	movq	%rcx, 2272(%rdx)
	movq	1128(%rbp), %rcx
	movq	%rcx, 2280(%rdx)
	movq	1136(%rbp), %rcx
	movq	%rcx, 2288(%rdx)
	movq	1144(%rbp), %rcx
	movq	%rcx, 2296(%rdx)
	movq	1152(%rbp), %rcx
	movq	%rcx, 2304(%rdx)
	movq	1160(%rbp), %rcx
	movq	%rcx, 2312(%rdx)
	movq	1168(%rbp), %rcx
	movq	%rcx, 2320(%rdx)
	movq	1176(%rbp), %rcx
	movq	%rcx, 2328(%rdx)
	leaq	2336(%rdx), %rsi
	call	L_sha3_256A_A1184$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair$1:
	movq	%mm1, %rax
	movq	32(%rax), %rcx
	movq	%rcx, 2368(%rdx)
	movq	40(%rax), %rcx
	movq	%rcx, 2376(%rdx)
	movq	48(%rax), %rcx
	movq	%rcx, 2384(%rdx)
	movq	56(%rax), %rcx
	movq	%rcx, 2392(%rdx)
	xorl	%eax, %eax
	movq	9960(%rsp), %rbx
	movq	9968(%rsp), %rbp
	movq	9976(%rsp), %r12
	movq	9984(%rsp), %r13
	movq	9992(%rsp), %r14
	movq	10000(%rsp), %r15
	movq	10008(%rsp), %rsp
	ret
	.type	jade_kem_mlkem_mlkem768_amd64_avx2_enc_derand, %function
jade_kem_mlkem_mlkem768_amd64_avx2_enc_derand:
	movq	%rsp, %rax
	leaq	-13016(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 12960(%rsp)
	movq	%rbp, 12968(%rsp)
	movq	%r12, 12976(%rsp)
	movq	%r13, 12984(%rsp)
	movq	%r14, 12992(%rsp)
	movq	%r15, 13000(%rsp)
	movq	%rax, 13008(%rsp)
	movq	%rdi, %rbx
	lfence
	movq	$0, %rax
	movq	%rdx, %rbp
	movq	%rbp, %mm0
	movq	%rsi, %mm1
	movq	(%rcx), %rax
	movq	%rax, (%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rcx), %rax
	movq	%rax, 24(%rsp)
	leaq	32(%rsp), %rsi
	call	L_sha3_256A_A1184$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$45:
	leaq	64(%rsp), %rsi
	movq	%rsp, %rbp
	call	L_sha3_512A_A64$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$44:
	movq	%mm0, %rbp
	movq	%rsp, %rax
	leaq	96(%rsp), %rdi
	movq	%rbx, %mm2
	movq	%rbp, %rsi
	leaq	2176(%rsp), %rcx
	movq	%rsi, %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$43:
	leaq	2688(%rsp), %rcx
	leaq	384(%rsi), %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$42:
	leaq	3200(%rsp), %rcx
	leaq	768(%rsi), %r9
	call	L_i_poly_frombytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$41:
	movq	1152(%rbp), %rcx
	movq	%rcx, 12928(%rsp)
	movq	1160(%rbp), %rcx
	movq	%rcx, 12936(%rsp)
	movq	1168(%rbp), %rcx
	movq	%rcx, 12944(%rsp)
	movq	1176(%rbp), %rcx
	movq	%rcx, 12952(%rsp)
	leaq	128(%rsp), %rcx
	call	L_i_poly_frommsg$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$40:
	movq	$1, %rcx
	leaq	8320(%rsp), %rax
	leaq	12928(%rsp), %rdx
	leaq	-2200(%rsp), %rsp
	call	L_gen_matrix_avx2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$39:
	leaq	2200(%rsp), %rsp
	movb	$0, %r9b
	leaq	5248(%rsp), %rax
	leaq	5760(%rsp), %rcx
	leaq	6272(%rsp), %rdx
	leaq	3712(%rsp), %r8
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$38:
	leaq	600(%rsp), %rsp
	movb	$4, %r9b
	leaq	4224(%rsp), %rax
	leaq	4736(%rsp), %rcx
	leaq	640(%rsp), %rdx
	leaq	6784(%rsp), %r8
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$37:
	leaq	600(%rsp), %rsp
	leaq	5248(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$36:
	leaq	5760(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$35:
	leaq	6272(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$34:
	leaq	6784(%rsp), %rcx
	leaq	8320(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$33:
	leaq	1152(%rsp), %rcx
	leaq	8832(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$32:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$31:
	leaq	1152(%rsp), %rcx
	leaq	9344(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$30:
	leaq	6784(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$29:
	leaq	7296(%rsp), %rcx
	leaq	9856(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$28:
	leaq	1152(%rsp), %rcx
	leaq	10368(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$27:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$26:
	leaq	1152(%rsp), %rcx
	leaq	10880(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$25:
	leaq	7296(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$24:
	leaq	7808(%rsp), %rcx
	leaq	11392(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$23:
	leaq	1152(%rsp), %rcx
	leaq	11904(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$22:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$21:
	leaq	1152(%rsp), %rcx
	leaq	12416(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$20:
	leaq	7808(%rsp), %rcx
	leaq	1152(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$19:
	leaq	1152(%rsp), %rcx
	leaq	2176(%rsp), %rsi
	leaq	5248(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$18:
	leaq	1664(%rsp), %rcx
	leaq	2688(%rsp), %rsi
	leaq	5760(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$17:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$16:
	leaq	1664(%rsp), %rcx
	leaq	3200(%rsp), %rsi
	leaq	6272(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$15:
	leaq	1152(%rsp), %rcx
	leaq	1664(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$14:
	leaq	6784(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$13:
	leaq	7296(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$12:
	leaq	7808(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$11:
	leaq	1152(%rsp), %rcx
	call	L_poly_invntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$10:
	leaq	6784(%rsp), %rcx
	leaq	3712(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$9:
	leaq	7296(%rsp), %rcx
	leaq	4224(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$8:
	leaq	7808(%rsp), %rcx
	leaq	4736(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$7:
	leaq	1152(%rsp), %rcx
	leaq	640(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$6:
	leaq	1152(%rsp), %rcx
	leaq	128(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$5:
	leaq	6784(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	7296(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	7808(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	1152(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	movq	%mm2, %rbx
	movq	%rbx, %rax
	leaq	6784(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$4:
	leaq	7296(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$3:
	leaq	7808(%rsp), %rsi
	call	L_poly_csubq$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$2:
	leaq	glob_data + 928(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpsllw	$3, %ymm0, %ymm1
	vpbroadcastw	glob_data + 4972(%rip), %ymm2
	vpbroadcastw	glob_data + 4970(%rip), %ymm3
	vpbroadcastw	glob_data + 4968(%rip), %ymm4
	vpbroadcastq	glob_data + 4744(%rip), %ymm5
	vpbroadcastq	glob_data + 4736(%rip), %ymm6
	vmovdqu	glob_data + 128(%rip), %ymm7
	vmovdqu	6784(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, (%rax)
	vpextrd	$0, %xmm8, 16(%rax)
	vmovdqu	6816(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 20(%rax)
	vpextrd	$0, %xmm8, 36(%rax)
	vmovdqu	6848(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 40(%rax)
	vpextrd	$0, %xmm8, 56(%rax)
	vmovdqu	6880(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 60(%rax)
	vpextrd	$0, %xmm8, 76(%rax)
	vmovdqu	6912(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 80(%rax)
	vpextrd	$0, %xmm8, 96(%rax)
	vmovdqu	6944(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 100(%rax)
	vpextrd	$0, %xmm8, 116(%rax)
	vmovdqu	6976(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 120(%rax)
	vpextrd	$0, %xmm8, 136(%rax)
	vmovdqu	7008(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 140(%rax)
	vpextrd	$0, %xmm8, 156(%rax)
	vmovdqu	7040(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 160(%rax)
	vpextrd	$0, %xmm8, 176(%rax)
	vmovdqu	7072(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 180(%rax)
	vpextrd	$0, %xmm8, 196(%rax)
	vmovdqu	7104(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 200(%rax)
	vpextrd	$0, %xmm8, 216(%rax)
	vmovdqu	7136(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 220(%rax)
	vpextrd	$0, %xmm8, 236(%rax)
	vmovdqu	7168(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 240(%rax)
	vpextrd	$0, %xmm8, 256(%rax)
	vmovdqu	7200(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 260(%rax)
	vpextrd	$0, %xmm8, 276(%rax)
	vmovdqu	7232(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 280(%rax)
	vpextrd	$0, %xmm8, 296(%rax)
	vmovdqu	7264(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 300(%rax)
	vpextrd	$0, %xmm8, 316(%rax)
	vmovdqu	7296(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 320(%rax)
	vpextrd	$0, %xmm8, 336(%rax)
	vmovdqu	7328(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 340(%rax)
	vpextrd	$0, %xmm8, 356(%rax)
	vmovdqu	7360(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 360(%rax)
	vpextrd	$0, %xmm8, 376(%rax)
	vmovdqu	7392(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 380(%rax)
	vpextrd	$0, %xmm8, 396(%rax)
	vmovdqu	7424(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 400(%rax)
	vpextrd	$0, %xmm8, 416(%rax)
	vmovdqu	7456(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 420(%rax)
	vpextrd	$0, %xmm8, 436(%rax)
	vmovdqu	7488(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 440(%rax)
	vpextrd	$0, %xmm8, 456(%rax)
	vmovdqu	7520(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 460(%rax)
	vpextrd	$0, %xmm8, 476(%rax)
	vmovdqu	7552(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 480(%rax)
	vpextrd	$0, %xmm8, 496(%rax)
	vmovdqu	7584(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 500(%rax)
	vpextrd	$0, %xmm8, 516(%rax)
	vmovdqu	7616(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 520(%rax)
	vpextrd	$0, %xmm8, 536(%rax)
	vmovdqu	7648(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 540(%rax)
	vpextrd	$0, %xmm8, 556(%rax)
	vmovdqu	7680(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 560(%rax)
	vpextrd	$0, %xmm8, 576(%rax)
	vmovdqu	7712(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 580(%rax)
	vpextrd	$0, %xmm8, 596(%rax)
	vmovdqu	7744(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 600(%rax)
	vpextrd	$0, %xmm8, 616(%rax)
	vmovdqu	7776(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 620(%rax)
	vpextrd	$0, %xmm8, 636(%rax)
	vmovdqu	7808(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 640(%rax)
	vpextrd	$0, %xmm8, 656(%rax)
	vmovdqu	7840(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 660(%rax)
	vpextrd	$0, %xmm8, 676(%rax)
	vmovdqu	7872(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 680(%rax)
	vpextrd	$0, %xmm8, 696(%rax)
	vmovdqu	7904(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 700(%rax)
	vpextrd	$0, %xmm8, 716(%rax)
	vmovdqu	7936(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 720(%rax)
	vpextrd	$0, %xmm8, 736(%rax)
	vmovdqu	7968(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 740(%rax)
	vpextrd	$0, %xmm8, 756(%rax)
	vmovdqu	8000(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 760(%rax)
	vpextrd	$0, %xmm8, 776(%rax)
	vmovdqu	8032(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 780(%rax)
	vpextrd	$0, %xmm8, 796(%rax)
	vmovdqu	8064(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 800(%rax)
	vpextrd	$0, %xmm8, 816(%rax)
	vmovdqu	8096(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 820(%rax)
	vpextrd	$0, %xmm8, 836(%rax)
	vmovdqu	8128(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 840(%rax)
	vpextrd	$0, %xmm8, 856(%rax)
	vmovdqu	8160(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 860(%rax)
	vpextrd	$0, %xmm8, 876(%rax)
	vmovdqu	8192(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 880(%rax)
	vpextrd	$0, %xmm8, 896(%rax)
	vmovdqu	8224(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 900(%rax)
	vpextrd	$0, %xmm8, 916(%rax)
	vmovdqu	8256(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm8
	vpmaddwd	%ymm5, %ymm8, %ymm8
	vpsllvd	%ymm6, %ymm8, %ymm8
	vpsrlq	$12, %ymm8, %ymm8
	vpshufb	%ymm7, %ymm8, %ymm8
	vmovdqu	%xmm8, %xmm15
	vextracti128	$1, %ymm8, %xmm8
	vpblendw	$224, %xmm8, %xmm15, %xmm15
	vmovdqu	%xmm15, 920(%rax)
	vpextrd	$0, %xmm8, 936(%rax)
	vmovdqu	8288(%rsp), %ymm8
	vpmullw	%ymm1, %ymm8, %ymm9
	vpaddw	%ymm2, %ymm8, %ymm10
	vpsllw	$3, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm10, %ymm9, %ymm10
	vpandn	%ymm10, %ymm9, %ymm9
	vpsrlw	$15, %ymm9, %ymm9
	vpsubw	%ymm9, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpand	%ymm4, %ymm8, %ymm4
	vpmaddwd	%ymm5, %ymm4, %ymm4
	vpsllvd	%ymm6, %ymm4, %ymm4
	vpsrlq	$12, %ymm4, %ymm4
	vpshufb	%ymm7, %ymm4, %ymm4
	vmovdqu	%xmm4, %xmm2
	vextracti128	$1, %ymm4, %xmm3
	vpblendw	$224, %xmm3, %xmm2, %xmm2
	vmovdqu	%xmm2, 940(%rax)
	vpextrd	$0, %xmm3, 956(%rax)
	leaq	960(%rbx), %rax
	leaq	1152(%rsp), %rsi
	call	L_i_poly_compress$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_enc_derand$1:
	movq	%mm1, %rsi
	movb	64(%rsp), %al
	movb	%al, (%rsi)
	movb	65(%rsp), %al
	movb	%al, 1(%rsi)
	movb	66(%rsp), %al
	movb	%al, 2(%rsi)
	movb	67(%rsp), %al
	movb	%al, 3(%rsi)
	movb	68(%rsp), %al
	movb	%al, 4(%rsi)
	movb	69(%rsp), %al
	movb	%al, 5(%rsi)
	movb	70(%rsp), %al
	movb	%al, 6(%rsi)
	movb	71(%rsp), %al
	movb	%al, 7(%rsi)
	movb	72(%rsp), %al
	movb	%al, 8(%rsi)
	movb	73(%rsp), %al
	movb	%al, 9(%rsi)
	movb	74(%rsp), %al
	movb	%al, 10(%rsi)
	movb	75(%rsp), %al
	movb	%al, 11(%rsi)
	movb	76(%rsp), %al
	movb	%al, 12(%rsi)
	movb	77(%rsp), %al
	movb	%al, 13(%rsi)
	movb	78(%rsp), %al
	movb	%al, 14(%rsi)
	movb	79(%rsp), %al
	movb	%al, 15(%rsi)
	movb	80(%rsp), %al
	movb	%al, 16(%rsi)
	movb	81(%rsp), %al
	movb	%al, 17(%rsi)
	movb	82(%rsp), %al
	movb	%al, 18(%rsi)
	movb	83(%rsp), %al
	movb	%al, 19(%rsi)
	movb	84(%rsp), %al
	movb	%al, 20(%rsi)
	movb	85(%rsp), %al
	movb	%al, 21(%rsi)
	movb	86(%rsp), %al
	movb	%al, 22(%rsi)
	movb	87(%rsp), %al
	movb	%al, 23(%rsi)
	movb	88(%rsp), %al
	movb	%al, 24(%rsi)
	movb	89(%rsp), %al
	movb	%al, 25(%rsi)
	movb	90(%rsp), %al
	movb	%al, 26(%rsi)
	movb	91(%rsp), %al
	movb	%al, 27(%rsi)
	movb	92(%rsp), %al
	movb	%al, 28(%rsi)
	movb	93(%rsp), %al
	movb	%al, 29(%rsi)
	movb	94(%rsp), %al
	movb	%al, 30(%rsi)
	movb	95(%rsp), %al
	movb	%al, 31(%rsi)
	xorl	%eax, %eax
	movq	12960(%rsp), %rbx
	movq	12968(%rsp), %rbp
	movq	12976(%rsp), %r12
	movq	12984(%rsp), %r13
	movq	12992(%rsp), %r14
	movq	13000(%rsp), %r15
	movq	13008(%rsp), %rsp
	ret
	.type	jade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand, %function
jade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand:
	movq	%rsp, %rax
	leaq	-9952(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rbx, 9896(%rsp)
	movq	%rbp, 9904(%rsp)
	movq	%r12, 9912(%rsp)
	movq	%r13, 9920(%rsp)
	movq	%r14, 9928(%rsp)
	movq	%r15, 9936(%rsp)
	movq	%rax, 9944(%rsp)
	lfence
	movq	$0, %rax
	movq	%rdx, %mm1
	movq	%rsi, %rbx
	movq	%rsi, %mm2
	movq	%rdi, %mm3
	movq	%rbx, %mm4
	movq	(%rdx), %rcx
	movq	%rcx, 9824(%rsp)
	movq	8(%rdx), %rcx
	movq	%rcx, 9832(%rsp)
	movq	16(%rdx), %rcx
	movq	%rcx, 9840(%rsp)
	movq	24(%rdx), %rcx
	movq	%rcx, 9848(%rsp)
	movb	$3, 9856(%rsp)
	movq	%rsp, %rsi
	leaq	9824(%rsp), %rbp
	call	L_sha3_512A_A33$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$38:
	movq	(%rsp), %rcx
	movq	%rcx, 9792(%rsp)
	movq	32(%rsp), %rcx
	movq	%rcx, 9864(%rsp)
	movq	8(%rsp), %rcx
	movq	%rcx, 9800(%rsp)
	movq	40(%rsp), %rcx
	movq	%rcx, 9872(%rsp)
	movq	16(%rsp), %rcx
	movq	%rcx, 9808(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 9880(%rsp)
	movq	24(%rsp), %rcx
	movq	%rcx, 9816(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 9888(%rsp)
	movq	$0, %rcx
	leaq	5184(%rsp), %rax
	leaq	9792(%rsp), %rdx
	leaq	-2200(%rsp), %rsp
	call	L_gen_matrix_avx2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$37:
	leaq	2200(%rsp), %rsp
	movb	$0, %r9b
	leaq	2112(%rsp), %rax
	leaq	2624(%rsp), %rcx
	leaq	3136(%rsp), %rdx
	leaq	576(%rsp), %r8
	leaq	9864(%rsp), %rdi
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$36:
	leaq	600(%rsp), %rsp
	movb	$4, %r9b
	leaq	1088(%rsp), %rax
	leaq	1600(%rsp), %rcx
	leaq	3648(%rsp), %rdx
	leaq	4160(%rsp), %r8
	leaq	9864(%rsp), %rdi
	leaq	-600(%rsp), %rsp
	call	L_poly_getnoise_eta1_4x$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$35:
	leaq	600(%rsp), %rsp
	leaq	2112(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$34:
	leaq	2624(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$33:
	leaq	3136(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$32:
	leaq	576(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$31:
	leaq	1088(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$30:
	leaq	1600(%rsp), %rcx
	call	L_poly_ntt$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$29:
	leaq	3648(%rsp), %rcx
	leaq	5184(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$28:
	leaq	64(%rsp), %rcx
	leaq	5696(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$27:
	leaq	3648(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$26:
	leaq	64(%rsp), %rcx
	leaq	6208(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$25:
	leaq	3648(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$24:
	leaq	3648(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$23:
	leaq	4160(%rsp), %rcx
	leaq	6720(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$22:
	leaq	64(%rsp), %rcx
	leaq	7232(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$21:
	leaq	4160(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$20:
	leaq	64(%rsp), %rcx
	leaq	7744(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$19:
	leaq	4160(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$18:
	leaq	4160(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$17:
	leaq	4672(%rsp), %rcx
	leaq	8256(%rsp), %rsi
	leaq	2112(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$16:
	leaq	64(%rsp), %rcx
	leaq	8768(%rsp), %rsi
	leaq	2624(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$15:
	leaq	4672(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$14:
	leaq	64(%rsp), %rcx
	leaq	9280(%rsp), %rsi
	leaq	3136(%rsp), %rdi
	call	L_poly_basemul$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$13:
	leaq	4672(%rsp), %rcx
	leaq	64(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$12:
	leaq	4672(%rsp), %rax
	call	L_poly_frommont$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$11:
	leaq	3648(%rsp), %rcx
	leaq	576(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$10:
	leaq	4160(%rsp), %rcx
	leaq	1088(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$9:
	leaq	4672(%rsp), %rcx
	leaq	1600(%rsp), %rdi
	call	L_poly_add2$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$8:
	leaq	3648(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	4160(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	leaq	4672(%rsp), %rax
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rax)
	vmovdqu	32(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 32(%rax)
	vmovdqu	64(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 64(%rax)
	vmovdqu	96(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 96(%rax)
	vmovdqu	128(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 128(%rax)
	vmovdqu	160(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 160(%rax)
	vmovdqu	192(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 192(%rax)
	vmovdqu	224(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 224(%rax)
	vmovdqu	256(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 256(%rax)
	vmovdqu	288(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 288(%rax)
	vmovdqu	320(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 320(%rax)
	vmovdqu	352(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 352(%rax)
	vmovdqu	384(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 384(%rax)
	vmovdqu	416(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 416(%rax)
	vmovdqu	448(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm2
	vmovdqu	%ymm2, 448(%rax)
	vmovdqu	480(%rax), %ymm2
	vpmulhw	%ymm1, %ymm2, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rax)
	movq	%mm3, %rbp
	movq	%mm4, %rax
	movq	%rax, %rcx
	leaq	2112(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$7:
	leaq	384(%rax), %rcx
	leaq	2624(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$6:
	leaq	768(%rax), %rcx
	leaq	3136(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$5:
	movq	%rbp, %rax
	movq	%rax, %rcx
	leaq	3648(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$4:
	leaq	384(%rax), %rcx
	leaq	4160(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$3:
	leaq	768(%rax), %rcx
	leaq	4672(%rsp), %rsi
	call	L_i_poly_tobytes$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$2:
	movq	9792(%rsp), %rcx
	movq	%rcx, 1152(%rbp)
	movq	9800(%rsp), %rcx
	movq	%rcx, 1160(%rbp)
	movq	9808(%rsp), %rcx
	movq	%rcx, 1168(%rbp)
	movq	9816(%rsp), %rcx
	movq	%rcx, 1176(%rbp)
	movq	%mm2, %rdx
	movq	(%rbp), %rcx
	movq	%rcx, 1152(%rdx)
	movq	8(%rbp), %rcx
	movq	%rcx, 1160(%rdx)
	movq	16(%rbp), %rcx
	movq	%rcx, 1168(%rdx)
	movq	24(%rbp), %rcx
	movq	%rcx, 1176(%rdx)
	movq	32(%rbp), %rcx
	movq	%rcx, 1184(%rdx)
	movq	40(%rbp), %rcx
	movq	%rcx, 1192(%rdx)
	movq	48(%rbp), %rcx
	movq	%rcx, 1200(%rdx)
	movq	56(%rbp), %rcx
	movq	%rcx, 1208(%rdx)
	movq	64(%rbp), %rcx
	movq	%rcx, 1216(%rdx)
	movq	72(%rbp), %rcx
	movq	%rcx, 1224(%rdx)
	movq	80(%rbp), %rcx
	movq	%rcx, 1232(%rdx)
	movq	88(%rbp), %rcx
	movq	%rcx, 1240(%rdx)
	movq	96(%rbp), %rcx
	movq	%rcx, 1248(%rdx)
	movq	104(%rbp), %rcx
	movq	%rcx, 1256(%rdx)
	movq	112(%rbp), %rcx
	movq	%rcx, 1264(%rdx)
	movq	120(%rbp), %rcx
	movq	%rcx, 1272(%rdx)
	movq	128(%rbp), %rcx
	movq	%rcx, 1280(%rdx)
	movq	136(%rbp), %rcx
	movq	%rcx, 1288(%rdx)
	movq	144(%rbp), %rcx
	movq	%rcx, 1296(%rdx)
	movq	152(%rbp), %rcx
	movq	%rcx, 1304(%rdx)
	movq	160(%rbp), %rcx
	movq	%rcx, 1312(%rdx)
	movq	168(%rbp), %rcx
	movq	%rcx, 1320(%rdx)
	movq	176(%rbp), %rcx
	movq	%rcx, 1328(%rdx)
	movq	184(%rbp), %rcx
	movq	%rcx, 1336(%rdx)
	movq	192(%rbp), %rcx
	movq	%rcx, 1344(%rdx)
	movq	200(%rbp), %rcx
	movq	%rcx, 1352(%rdx)
	movq	208(%rbp), %rcx
	movq	%rcx, 1360(%rdx)
	movq	216(%rbp), %rcx
	movq	%rcx, 1368(%rdx)
	movq	224(%rbp), %rcx
	movq	%rcx, 1376(%rdx)
	movq	232(%rbp), %rcx
	movq	%rcx, 1384(%rdx)
	movq	240(%rbp), %rcx
	movq	%rcx, 1392(%rdx)
	movq	248(%rbp), %rcx
	movq	%rcx, 1400(%rdx)
	movq	256(%rbp), %rcx
	movq	%rcx, 1408(%rdx)
	movq	264(%rbp), %rcx
	movq	%rcx, 1416(%rdx)
	movq	272(%rbp), %rcx
	movq	%rcx, 1424(%rdx)
	movq	280(%rbp), %rcx
	movq	%rcx, 1432(%rdx)
	movq	288(%rbp), %rcx
	movq	%rcx, 1440(%rdx)
	movq	296(%rbp), %rcx
	movq	%rcx, 1448(%rdx)
	movq	304(%rbp), %rcx
	movq	%rcx, 1456(%rdx)
	movq	312(%rbp), %rcx
	movq	%rcx, 1464(%rdx)
	movq	320(%rbp), %rcx
	movq	%rcx, 1472(%rdx)
	movq	328(%rbp), %rcx
	movq	%rcx, 1480(%rdx)
	movq	336(%rbp), %rcx
	movq	%rcx, 1488(%rdx)
	movq	344(%rbp), %rcx
	movq	%rcx, 1496(%rdx)
	movq	352(%rbp), %rcx
	movq	%rcx, 1504(%rdx)
	movq	360(%rbp), %rcx
	movq	%rcx, 1512(%rdx)
	movq	368(%rbp), %rcx
	movq	%rcx, 1520(%rdx)
	movq	376(%rbp), %rcx
	movq	%rcx, 1528(%rdx)
	movq	384(%rbp), %rcx
	movq	%rcx, 1536(%rdx)
	movq	392(%rbp), %rcx
	movq	%rcx, 1544(%rdx)
	movq	400(%rbp), %rcx
	movq	%rcx, 1552(%rdx)
	movq	408(%rbp), %rcx
	movq	%rcx, 1560(%rdx)
	movq	416(%rbp), %rcx
	movq	%rcx, 1568(%rdx)
	movq	424(%rbp), %rcx
	movq	%rcx, 1576(%rdx)
	movq	432(%rbp), %rcx
	movq	%rcx, 1584(%rdx)
	movq	440(%rbp), %rcx
	movq	%rcx, 1592(%rdx)
	movq	448(%rbp), %rcx
	movq	%rcx, 1600(%rdx)
	movq	456(%rbp), %rcx
	movq	%rcx, 1608(%rdx)
	movq	464(%rbp), %rcx
	movq	%rcx, 1616(%rdx)
	movq	472(%rbp), %rcx
	movq	%rcx, 1624(%rdx)
	movq	480(%rbp), %rcx
	movq	%rcx, 1632(%rdx)
	movq	488(%rbp), %rcx
	movq	%rcx, 1640(%rdx)
	movq	496(%rbp), %rcx
	movq	%rcx, 1648(%rdx)
	movq	504(%rbp), %rcx
	movq	%rcx, 1656(%rdx)
	movq	512(%rbp), %rcx
	movq	%rcx, 1664(%rdx)
	movq	520(%rbp), %rcx
	movq	%rcx, 1672(%rdx)
	movq	528(%rbp), %rcx
	movq	%rcx, 1680(%rdx)
	movq	536(%rbp), %rcx
	movq	%rcx, 1688(%rdx)
	movq	544(%rbp), %rcx
	movq	%rcx, 1696(%rdx)
	movq	552(%rbp), %rcx
	movq	%rcx, 1704(%rdx)
	movq	560(%rbp), %rcx
	movq	%rcx, 1712(%rdx)
	movq	568(%rbp), %rcx
	movq	%rcx, 1720(%rdx)
	movq	576(%rbp), %rcx
	movq	%rcx, 1728(%rdx)
	movq	584(%rbp), %rcx
	movq	%rcx, 1736(%rdx)
	movq	592(%rbp), %rcx
	movq	%rcx, 1744(%rdx)
	movq	600(%rbp), %rcx
	movq	%rcx, 1752(%rdx)
	movq	608(%rbp), %rcx
	movq	%rcx, 1760(%rdx)
	movq	616(%rbp), %rcx
	movq	%rcx, 1768(%rdx)
	movq	624(%rbp), %rcx
	movq	%rcx, 1776(%rdx)
	movq	632(%rbp), %rcx
	movq	%rcx, 1784(%rdx)
	movq	640(%rbp), %rcx
	movq	%rcx, 1792(%rdx)
	movq	648(%rbp), %rcx
	movq	%rcx, 1800(%rdx)
	movq	656(%rbp), %rcx
	movq	%rcx, 1808(%rdx)
	movq	664(%rbp), %rcx
	movq	%rcx, 1816(%rdx)
	movq	672(%rbp), %rcx
	movq	%rcx, 1824(%rdx)
	movq	680(%rbp), %rcx
	movq	%rcx, 1832(%rdx)
	movq	688(%rbp), %rcx
	movq	%rcx, 1840(%rdx)
	movq	696(%rbp), %rcx
	movq	%rcx, 1848(%rdx)
	movq	704(%rbp), %rcx
	movq	%rcx, 1856(%rdx)
	movq	712(%rbp), %rcx
	movq	%rcx, 1864(%rdx)
	movq	720(%rbp), %rcx
	movq	%rcx, 1872(%rdx)
	movq	728(%rbp), %rcx
	movq	%rcx, 1880(%rdx)
	movq	736(%rbp), %rcx
	movq	%rcx, 1888(%rdx)
	movq	744(%rbp), %rcx
	movq	%rcx, 1896(%rdx)
	movq	752(%rbp), %rcx
	movq	%rcx, 1904(%rdx)
	movq	760(%rbp), %rcx
	movq	%rcx, 1912(%rdx)
	movq	768(%rbp), %rcx
	movq	%rcx, 1920(%rdx)
	movq	776(%rbp), %rcx
	movq	%rcx, 1928(%rdx)
	movq	784(%rbp), %rcx
	movq	%rcx, 1936(%rdx)
	movq	792(%rbp), %rcx
	movq	%rcx, 1944(%rdx)
	movq	800(%rbp), %rcx
	movq	%rcx, 1952(%rdx)
	movq	808(%rbp), %rcx
	movq	%rcx, 1960(%rdx)
	movq	816(%rbp), %rcx
	movq	%rcx, 1968(%rdx)
	movq	824(%rbp), %rcx
	movq	%rcx, 1976(%rdx)
	movq	832(%rbp), %rcx
	movq	%rcx, 1984(%rdx)
	movq	840(%rbp), %rcx
	movq	%rcx, 1992(%rdx)
	movq	848(%rbp), %rcx
	movq	%rcx, 2000(%rdx)
	movq	856(%rbp), %rcx
	movq	%rcx, 2008(%rdx)
	movq	864(%rbp), %rcx
	movq	%rcx, 2016(%rdx)
	movq	872(%rbp), %rcx
	movq	%rcx, 2024(%rdx)
	movq	880(%rbp), %rcx
	movq	%rcx, 2032(%rdx)
	movq	888(%rbp), %rcx
	movq	%rcx, 2040(%rdx)
	movq	896(%rbp), %rcx
	movq	%rcx, 2048(%rdx)
	movq	904(%rbp), %rcx
	movq	%rcx, 2056(%rdx)
	movq	912(%rbp), %rcx
	movq	%rcx, 2064(%rdx)
	movq	920(%rbp), %rcx
	movq	%rcx, 2072(%rdx)
	movq	928(%rbp), %rcx
	movq	%rcx, 2080(%rdx)
	movq	936(%rbp), %rcx
	movq	%rcx, 2088(%rdx)
	movq	944(%rbp), %rcx
	movq	%rcx, 2096(%rdx)
	movq	952(%rbp), %rcx
	movq	%rcx, 2104(%rdx)
	movq	960(%rbp), %rcx
	movq	%rcx, 2112(%rdx)
	movq	968(%rbp), %rcx
	movq	%rcx, 2120(%rdx)
	movq	976(%rbp), %rcx
	movq	%rcx, 2128(%rdx)
	movq	984(%rbp), %rcx
	movq	%rcx, 2136(%rdx)
	movq	992(%rbp), %rcx
	movq	%rcx, 2144(%rdx)
	movq	1000(%rbp), %rcx
	movq	%rcx, 2152(%rdx)
	movq	1008(%rbp), %rcx
	movq	%rcx, 2160(%rdx)
	movq	1016(%rbp), %rcx
	movq	%rcx, 2168(%rdx)
	movq	1024(%rbp), %rcx
	movq	%rcx, 2176(%rdx)
	movq	1032(%rbp), %rcx
	movq	%rcx, 2184(%rdx)
	movq	1040(%rbp), %rcx
	movq	%rcx, 2192(%rdx)
	movq	1048(%rbp), %rcx
	movq	%rcx, 2200(%rdx)
	movq	1056(%rbp), %rcx
	movq	%rcx, 2208(%rdx)
	movq	1064(%rbp), %rcx
	movq	%rcx, 2216(%rdx)
	movq	1072(%rbp), %rcx
	movq	%rcx, 2224(%rdx)
	movq	1080(%rbp), %rcx
	movq	%rcx, 2232(%rdx)
	movq	1088(%rbp), %rcx
	movq	%rcx, 2240(%rdx)
	movq	1096(%rbp), %rcx
	movq	%rcx, 2248(%rdx)
	movq	1104(%rbp), %rcx
	movq	%rcx, 2256(%rdx)
	movq	1112(%rbp), %rcx
	movq	%rcx, 2264(%rdx)
	movq	1120(%rbp), %rcx
	movq	%rcx, 2272(%rdx)
	movq	1128(%rbp), %rcx
	movq	%rcx, 2280(%rdx)
	movq	1136(%rbp), %rcx
	movq	%rcx, 2288(%rdx)
	movq	1144(%rbp), %rcx
	movq	%rcx, 2296(%rdx)
	movq	1152(%rbp), %rcx
	movq	%rcx, 2304(%rdx)
	movq	1160(%rbp), %rcx
	movq	%rcx, 2312(%rdx)
	movq	1168(%rbp), %rcx
	movq	%rcx, 2320(%rdx)
	movq	1176(%rbp), %rcx
	movq	%rcx, 2328(%rdx)
	leaq	2336(%rdx), %rsi
	call	L_sha3_256A_A1184$1
Ljade_kem_mlkem_mlkem768_amd64_avx2_keypair_derand$1:
	movq	%mm1, %rax
	movq	32(%rax), %rcx
	movq	%rcx, 2368(%rdx)
	movq	40(%rax), %rcx
	movq	%rcx, 2376(%rdx)
	movq	48(%rax), %rcx
	movq	%rcx, 2384(%rdx)
	movq	56(%rax), %rcx
	movq	%rcx, 2392(%rdx)
	xorl	%eax, %eax
	movq	9896(%rsp), %rbx
	movq	9904(%rsp), %rbp
	movq	9912(%rsp), %r12
	movq	9920(%rsp), %r13
	movq	9928(%rsp), %r14
	movq	9936(%rsp), %r15
	movq	9944(%rsp), %rsp
	ret
L_gen_matrix_avx2$1:
	movq	%rcx, %mm0
	leaq	32(%rsp), %rsi
	movq	$0, %r10
	movq	%rax, %rcx
	movq	%mm0, %r8
	leaq	-856(%rsp), %rsp
	call	L_gen_matrix_sample_four_polynomials$1
L_gen_matrix_avx2$15:
	leaq	856(%rsp), %rsp
	movq	$8, %r10
	leaq	2048(%rax), %rcx
	movq	%mm0, %r8
	leaq	-856(%rsp), %rsp
	call	L_gen_matrix_sample_four_polynomials$1
L_gen_matrix_avx2$14:
	leaq	856(%rsp), %rsp
	leaq	4096(%rax), %r10
	movw	$514, %cx
	movq	%rsi, %r8
	movw	%cx, 2176(%rsp)
	leaq	2176(%rsp), %rcx
	call	L_shake128_absorb_A32_A2$1
L_gen_matrix_avx2$13:
	call	L_shake128_squeeze3blocks$1
L_gen_matrix_avx2$12:
	call	L__gen_matrix_fill_polynomial$1
L_gen_matrix_avx2$11:
	movq	%rax, %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$10:
	leaq	512(%rax), %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$9:
	leaq	1024(%rax), %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$8:
	leaq	1536(%rax), %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$7:
	leaq	2048(%rax), %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$6:
	leaq	2560(%rax), %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$5:
	leaq	3072(%rax), %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$4:
	leaq	3584(%rax), %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$3:
	leaq	4096(%rax), %rcx
	call	L_nttunpack$1
L_gen_matrix_avx2$2:
	ret
L_gen_matrix_sample_four_polynomials$1:
	leaq	glob_data + 2656(%rip), %r9
	shlq	$4, %r8
	addq	%r8, %r10
	movq	(%r9,%r10), %r8
	movq	%r8, 832(%rsp)
	leaq	32(%rsp), %r8
	leaq	832(%rsp), %r9
	call	L_shake128x4_absorb_A32_A2$1
L_gen_matrix_sample_four_polynomials$7:
	leaq	-24(%rsp), %rsp
	call	L_shake128x4_squeeze3blocks$1
L_gen_matrix_sample_four_polynomials$6:
	leaq	24(%rsp), %rsp
	movq	%rcx, %r10
	movq	%rsi, %r8
	call	L__gen_matrix_fill_polynomial$1
L_gen_matrix_sample_four_polynomials$5:
	leaq	512(%rcx), %r10
	leaq	536(%rsi), %r8
	call	L__gen_matrix_fill_polynomial$1
L_gen_matrix_sample_four_polynomials$4:
	leaq	1024(%rcx), %r10
	leaq	1072(%rsi), %r8
	call	L__gen_matrix_fill_polynomial$1
L_gen_matrix_sample_four_polynomials$3:
	leaq	1536(%rcx), %r10
	leaq	1608(%rsi), %r8
	call	L__gen_matrix_fill_polynomial$1
L_gen_matrix_sample_four_polynomials$2:
	ret
L__gen_matrix_fill_polynomial$1:
	movq	$0, %r9
	movq	$0, %rbp
	leaq	-8(%rsp), %rsp
	call	L_gen_matrix_buf_rejection$1
L__gen_matrix_fill_polynomial$6:
	leaq	8(%rsp), %rsp
	movq	$336, %r9
	jmp 	L__gen_matrix_fill_polynomial$2
L__gen_matrix_fill_polynomial$3:
	call	L_shake128_next_state$1
L__gen_matrix_fill_polynomial$5:
	leaq	-8(%rsp), %rsp
	call	L_gen_matrix_buf_rejection$1
L__gen_matrix_fill_polynomial$4:
	leaq	8(%rsp), %rsp
L__gen_matrix_fill_polynomial$2:
	cmpq	$256, %rbp
	jb  	L__gen_matrix_fill_polynomial$3
	ret
L_gen_matrix_buf_rejection$1:
	lfence
	movq	$0, %r11
	vmovdqu	glob_data + 96(%rip), %ymm0
	vmovdqu	glob_data + 32(%rip), %ymm3
	vmovdqu	glob_data + 0(%rip), %ymm1
	vmovdqu	glob_data + 64(%rip), %ymm2
	leaq	glob_data + 2688(%rip), %rbx
	movq	%r9, 8(%rsp)
	movq	%r9, %r13
	jmp 	L_gen_matrix_buf_rejection$22
L_gen_matrix_buf_rejection$23:
	movq	$-1, %r12
	cmovnb	%r12, %r11
	cmpq	$225, %rbp
	jb  	L_gen_matrix_buf_rejection$24
	movq	$-1, %r12
	cmovb	%r12, %r11
	movq	$504, %r13
	jmp 	L_gen_matrix_buf_rejection$22
L_gen_matrix_buf_rejection$24:
	movq	$-1, %r12
	cmovnb	%r12, %r11
	vpermq	$148, (%r8,%r13), %ymm4
	vpermq	$148, 24(%r8,%r13), %ymm5
	vpshufb	%ymm0, %ymm4, %ymm4
	vpshufb	%ymm0, %ymm5, %ymm5
	vpsrlw	$4, %ymm4, %ymm6
	vpsrlw	$4, %ymm5, %ymm7
	vpblendw	$170, %ymm6, %ymm4, %ymm4
	vpblendw	$170, %ymm7, %ymm5, %ymm5
	vpand	%ymm3, %ymm4, %ymm4
	vpand	%ymm3, %ymm5, %ymm5
	vpcmpgtw	%ymm4, %ymm1, %ymm6
	vpcmpgtw	%ymm5, %ymm1, %ymm7
	vpacksswb	%ymm7, %ymm6, %ymm6
	vpmovmskb	%ymm6, %r12d
	orq 	%r11, %r12
	movq	%r12, %r13
	andq	$255, %r13
	vmovq	(%rbx,%r13,8), %xmm6
	popcnt	%r13, %r13
	addq	%rbp, %r13
	movq	%r12, %r14
	shrq	$16, %r14
	andq	$255, %r14
	vmovq	(%rbx,%r14,8), %xmm7
	popcnt	%r14, %r14
	addq	%r13, %r14
	movq	%r12, %r15
	shrq	$8, %r15
	andq	$255, %r15
	vmovq	(%rbx,%r15,8), %xmm8
	popcnt	%r15, %r15
	addq	%r14, %r15
	shrq	$24, %r12
	andq	$255, %r12
	vmovq	(%rbx,%r12,8), %xmm9
	popcnt	%r12, %r12
	addq	%r15, %r12
	vinserti128	$1, %xmm7, %ymm6, %ymm6
	vinserti128	$1, %xmm9, %ymm8, %ymm8
	vpaddb	%ymm2, %ymm6, %ymm7
	vpunpcklbw	%ymm7, %ymm6, %ymm6
	vpaddb	%ymm2, %ymm8, %ymm7
	vpunpcklbw	%ymm7, %ymm8, %ymm8
	vpshufb	%ymm6, %ymm4, %ymm4
	vpshufb	%ymm8, %ymm5, %ymm5
	vmovdqu	%xmm4, (%r10,%rbp,2)
	vextracti128	$1, %ymm4, (%r10,%r13,2)
	vmovdqu	%xmm5, (%r10,%r14,2)
	vextracti128	$1, %ymm5, (%r10,%r15,2)
	movq	%r12, %rbp
	addq	$48, 8(%rsp)
	movq	8(%rsp), %r13
	orq 	%r11, %r13
L_gen_matrix_buf_rejection$25:
L_gen_matrix_buf_rejection$22:
	cmpq	$457, %r13
	jb  	L_gen_matrix_buf_rejection$23
	movq	$-1, %r12
	cmovb	%r12, %r11
	movq	8(%rsp), %r13
	orq 	%r11, %r13
	jmp 	L_gen_matrix_buf_rejection$2
L_gen_matrix_buf_rejection$3:
	movq	$-1, %r12
	cmovnb	%r12, %r11
	cmpq	$256, %rbp
	jb  	L_gen_matrix_buf_rejection$4
	movq	$-1, %r12
	cmovb	%r12, %r11
	movq	$504, %r13
	jmp 	L_gen_matrix_buf_rejection$2
L_gen_matrix_buf_rejection$4:
	movq	$-1, %r12
	cmovnb	%r12, %r11
	movq	%r13, 8(%rsp)
	vpermq	$148, (%r8,%r13), %ymm4
	vpshufb	%ymm0, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm6
	vpblendw	$170, %ymm6, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpcmpgtw	%ymm4, %ymm1, %ymm6
	vpxor	%ymm7, %ymm7, %ymm7
	vpacksswb	%ymm7, %ymm6, %ymm6
	vpmovmskb	%ymm6, %r12d
	orq 	%r11, %r12
	movq	%r12, %r13
	andq	$255, %r13
	vmovq	(%rbx,%r13,8), %xmm6
	popcnt	%r13, %r13
	addq	%rbp, %r13
	shrq	$16, %r12
	andq	$255, %r12
	vmovq	(%rbx,%r12,8), %xmm7
	popcnt	%r12, %r14
	addq	%r13, %r14
	vinserti128	$1, %xmm7, %ymm6, %ymm6
	vpaddb	%ymm2, %ymm6, %ymm7
	vpunpcklbw	%ymm7, %ymm6, %ymm6
	vpshufb	%ymm6, %ymm4, %ymm4
	vmovdqu	%xmm4, %xmm5
	cmpq	$248, %rbp
	jbe 	L_gen_matrix_buf_rejection$14
	movq	$-1, %r12
	cmovbe	%r12, %r11
	movq	%xmm5, %r12
	cmpq	$252, %rbp
	jbe 	L_gen_matrix_buf_rejection$20
	movq	$-1, %r15
	cmovbe	%r15, %r11
	jmp 	L_gen_matrix_buf_rejection$21
L_gen_matrix_buf_rejection$20:
	movq	$-1, %r15
	cmovnbe	%r15, %r11
	movq	%r12, (%r10,%rbp,2)
	vpextrq	$1, %xmm5, %r12
	addq	$4, %rbp
L_gen_matrix_buf_rejection$21:
	cmpq	$254, %rbp
	jbe 	L_gen_matrix_buf_rejection$18
	movq	$-1, %r15
	cmovbe	%r15, %r11
	jmp 	L_gen_matrix_buf_rejection$19
L_gen_matrix_buf_rejection$18:
	movq	$-1, %r15
	cmovnbe	%r15, %r11
	movl	%r12d, (%r10,%rbp,2)
	shrq	$32, %r12
	addq	$2, %rbp
L_gen_matrix_buf_rejection$19:
	cmpq	$255, %rbp
	jbe 	L_gen_matrix_buf_rejection$16
	movq	$-1, %rbp
	cmovbe	%rbp, %r11
	jmp 	L_gen_matrix_buf_rejection$15
L_gen_matrix_buf_rejection$16:
	movq	$-1, %r15
	cmovnbe	%r15, %r11
	movw	%r12w, (%r10,%rbp,2)
L_gen_matrix_buf_rejection$17:
	jmp 	L_gen_matrix_buf_rejection$15
L_gen_matrix_buf_rejection$14:
	movq	$-1, %r12
	cmovnbe	%r12, %r11
	vmovdqu	%xmm5, (%r10,%rbp,2)
L_gen_matrix_buf_rejection$15:
	vextracti128	$1, %ymm4, %xmm5
	cmpq	$248, %r13
	jbe 	L_gen_matrix_buf_rejection$6
	movq	$-1, %rbp
	cmovbe	%rbp, %r11
	movq	%xmm5, %r12
	cmpq	$252, %r13
	jbe 	L_gen_matrix_buf_rejection$12
	movq	$-1, %rbp
	cmovbe	%rbp, %r11
	jmp 	L_gen_matrix_buf_rejection$13
L_gen_matrix_buf_rejection$12:
	movq	$-1, %rbp
	cmovnbe	%rbp, %r11
	movq	%r12, (%r10,%r13,2)
	vpextrq	$1, %xmm5, %r12
	addq	$4, %r13
L_gen_matrix_buf_rejection$13:
	cmpq	$254, %r13
	jbe 	L_gen_matrix_buf_rejection$10
	movq	$-1, %rbp
	cmovbe	%rbp, %r11
	jmp 	L_gen_matrix_buf_rejection$11
L_gen_matrix_buf_rejection$10:
	movq	$-1, %rbp
	cmovnbe	%rbp, %r11
	movl	%r12d, (%r10,%r13,2)
	shrq	$32, %r12
	addq	$2, %r13
L_gen_matrix_buf_rejection$11:
	cmpq	$255, %r13
	jbe 	L_gen_matrix_buf_rejection$8
	movq	$-1, %rbp
	cmovbe	%rbp, %r11
	jmp 	L_gen_matrix_buf_rejection$7
L_gen_matrix_buf_rejection$8:
	movq	$-1, %rbp
	cmovnbe	%rbp, %r11
	movw	%r12w, (%r10,%r13,2)
L_gen_matrix_buf_rejection$9:
	jmp 	L_gen_matrix_buf_rejection$7
L_gen_matrix_buf_rejection$6:
	movq	$-1, %rbp
	cmovnbe	%rbp, %r11
	vmovdqu	%xmm5, (%r10,%r13,2)
L_gen_matrix_buf_rejection$7:
	movq	%r14, %rbp
	movq	8(%rsp), %r13
	orq 	%r11, %r13
	addq	$24, %r13
L_gen_matrix_buf_rejection$5:
L_gen_matrix_buf_rejection$2:
	cmpq	$481, %r13
	jb  	L_gen_matrix_buf_rejection$3
	ret
L_i_poly_decompress$1:
	leaq	glob_data + 992(%rip), %rdi
	vmovdqu	(%rdi), %ymm0
	leaq	glob_data + 192(%rip), %rdi
	vmovdqu	(%rdi), %ymm1
	vpbroadcastd	glob_data + 4964(%rip), %ymm3
	vpbroadcastd	glob_data + 4960(%rip), %ymm2
	vmovq	(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, (%rcx)
	vmovq	8(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 32(%rcx)
	vmovq	16(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 64(%rcx)
	vmovq	24(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 96(%rcx)
	vmovq	32(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 128(%rcx)
	vmovq	40(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 160(%rcx)
	vmovq	48(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 192(%rcx)
	vmovq	56(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 224(%rcx)
	vmovq	64(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 256(%rcx)
	vmovq	72(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 288(%rcx)
	vmovq	80(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 320(%rcx)
	vmovq	88(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 352(%rcx)
	vmovq	96(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 384(%rcx)
	vmovq	104(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 416(%rcx)
	vmovq	112(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm4
	vpmullw	%ymm2, %ymm4, %ymm4
	vpmulhrsw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm4, 448(%rcx)
	vmovq	120(%rsi), %xmm4
	vmovdqu	%xmm4, 16(%rsp)
	vbroadcasti128	16(%rsp), %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpand	%ymm3, %ymm4, %ymm3
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmulhrsw	%ymm0, %ymm3, %ymm3
	vmovdqu	%ymm3, 480(%rcx)
	ret
L_i_poly_compress$1:
	call	L_poly_csubq$1
L_i_poly_compress$2:
	leaq	glob_data + 928(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	vpbroadcastw	glob_data + 4978(%rip), %ymm3
	vpbroadcastw	glob_data + 4976(%rip), %ymm4
	vpbroadcastw	glob_data + 4974(%rip), %ymm5
	vmovdqu	glob_data + 224(%rip), %ymm1
	vmovdqu	(%rsi), %ymm8
	vmovdqu	32(%rsi), %ymm9
	vmovdqu	64(%rsi), %ymm10
	vmovdqu	96(%rsi), %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm9, %ymm9
	vpmulhrsw	%ymm3, %ymm10, %ymm10
	vpmulhrsw	%ymm3, %ymm2, %ymm2
	vpand	%ymm4, %ymm8, %ymm8
	vpand	%ymm4, %ymm9, %ymm9
	vpand	%ymm4, %ymm10, %ymm10
	vpand	%ymm4, %ymm2, %ymm2
	vpackuswb	%ymm9, %ymm8, %ymm8
	vpackuswb	%ymm2, %ymm10, %ymm10
	vpmaddubsw	%ymm5, %ymm8, %ymm8
	vpmaddubsw	%ymm5, %ymm10, %ymm10
	vpackuswb	%ymm10, %ymm8, %ymm8
	vpermd	%ymm8, %ymm1, %ymm8
	vmovdqu	%ymm8, (%rax)
	vmovdqu	128(%rsi), %ymm8
	vmovdqu	160(%rsi), %ymm9
	vmovdqu	192(%rsi), %ymm10
	vmovdqu	224(%rsi), %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm9, %ymm9
	vpmulhrsw	%ymm3, %ymm10, %ymm10
	vpmulhrsw	%ymm3, %ymm2, %ymm2
	vpand	%ymm4, %ymm8, %ymm8
	vpand	%ymm4, %ymm9, %ymm9
	vpand	%ymm4, %ymm10, %ymm10
	vpand	%ymm4, %ymm2, %ymm2
	vpackuswb	%ymm9, %ymm8, %ymm8
	vpackuswb	%ymm2, %ymm10, %ymm10
	vpmaddubsw	%ymm5, %ymm8, %ymm8
	vpmaddubsw	%ymm5, %ymm10, %ymm10
	vpackuswb	%ymm10, %ymm8, %ymm8
	vpermd	%ymm8, %ymm1, %ymm8
	vmovdqu	%ymm8, 32(%rax)
	vmovdqu	256(%rsi), %ymm8
	vmovdqu	288(%rsi), %ymm9
	vmovdqu	320(%rsi), %ymm10
	vmovdqu	352(%rsi), %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm9, %ymm9
	vpmulhrsw	%ymm3, %ymm10, %ymm10
	vpmulhrsw	%ymm3, %ymm2, %ymm2
	vpand	%ymm4, %ymm8, %ymm8
	vpand	%ymm4, %ymm9, %ymm9
	vpand	%ymm4, %ymm10, %ymm10
	vpand	%ymm4, %ymm2, %ymm2
	vpackuswb	%ymm9, %ymm8, %ymm8
	vpackuswb	%ymm2, %ymm10, %ymm10
	vpmaddubsw	%ymm5, %ymm8, %ymm8
	vpmaddubsw	%ymm5, %ymm10, %ymm10
	vpackuswb	%ymm10, %ymm8, %ymm8
	vpermd	%ymm8, %ymm1, %ymm8
	vmovdqu	%ymm8, 64(%rax)
	vmovdqu	384(%rsi), %ymm8
	vmovdqu	416(%rsi), %ymm9
	vmovdqu	448(%rsi), %ymm10
	vmovdqu	480(%rsi), %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpmulhrsw	%ymm3, %ymm8, %ymm8
	vpmulhrsw	%ymm3, %ymm9, %ymm9
	vpmulhrsw	%ymm3, %ymm10, %ymm10
	vpmulhrsw	%ymm3, %ymm2, %ymm2
	vpand	%ymm4, %ymm8, %ymm8
	vpand	%ymm4, %ymm9, %ymm9
	vpand	%ymm4, %ymm10, %ymm10
	vpand	%ymm4, %ymm2, %ymm2
	vpackuswb	%ymm9, %ymm8, %ymm4
	vpackuswb	%ymm2, %ymm10, %ymm10
	vpmaddubsw	%ymm5, %ymm4, %ymm4
	vpmaddubsw	%ymm5, %ymm10, %ymm10
	vpackuswb	%ymm10, %ymm4, %ymm4
	vpermd	%ymm4, %ymm1, %ymm4
	vmovdqu	%ymm4, 96(%rax)
	ret
L_i_poly_tomsg$1:
	call	L_poly_csubq$1
L_i_poly_tomsg$2:
	leaq	glob_data + 768(%rip), %rcx
	vmovdqu	(%rcx), %ymm0
	leaq	glob_data + 736(%rip), %rcx
	vmovdqu	(%rcx), %ymm1
	vmovdqu	(%rsi), %ymm4
	vmovdqu	32(%rsi), %ymm5
	vpsubw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm5, %ymm0, %ymm5
	vpsraw	$15, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpxor	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpacksswb	%ymm5, %ymm4, %ymm4
	vpermq	$216, %ymm4, %ymm4
	vpmovmskb	%ymm4, %r14d
	movl	%r14d, (%rax)
	vmovdqu	64(%rsi), %ymm4
	vmovdqu	96(%rsi), %ymm5
	vpsubw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm5, %ymm0, %ymm5
	vpsraw	$15, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpxor	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpacksswb	%ymm5, %ymm4, %ymm4
	vpermq	$216, %ymm4, %ymm4
	vpmovmskb	%ymm4, %r14d
	movl	%r14d, 4(%rax)
	vmovdqu	128(%rsi), %ymm4
	vmovdqu	160(%rsi), %ymm5
	vpsubw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm5, %ymm0, %ymm5
	vpsraw	$15, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpxor	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpacksswb	%ymm5, %ymm4, %ymm4
	vpermq	$216, %ymm4, %ymm4
	vpmovmskb	%ymm4, %r14d
	movl	%r14d, 8(%rax)
	vmovdqu	192(%rsi), %ymm4
	vmovdqu	224(%rsi), %ymm5
	vpsubw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm5, %ymm0, %ymm5
	vpsraw	$15, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpxor	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpacksswb	%ymm5, %ymm4, %ymm4
	vpermq	$216, %ymm4, %ymm4
	vpmovmskb	%ymm4, %r14d
	movl	%r14d, 12(%rax)
	vmovdqu	256(%rsi), %ymm4
	vmovdqu	288(%rsi), %ymm5
	vpsubw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm5, %ymm0, %ymm5
	vpsraw	$15, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpxor	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpacksswb	%ymm5, %ymm4, %ymm4
	vpermq	$216, %ymm4, %ymm4
	vpmovmskb	%ymm4, %r14d
	movl	%r14d, 16(%rax)
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm5
	vpsubw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm5, %ymm0, %ymm5
	vpsraw	$15, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpxor	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpacksswb	%ymm5, %ymm4, %ymm4
	vpermq	$216, %ymm4, %ymm4
	vpmovmskb	%ymm4, %r14d
	movl	%r14d, 20(%rax)
	vmovdqu	384(%rsi), %ymm4
	vmovdqu	416(%rsi), %ymm5
	vpsubw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm5, %ymm0, %ymm5
	vpsraw	$15, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpxor	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpacksswb	%ymm5, %ymm4, %ymm4
	vpermq	$216, %ymm4, %ymm4
	vpmovmskb	%ymm4, %r14d
	movl	%r14d, 24(%rax)
	vmovdqu	448(%rsi), %ymm4
	vmovdqu	480(%rsi), %ymm5
	vpsubw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm5, %ymm0, %ymm5
	vpsraw	$15, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm7
	vpxor	%ymm6, %ymm4, %ymm4
	vpxor	%ymm7, %ymm5, %ymm5
	vpsubw	%ymm1, %ymm4, %ymm4
	vpsubw	%ymm1, %ymm5, %ymm5
	vpacksswb	%ymm5, %ymm4, %ymm4
	vpermq	$216, %ymm4, %ymm4
	vpmovmskb	%ymm4, %r14d
	movl	%r14d, 28(%rax)
	ret
L_i_poly_tobytes$1:
	call	L_poly_csubq$1
L_i_poly_tobytes$2:
	vmovdqu	(%rsi), %ymm6
	vmovdqu	32(%rsi), %ymm7
	vmovdqu	64(%rsi), %ymm4
	vmovdqu	96(%rsi), %ymm10
	vmovdqu	128(%rsi), %ymm1
	vmovdqu	160(%rsi), %ymm5
	vmovdqu	192(%rsi), %ymm2
	vmovdqu	224(%rsi), %ymm12
	vpsllw	$12, %ymm7, %ymm0
	vpor	%ymm6, %ymm0, %ymm3
	vpsrlw	$4, %ymm7, %ymm6
	vpsllw	$8, %ymm4, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpsrlw	$8, %ymm4, %ymm7
	vpsllw	$4, %ymm10, %ymm4
	vpor	%ymm4, %ymm7, %ymm4
	vpsllw	$12, %ymm5, %ymm8
	vpor	%ymm1, %ymm8, %ymm1
	vpsrlw	$4, %ymm5, %ymm10
	vpsllw	$8, %ymm2, %ymm11
	vpor	%ymm11, %ymm10, %ymm5
	vpsrlw	$8, %ymm2, %ymm10
	vpsllw	$4, %ymm12, %ymm7
	vpor	%ymm7, %ymm10, %ymm2
	vpslld	$16, %ymm6, %ymm15
	vpblendw	$170, %ymm15, %ymm3, %ymm7
	vpsrld	$16, %ymm3, %ymm3
	vpblendw	$170, %ymm6, %ymm3, %ymm3
	vpslld	$16, %ymm1, %ymm6
	vpblendw	$170, %ymm6, %ymm4, %ymm8
	vpsrld	$16, %ymm4, %ymm9
	vpblendw	$170, %ymm1, %ymm9, %ymm4
	vpslld	$16, %ymm2, %ymm6
	vpblendw	$170, %ymm6, %ymm5, %ymm9
	vpsrld	$16, %ymm5, %ymm14
	vpblendw	$170, %ymm2, %ymm14, %ymm1
	vmovsldup	%ymm8, %ymm2
	vpblendd	$170, %ymm2, %ymm7, %ymm6
	vpsrlq	$32, %ymm7, %ymm2
	vpblendd	$170, %ymm8, %ymm2, %ymm0
	vmovsldup	%ymm3, %ymm2
	vpblendd	$170, %ymm2, %ymm9, %ymm2
	vpsrlq	$32, %ymm9, %ymm5
	vpblendd	$170, %ymm3, %ymm5, %ymm3
	vmovsldup	%ymm1, %ymm15
	vpblendd	$170, %ymm15, %ymm4, %ymm5
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm1, %ymm4, %ymm1
	vpunpcklqdq	%ymm2, %ymm6, %ymm4
	vpunpckhqdq	%ymm2, %ymm6, %ymm2
	vpunpcklqdq	%ymm0, %ymm5, %ymm6
	vpunpckhqdq	%ymm0, %ymm5, %ymm5
	vpunpcklqdq	%ymm1, %ymm3, %ymm7
	vpunpckhqdq	%ymm1, %ymm3, %ymm1
	vperm2i128	$32, %ymm6, %ymm4, %ymm15
	vperm2i128	$49, %ymm6, %ymm4, %ymm6
	vperm2i128	$32, %ymm2, %ymm7, %ymm4
	vperm2i128	$49, %ymm2, %ymm7, %ymm0
	vperm2i128	$32, %ymm1, %ymm5, %ymm3
	vperm2i128	$49, %ymm1, %ymm5, %ymm1
	vmovdqu	%ymm15, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	%ymm3, 64(%rcx)
	vmovdqu	%ymm6, 96(%rcx)
	vmovdqu	%ymm0, 128(%rcx)
	vmovdqu	%ymm1, 160(%rcx)
	vmovdqu	256(%rsi), %ymm6
	vmovdqu	288(%rsi), %ymm7
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm10
	vmovdqu	384(%rsi), %ymm1
	vmovdqu	416(%rsi), %ymm5
	vmovdqu	448(%rsi), %ymm2
	vmovdqu	480(%rsi), %ymm12
	vpsllw	$12, %ymm7, %ymm0
	vpor	%ymm6, %ymm0, %ymm3
	vpsrlw	$4, %ymm7, %ymm6
	vpsllw	$8, %ymm4, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpsrlw	$8, %ymm4, %ymm7
	vpsllw	$4, %ymm10, %ymm4
	vpor	%ymm4, %ymm7, %ymm4
	vpsllw	$12, %ymm5, %ymm8
	vpor	%ymm1, %ymm8, %ymm1
	vpsrlw	$4, %ymm5, %ymm10
	vpsllw	$8, %ymm2, %ymm11
	vpor	%ymm11, %ymm10, %ymm5
	vpsrlw	$8, %ymm2, %ymm10
	vpsllw	$4, %ymm12, %ymm7
	vpor	%ymm7, %ymm10, %ymm2
	vpslld	$16, %ymm6, %ymm15
	vpblendw	$170, %ymm15, %ymm3, %ymm7
	vpsrld	$16, %ymm3, %ymm3
	vpblendw	$170, %ymm6, %ymm3, %ymm3
	vpslld	$16, %ymm1, %ymm6
	vpblendw	$170, %ymm6, %ymm4, %ymm6
	vpsrld	$16, %ymm4, %ymm8
	vpblendw	$170, %ymm1, %ymm8, %ymm4
	vpslld	$16, %ymm2, %ymm15
	vpblendw	$170, %ymm15, %ymm5, %ymm9
	vpsrld	$16, %ymm5, %ymm8
	vpblendw	$170, %ymm2, %ymm8, %ymm1
	vmovsldup	%ymm6, %ymm2
	vpblendd	$170, %ymm2, %ymm7, %ymm2
	vpsrlq	$32, %ymm7, %ymm5
	vpblendd	$170, %ymm6, %ymm5, %ymm0
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm9, %ymm5
	vpsrlq	$32, %ymm9, %ymm7
	vpblendd	$170, %ymm3, %ymm7, %ymm6
	vmovsldup	%ymm1, %ymm15
	vpblendd	$170, %ymm15, %ymm4, %ymm3
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm1, %ymm4, %ymm1
	vpunpcklqdq	%ymm5, %ymm2, %ymm4
	vpunpckhqdq	%ymm5, %ymm2, %ymm2
	vpunpcklqdq	%ymm0, %ymm3, %ymm5
	vpunpckhqdq	%ymm0, %ymm3, %ymm3
	vpunpcklqdq	%ymm1, %ymm6, %ymm7
	vpunpckhqdq	%ymm1, %ymm6, %ymm1
	vperm2i128	$32, %ymm5, %ymm4, %ymm6
	vperm2i128	$49, %ymm5, %ymm4, %ymm10
	vperm2i128	$32, %ymm2, %ymm7, %ymm4
	vperm2i128	$49, %ymm2, %ymm7, %ymm0
	vperm2i128	$32, %ymm1, %ymm3, %ymm7
	vperm2i128	$49, %ymm1, %ymm3, %ymm1
	vmovdqu	%ymm6, 192(%rcx)
	vmovdqu	%ymm4, 224(%rcx)
	vmovdqu	%ymm7, 256(%rcx)
	vmovdqu	%ymm10, 288(%rcx)
	vmovdqu	%ymm0, 320(%rcx)
	vmovdqu	%ymm1, 352(%rcx)
	ret
L_poly_sub$1:
	vmovdqu	(%rsi), %ymm2
	vmovdqu	(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	32(%rsi), %ymm2
	vmovdqu	32(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 32(%rcx)
	vmovdqu	64(%rsi), %ymm2
	vmovdqu	64(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 64(%rcx)
	vmovdqu	96(%rsi), %ymm2
	vmovdqu	96(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 96(%rcx)
	vmovdqu	128(%rsi), %ymm2
	vmovdqu	128(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	160(%rsi), %ymm2
	vmovdqu	160(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 160(%rcx)
	vmovdqu	192(%rsi), %ymm2
	vmovdqu	192(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 192(%rcx)
	vmovdqu	224(%rsi), %ymm2
	vmovdqu	224(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 224(%rcx)
	vmovdqu	256(%rsi), %ymm2
	vmovdqu	256(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 256(%rcx)
	vmovdqu	288(%rsi), %ymm2
	vmovdqu	288(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 288(%rcx)
	vmovdqu	320(%rsi), %ymm2
	vmovdqu	320(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 320(%rcx)
	vmovdqu	352(%rsi), %ymm2
	vmovdqu	352(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 352(%rcx)
	vmovdqu	384(%rsi), %ymm2
	vmovdqu	384(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	416(%rsi), %ymm2
	vmovdqu	416(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 416(%rcx)
	vmovdqu	448(%rsi), %ymm2
	vmovdqu	448(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 448(%rcx)
	vmovdqu	480(%rsi), %ymm2
	vmovdqu	480(%rdi), %ymm1
	vpsubw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rcx)
	ret
L_poly_ntt$1:
	vmovdqu	glob_data + 992(%rip), %ymm0
	vpbroadcastd	glob_data + 1824(%rip), %ymm2
	vpbroadcastd	glob_data + 1828(%rip), %ymm4
	vmovdqu	(%rcx), %ymm8
	vmovdqu	32(%rcx), %ymm14
	vmovdqu	64(%rcx), %ymm1
	vmovdqu	96(%rcx), %ymm3
	vmovdqu	256(%rcx), %ymm9
	vmovdqu	288(%rcx), %ymm10
	vmovdqu	320(%rcx), %ymm5
	vmovdqu	352(%rcx), %ymm12
	vpmullw	%ymm9, %ymm2, %ymm6
	vpmulhw	%ymm9, %ymm4, %ymm7
	vpmullw	%ymm10, %ymm2, %ymm9
	vpmulhw	%ymm10, %ymm4, %ymm15
	vpmullw	%ymm5, %ymm2, %ymm10
	vpmulhw	%ymm5, %ymm4, %ymm5
	vpmullw	%ymm12, %ymm2, %ymm11
	vpmulhw	%ymm12, %ymm4, %ymm12
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm9, %ymm9
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm11, %ymm11
	vpsubw	%ymm15, %ymm14, %ymm13
	vpaddw	%ymm14, %ymm15, %ymm14
	vpsubw	%ymm7, %ymm8, %ymm15
	vpaddw	%ymm8, %ymm7, %ymm8
	vpsubw	%ymm12, %ymm3, %ymm7
	vpaddw	%ymm3, %ymm12, %ymm3
	vpsubw	%ymm5, %ymm1, %ymm12
	vpaddw	%ymm1, %ymm5, %ymm1
	vpaddw	%ymm15, %ymm6, %ymm5
	vpsubw	%ymm6, %ymm8, %ymm6
	vpaddw	%ymm13, %ymm9, %ymm8
	vpsubw	%ymm9, %ymm14, %ymm9
	vpaddw	%ymm12, %ymm10, %ymm12
	vpsubw	%ymm10, %ymm1, %ymm10
	vpaddw	%ymm7, %ymm11, %ymm1
	vpsubw	%ymm11, %ymm3, %ymm7
	vmovdqu	%ymm6, (%rcx)
	vmovdqu	%ymm9, 32(%rcx)
	vmovdqu	%ymm10, 64(%rcx)
	vmovdqu	%ymm7, 96(%rcx)
	vmovdqu	%ymm5, 256(%rcx)
	vmovdqu	%ymm8, 288(%rcx)
	vmovdqu	%ymm12, 320(%rcx)
	vmovdqu	%ymm1, 352(%rcx)
	vmovdqu	128(%rcx), %ymm3
	vmovdqu	160(%rcx), %ymm6
	vmovdqu	192(%rcx), %ymm1
	vmovdqu	224(%rcx), %ymm5
	vmovdqu	384(%rcx), %ymm9
	vmovdqu	416(%rcx), %ymm10
	vmovdqu	448(%rcx), %ymm13
	vmovdqu	480(%rcx), %ymm12
	vpmullw	%ymm9, %ymm2, %ymm15
	vpmulhw	%ymm9, %ymm4, %ymm7
	vpmullw	%ymm10, %ymm2, %ymm9
	vpmulhw	%ymm10, %ymm4, %ymm14
	vpmullw	%ymm13, %ymm2, %ymm10
	vpmulhw	%ymm13, %ymm4, %ymm8
	vpmullw	%ymm12, %ymm2, %ymm11
	vpmulhw	%ymm12, %ymm4, %ymm12
	vpmulhw	%ymm0, %ymm15, %ymm2
	vpmulhw	%ymm0, %ymm9, %ymm4
	vpmulhw	%ymm0, %ymm10, %ymm10
	vpmulhw	%ymm0, %ymm11, %ymm11
	vpsubw	%ymm14, %ymm6, %ymm13
	vpaddw	%ymm6, %ymm14, %ymm6
	vpsubw	%ymm7, %ymm3, %ymm9
	vpaddw	%ymm3, %ymm7, %ymm3
	vpsubw	%ymm12, %ymm5, %ymm7
	vpaddw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm1, %ymm12
	vpaddw	%ymm1, %ymm8, %ymm1
	vpaddw	%ymm9, %ymm2, %ymm8
	vpsubw	%ymm2, %ymm3, %ymm3
	vpaddw	%ymm13, %ymm4, %ymm9
	vpsubw	%ymm4, %ymm6, %ymm6
	vpaddw	%ymm12, %ymm10, %ymm12
	vpsubw	%ymm10, %ymm1, %ymm10
	vpaddw	%ymm7, %ymm11, %ymm1
	vpsubw	%ymm11, %ymm5, %ymm13
	vmovdqu	%ymm8, 384(%rcx)
	vmovdqu	%ymm9, 416(%rcx)
	vmovdqu	%ymm12, 448(%rcx)
	vmovdqu	%ymm1, 480(%rcx)
	vpbroadcastd	glob_data + 1832(%rip), %ymm2
	vpbroadcastd	glob_data + 1836(%rip), %ymm4
	vmovdqu	%ymm3, %ymm9
	vmovdqu	%ymm6, %ymm14
	vmovdqu	%ymm10, %ymm12
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm6
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm5
	vpmullw	%ymm9, %ymm2, %ymm15
	vpmulhw	%ymm9, %ymm4, %ymm9
	vpmullw	%ymm14, %ymm2, %ymm11
	vpmulhw	%ymm14, %ymm4, %ymm10
	vpmullw	%ymm12, %ymm2, %ymm1
	vpmulhw	%ymm12, %ymm4, %ymm8
	vpmullw	%ymm13, %ymm2, %ymm2
	vpmulhw	%ymm13, %ymm4, %ymm12
	vpmulhw	%ymm0, %ymm15, %ymm15
	vpmulhw	%ymm0, %ymm11, %ymm4
	vpmulhw	%ymm0, %ymm1, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm10, %ymm6, %ymm13
	vpaddw	%ymm6, %ymm10, %ymm6
	vpsubw	%ymm9, %ymm3, %ymm11
	vpaddw	%ymm3, %ymm9, %ymm10
	vpsubw	%ymm12, %ymm5, %ymm3
	vpaddw	%ymm5, %ymm12, %ymm5
	vpsubw	%ymm8, %ymm7, %ymm9
	vpaddw	%ymm7, %ymm8, %ymm12
	vpaddw	%ymm11, %ymm15, %ymm7
	vpsubw	%ymm15, %ymm10, %ymm10
	vpaddw	%ymm13, %ymm4, %ymm8
	vpsubw	%ymm4, %ymm6, %ymm4
	vpaddw	%ymm9, %ymm1, %ymm6
	vpsubw	%ymm1, %ymm12, %ymm11
	vpaddw	%ymm3, %ymm2, %ymm1
	vpsubw	%ymm2, %ymm5, %ymm12
	vmovdqu	glob_data + 1840(%rip), %ymm5
	vmovdqu	glob_data + 1872(%rip), %ymm3
	vperm2i128	$32, %ymm7, %ymm10, %ymm9
	vperm2i128	$49, %ymm7, %ymm10, %ymm7
	vperm2i128	$32, %ymm8, %ymm4, %ymm2
	vperm2i128	$49, %ymm8, %ymm4, %ymm8
	vperm2i128	$32, %ymm6, %ymm11, %ymm15
	vperm2i128	$49, %ymm6, %ymm11, %ymm10
	vperm2i128	$32, %ymm1, %ymm12, %ymm13
	vperm2i128	$49, %ymm1, %ymm12, %ymm12
	vpmullw	%ymm15, %ymm5, %ymm6
	vpmulhw	%ymm15, %ymm3, %ymm14
	vpmullw	%ymm10, %ymm5, %ymm4
	vpmulhw	%ymm10, %ymm3, %ymm10
	vpmullw	%ymm13, %ymm5, %ymm11
	vpmulhw	%ymm13, %ymm3, %ymm1
	vpmullw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm12, %ymm3, %ymm12
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm3
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm10, %ymm7, %ymm13
	vpaddw	%ymm7, %ymm10, %ymm10
	vpsubw	%ymm14, %ymm9, %ymm11
	vpaddw	%ymm9, %ymm14, %ymm9
	vpsubw	%ymm12, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm1, %ymm2, %ymm12
	vpaddw	%ymm2, %ymm1, %ymm2
	vpaddw	%ymm11, %ymm6, %ymm1
	vpsubw	%ymm6, %ymm9, %ymm9
	vpaddw	%ymm13, %ymm4, %ymm6
	vpsubw	%ymm4, %ymm10, %ymm4
	vpaddw	%ymm12, %ymm3, %ymm10
	vpsubw	%ymm3, %ymm2, %ymm13
	vpaddw	%ymm7, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm8, %ymm14
	vmovdqu	glob_data + 1904(%rip), %ymm2
	vmovdqu	glob_data + 1936(%rip), %ymm11
	vpunpcklqdq	%ymm1, %ymm9, %ymm8
	vpunpckhqdq	%ymm1, %ymm9, %ymm3
	vpunpcklqdq	%ymm6, %ymm4, %ymm12
	vpunpckhqdq	%ymm6, %ymm4, %ymm5
	vpunpcklqdq	%ymm10, %ymm13, %ymm9
	vpunpckhqdq	%ymm10, %ymm13, %ymm10
	vpunpcklqdq	%ymm7, %ymm14, %ymm13
	vpunpckhqdq	%ymm7, %ymm14, %ymm14
	vpmullw	%ymm9, %ymm2, %ymm6
	vpmulhw	%ymm9, %ymm11, %ymm9
	vpmullw	%ymm10, %ymm2, %ymm4
	vpmulhw	%ymm10, %ymm11, %ymm10
	vpmullw	%ymm13, %ymm2, %ymm1
	vpmulhw	%ymm13, %ymm11, %ymm7
	vpmullw	%ymm14, %ymm2, %ymm2
	vpmulhw	%ymm14, %ymm11, %ymm14
	vpmulhw	%ymm0, %ymm6, %ymm15
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm1, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm10, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm10, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm11
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm14, %ymm5, %ymm3
	vpaddw	%ymm5, %ymm14, %ymm5
	vpsubw	%ymm7, %ymm12, %ymm9
	vpaddw	%ymm12, %ymm7, %ymm12
	vpaddw	%ymm11, %ymm15, %ymm7
	vpsubw	%ymm15, %ymm8, %ymm10
	vpaddw	%ymm13, %ymm4, %ymm8
	vpsubw	%ymm4, %ymm6, %ymm4
	vpaddw	%ymm9, %ymm1, %ymm6
	vpsubw	%ymm1, %ymm12, %ymm11
	vpaddw	%ymm3, %ymm2, %ymm1
	vpsubw	%ymm2, %ymm5, %ymm12
	vmovdqu	glob_data + 1968(%rip), %ymm5
	vmovdqu	glob_data + 2000(%rip), %ymm3
	vmovsldup	%ymm7, %ymm2
	vpblendd	$170, %ymm2, %ymm10, %ymm9
	vpsrlq	$32, %ymm10, %ymm2
	vpblendd	$170, %ymm7, %ymm2, %ymm10
	vmovsldup	%ymm8, %ymm2
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm8, %ymm4, %ymm8
	vmovsldup	%ymm6, %ymm15
	vpblendd	$170, %ymm15, %ymm11, %ymm15
	vpsrlq	$32, %ymm11, %ymm4
	vpblendd	$170, %ymm6, %ymm4, %ymm14
	vmovsldup	%ymm1, %ymm6
	vpblendd	$170, %ymm6, %ymm12, %ymm13
	vpsrlq	$32, %ymm12, %ymm4
	vpblendd	$170, %ymm1, %ymm4, %ymm12
	vpmullw	%ymm15, %ymm5, %ymm6
	vpmulhw	%ymm15, %ymm3, %ymm7
	vpmullw	%ymm14, %ymm5, %ymm4
	vpmulhw	%ymm14, %ymm3, %ymm14
	vpmullw	%ymm13, %ymm5, %ymm11
	vpmulhw	%ymm13, %ymm3, %ymm1
	vpmullw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm12, %ymm3, %ymm12
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm3
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm14, %ymm10, %ymm13
	vpaddw	%ymm10, %ymm14, %ymm10
	vpsubw	%ymm7, %ymm9, %ymm11
	vpaddw	%ymm9, %ymm7, %ymm9
	vpsubw	%ymm12, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm1, %ymm2, %ymm12
	vpaddw	%ymm2, %ymm1, %ymm2
	vpaddw	%ymm11, %ymm6, %ymm1
	vpsubw	%ymm6, %ymm9, %ymm9
	vpaddw	%ymm13, %ymm4, %ymm6
	vpsubw	%ymm4, %ymm10, %ymm4
	vpaddw	%ymm12, %ymm3, %ymm10
	vpsubw	%ymm3, %ymm2, %ymm11
	vpaddw	%ymm7, %ymm5, %ymm13
	vpsubw	%ymm5, %ymm8, %ymm14
	vmovdqu	glob_data + 2032(%rip), %ymm5
	vmovdqu	glob_data + 2064(%rip), %ymm3
	vpslld	$16, %ymm1, %ymm2
	vpblendw	$170, %ymm2, %ymm9, %ymm8
	vpsrld	$16, %ymm9, %ymm7
	vpblendw	$170, %ymm1, %ymm7, %ymm7
	vpslld	$16, %ymm6, %ymm2
	vpblendw	$170, %ymm2, %ymm4, %ymm2
	vpsrld	$16, %ymm4, %ymm9
	vpblendw	$170, %ymm6, %ymm9, %ymm12
	vpslld	$16, %ymm10, %ymm6
	vpblendw	$170, %ymm6, %ymm11, %ymm9
	vpsrld	$16, %ymm11, %ymm1
	vpblendw	$170, %ymm10, %ymm1, %ymm10
	vpslld	$16, %ymm13, %ymm6
	vpblendw	$170, %ymm6, %ymm14, %ymm1
	vpsrld	$16, %ymm14, %ymm14
	vpblendw	$170, %ymm13, %ymm14, %ymm13
	vpmullw	%ymm9, %ymm5, %ymm6
	vpmulhw	%ymm9, %ymm3, %ymm9
	vpmullw	%ymm10, %ymm5, %ymm4
	vpmulhw	%ymm10, %ymm3, %ymm10
	vpmullw	%ymm1, %ymm5, %ymm11
	vpmulhw	%ymm1, %ymm3, %ymm1
	vpmullw	%ymm13, %ymm5, %ymm5
	vpmulhw	%ymm13, %ymm3, %ymm14
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm3
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm10, %ymm7, %ymm13
	vpaddw	%ymm7, %ymm10, %ymm10
	vpsubw	%ymm9, %ymm8, %ymm11
	vpaddw	%ymm8, %ymm9, %ymm9
	vpsubw	%ymm14, %ymm12, %ymm7
	vpaddw	%ymm12, %ymm14, %ymm8
	vpsubw	%ymm1, %ymm2, %ymm12
	vpaddw	%ymm2, %ymm1, %ymm2
	vpaddw	%ymm11, %ymm6, %ymm1
	vpsubw	%ymm6, %ymm9, %ymm9
	vpaddw	%ymm13, %ymm4, %ymm6
	vpsubw	%ymm4, %ymm10, %ymm10
	vpaddw	%ymm12, %ymm3, %ymm4
	vpsubw	%ymm3, %ymm2, %ymm11
	vpaddw	%ymm7, %ymm5, %ymm3
	vpsubw	%ymm5, %ymm8, %ymm13
	vmovdqu	glob_data + 2096(%rip), %ymm5
	vmovdqu	glob_data + 2128(%rip), %ymm14
	vmovdqu	glob_data + 2160(%rip), %ymm12
	vmovdqu	glob_data + 2192(%rip), %ymm2
	vpmullw	%ymm11, %ymm5, %ymm15
	vpmulhw	%ymm11, %ymm14, %ymm7
	vpmullw	%ymm13, %ymm5, %ymm8
	vpmulhw	%ymm13, %ymm14, %ymm14
	vpmullw	%ymm4, %ymm12, %ymm11
	vpmulhw	%ymm4, %ymm2, %ymm5
	vpmullw	%ymm3, %ymm12, %ymm13
	vpmulhw	%ymm3, %ymm2, %ymm12
	vpmulhw	%ymm0, %ymm15, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm3
	vpmulhw	%ymm0, %ymm13, %ymm11
	vpsubw	%ymm14, %ymm10, %ymm13
	vpaddw	%ymm10, %ymm14, %ymm10
	vpsubw	%ymm7, %ymm9, %ymm15
	vpaddw	%ymm9, %ymm7, %ymm8
	vpsubw	%ymm12, %ymm6, %ymm7
	vpaddw	%ymm6, %ymm12, %ymm6
	vpsubw	%ymm5, %ymm1, %ymm9
	vpaddw	%ymm1, %ymm5, %ymm1
	vpaddw	%ymm15, %ymm2, %ymm5
	vpsubw	%ymm2, %ymm8, %ymm2
	vpaddw	%ymm13, %ymm4, %ymm8
	vpsubw	%ymm4, %ymm10, %ymm4
	vpaddw	%ymm9, %ymm3, %ymm9
	vpsubw	%ymm3, %ymm1, %ymm1
	vpaddw	%ymm7, %ymm11, %ymm3
	vpsubw	%ymm11, %ymm6, %ymm6
	vmovdqu	glob_data + 928(%rip), %ymm7
	vpmulhw	%ymm7, %ymm2, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm4, %ymm11
	vpmulhw	%ymm7, %ymm1, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm1, %ymm10
	vpmulhw	%ymm7, %ymm6, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm6, %ymm1
	vpmulhw	%ymm7, %ymm5, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm8, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm8, %ymm8
	vpmulhw	%ymm7, %ymm9, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm9, %ymm13
	vpmulhw	%ymm7, %ymm3, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm3, %ymm3
	vmovdqu	%ymm2, (%rcx)
	vmovdqu	%ymm11, 32(%rcx)
	vmovdqu	%ymm6, 64(%rcx)
	vmovdqu	%ymm8, 96(%rcx)
	vmovdqu	%ymm10, 128(%rcx)
	vmovdqu	%ymm1, 160(%rcx)
	vmovdqu	%ymm13, 192(%rcx)
	vmovdqu	%ymm3, 224(%rcx)
	vpbroadcastd	glob_data + 2224(%rip), %ymm2
	vpbroadcastd	glob_data + 2228(%rip), %ymm6
	vmovdqu	384(%rcx), %ymm9
	vmovdqu	416(%rcx), %ymm10
	vmovdqu	448(%rcx), %ymm5
	vmovdqu	480(%rcx), %ymm11
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	288(%rcx), %ymm7
	vmovdqu	320(%rcx), %ymm12
	vmovdqu	352(%rcx), %ymm4
	vpmullw	%ymm9, %ymm2, %ymm15
	vpmulhw	%ymm9, %ymm6, %ymm9
	vpmullw	%ymm10, %ymm2, %ymm8
	vpmulhw	%ymm10, %ymm6, %ymm10
	vpmullw	%ymm5, %ymm2, %ymm1
	vpmulhw	%ymm5, %ymm6, %ymm5
	vpmullw	%ymm11, %ymm2, %ymm2
	vpmulhw	%ymm11, %ymm6, %ymm14
	vpmulhw	%ymm0, %ymm15, %ymm6
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpmulhw	%ymm0, %ymm1, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm10, %ymm7, %ymm13
	vpaddw	%ymm7, %ymm10, %ymm7
	vpsubw	%ymm9, %ymm3, %ymm11
	vpaddw	%ymm3, %ymm9, %ymm10
	vpsubw	%ymm14, %ymm4, %ymm3
	vpaddw	%ymm4, %ymm14, %ymm4
	vpsubw	%ymm5, %ymm12, %ymm9
	vpaddw	%ymm12, %ymm5, %ymm12
	vpaddw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm6, %ymm10, %ymm10
	vpaddw	%ymm13, %ymm8, %ymm6
	vpsubw	%ymm8, %ymm7, %ymm7
	vpaddw	%ymm9, %ymm1, %ymm9
	vpsubw	%ymm1, %ymm12, %ymm11
	vpaddw	%ymm3, %ymm2, %ymm1
	vpsubw	%ymm2, %ymm4, %ymm13
	vmovdqu	glob_data + 2232(%rip), %ymm4
	vmovdqu	glob_data + 2264(%rip), %ymm3
	vperm2i128	$32, %ymm5, %ymm10, %ymm8
	vperm2i128	$49, %ymm5, %ymm10, %ymm10
	vperm2i128	$32, %ymm6, %ymm7, %ymm2
	vperm2i128	$49, %ymm6, %ymm7, %ymm12
	vperm2i128	$32, %ymm9, %ymm11, %ymm15
	vperm2i128	$49, %ymm9, %ymm11, %ymm14
	vperm2i128	$32, %ymm1, %ymm13, %ymm5
	vperm2i128	$49, %ymm1, %ymm13, %ymm13
	vpmullw	%ymm15, %ymm4, %ymm6
	vpmulhw	%ymm15, %ymm3, %ymm7
	vpmullw	%ymm14, %ymm4, %ymm9
	vpmulhw	%ymm14, %ymm3, %ymm15
	vpmullw	%ymm5, %ymm4, %ymm11
	vpmulhw	%ymm5, %ymm3, %ymm1
	vpmullw	%ymm13, %ymm4, %ymm5
	vpmulhw	%ymm13, %ymm3, %ymm14
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm9, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm3
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm15, %ymm10, %ymm13
	vpaddw	%ymm10, %ymm15, %ymm10
	vpsubw	%ymm7, %ymm8, %ymm11
	vpaddw	%ymm8, %ymm7, %ymm8
	vpsubw	%ymm14, %ymm12, %ymm7
	vpaddw	%ymm12, %ymm14, %ymm12
	vpsubw	%ymm1, %ymm2, %ymm9
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm11, %ymm6, %ymm2
	vpsubw	%ymm6, %ymm8, %ymm11
	vpaddw	%ymm13, %ymm4, %ymm6
	vpsubw	%ymm4, %ymm10, %ymm4
	vpaddw	%ymm9, %ymm3, %ymm9
	vpsubw	%ymm3, %ymm1, %ymm13
	vpaddw	%ymm7, %ymm5, %ymm7
	vpsubw	%ymm5, %ymm12, %ymm14
	vmovdqu	glob_data + 2296(%rip), %ymm1
	vmovdqu	glob_data + 2328(%rip), %ymm10
	vpunpcklqdq	%ymm2, %ymm11, %ymm8
	vpunpckhqdq	%ymm2, %ymm11, %ymm3
	vpunpcklqdq	%ymm6, %ymm4, %ymm12
	vpunpckhqdq	%ymm6, %ymm4, %ymm5
	vpunpcklqdq	%ymm9, %ymm13, %ymm6
	vpunpckhqdq	%ymm9, %ymm13, %ymm2
	vpunpcklqdq	%ymm7, %ymm14, %ymm13
	vpunpckhqdq	%ymm7, %ymm14, %ymm14
	vpmullw	%ymm6, %ymm1, %ymm15
	vpmulhw	%ymm6, %ymm10, %ymm9
	vpmullw	%ymm2, %ymm1, %ymm4
	vpmulhw	%ymm2, %ymm10, %ymm6
	vpmullw	%ymm13, %ymm1, %ymm11
	vpmulhw	%ymm13, %ymm10, %ymm7
	vpmullw	%ymm14, %ymm1, %ymm2
	vpmulhw	%ymm14, %ymm10, %ymm14
	vpmulhw	%ymm0, %ymm15, %ymm15
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm1
	vpmulhw	%ymm0, %ymm2, %ymm2
	vpsubw	%ymm6, %ymm3, %ymm13
	vpaddw	%ymm3, %ymm6, %ymm6
	vpsubw	%ymm9, %ymm8, %ymm11
	vpaddw	%ymm8, %ymm9, %ymm8
	vpsubw	%ymm14, %ymm5, %ymm3
	vpaddw	%ymm5, %ymm14, %ymm5
	vpsubw	%ymm7, %ymm12, %ymm9
	vpaddw	%ymm12, %ymm7, %ymm12
	vpaddw	%ymm11, %ymm15, %ymm7
	vpsubw	%ymm15, %ymm8, %ymm10
	vpaddw	%ymm13, %ymm4, %ymm8
	vpsubw	%ymm4, %ymm6, %ymm4
	vpaddw	%ymm9, %ymm1, %ymm6
	vpsubw	%ymm1, %ymm12, %ymm11
	vpaddw	%ymm3, %ymm2, %ymm1
	vpsubw	%ymm2, %ymm5, %ymm12
	vmovdqu	glob_data + 2360(%rip), %ymm5
	vmovdqu	glob_data + 2392(%rip), %ymm3
	vmovsldup	%ymm7, %ymm2
	vpblendd	$170, %ymm2, %ymm10, %ymm9
	vpsrlq	$32, %ymm10, %ymm2
	vpblendd	$170, %ymm7, %ymm2, %ymm7
	vmovsldup	%ymm8, %ymm2
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm8, %ymm4, %ymm8
	vmovsldup	%ymm6, %ymm15
	vpblendd	$170, %ymm15, %ymm11, %ymm15
	vpsrlq	$32, %ymm11, %ymm4
	vpblendd	$170, %ymm6, %ymm4, %ymm10
	vmovsldup	%ymm1, %ymm6
	vpblendd	$170, %ymm6, %ymm12, %ymm13
	vpsrlq	$32, %ymm12, %ymm4
	vpblendd	$170, %ymm1, %ymm4, %ymm12
	vpmullw	%ymm15, %ymm5, %ymm6
	vpmulhw	%ymm15, %ymm3, %ymm14
	vpmullw	%ymm10, %ymm5, %ymm4
	vpmulhw	%ymm10, %ymm3, %ymm10
	vpmullw	%ymm13, %ymm5, %ymm11
	vpmulhw	%ymm13, %ymm3, %ymm1
	vpmullw	%ymm12, %ymm5, %ymm5
	vpmulhw	%ymm12, %ymm3, %ymm12
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm3
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm10, %ymm7, %ymm13
	vpaddw	%ymm7, %ymm10, %ymm10
	vpsubw	%ymm14, %ymm9, %ymm11
	vpaddw	%ymm9, %ymm14, %ymm9
	vpsubw	%ymm12, %ymm8, %ymm7
	vpaddw	%ymm8, %ymm12, %ymm8
	vpsubw	%ymm1, %ymm2, %ymm12
	vpaddw	%ymm2, %ymm1, %ymm2
	vpaddw	%ymm11, %ymm6, %ymm1
	vpsubw	%ymm6, %ymm9, %ymm9
	vpaddw	%ymm13, %ymm4, %ymm6
	vpsubw	%ymm4, %ymm10, %ymm4
	vpaddw	%ymm12, %ymm3, %ymm10
	vpsubw	%ymm3, %ymm2, %ymm11
	vpaddw	%ymm7, %ymm5, %ymm13
	vpsubw	%ymm5, %ymm8, %ymm14
	vmovdqu	glob_data + 2424(%rip), %ymm5
	vmovdqu	glob_data + 2456(%rip), %ymm3
	vpslld	$16, %ymm1, %ymm2
	vpblendw	$170, %ymm2, %ymm9, %ymm8
	vpsrld	$16, %ymm9, %ymm7
	vpblendw	$170, %ymm1, %ymm7, %ymm7
	vpslld	$16, %ymm6, %ymm2
	vpblendw	$170, %ymm2, %ymm4, %ymm2
	vpsrld	$16, %ymm4, %ymm1
	vpblendw	$170, %ymm6, %ymm1, %ymm12
	vpslld	$16, %ymm10, %ymm6
	vpblendw	$170, %ymm6, %ymm11, %ymm9
	vpsrld	$16, %ymm11, %ymm1
	vpblendw	$170, %ymm10, %ymm1, %ymm10
	vpslld	$16, %ymm13, %ymm6
	vpblendw	$170, %ymm6, %ymm14, %ymm1
	vpsrld	$16, %ymm14, %ymm14
	vpblendw	$170, %ymm13, %ymm14, %ymm13
	vpmullw	%ymm9, %ymm5, %ymm6
	vpmulhw	%ymm9, %ymm3, %ymm9
	vpmullw	%ymm10, %ymm5, %ymm4
	vpmulhw	%ymm10, %ymm3, %ymm10
	vpmullw	%ymm1, %ymm5, %ymm11
	vpmulhw	%ymm1, %ymm3, %ymm1
	vpmullw	%ymm13, %ymm5, %ymm5
	vpmulhw	%ymm13, %ymm3, %ymm14
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm4, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm3
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm10, %ymm7, %ymm13
	vpaddw	%ymm7, %ymm10, %ymm10
	vpsubw	%ymm9, %ymm8, %ymm11
	vpaddw	%ymm8, %ymm9, %ymm9
	vpsubw	%ymm14, %ymm12, %ymm7
	vpaddw	%ymm12, %ymm14, %ymm8
	vpsubw	%ymm1, %ymm2, %ymm12
	vpaddw	%ymm2, %ymm1, %ymm2
	vpaddw	%ymm11, %ymm6, %ymm1
	vpsubw	%ymm6, %ymm9, %ymm9
	vpaddw	%ymm13, %ymm4, %ymm6
	vpsubw	%ymm4, %ymm10, %ymm10
	vpaddw	%ymm12, %ymm3, %ymm4
	vpsubw	%ymm3, %ymm2, %ymm11
	vpaddw	%ymm7, %ymm5, %ymm3
	vpsubw	%ymm5, %ymm8, %ymm13
	vmovdqu	glob_data + 2488(%rip), %ymm5
	vmovdqu	glob_data + 2520(%rip), %ymm14
	vmovdqu	glob_data + 2552(%rip), %ymm12
	vmovdqu	glob_data + 2584(%rip), %ymm2
	vpmullw	%ymm11, %ymm5, %ymm15
	vpmulhw	%ymm11, %ymm14, %ymm7
	vpmullw	%ymm13, %ymm5, %ymm8
	vpmulhw	%ymm13, %ymm14, %ymm14
	vpmullw	%ymm4, %ymm12, %ymm11
	vpmulhw	%ymm4, %ymm2, %ymm5
	vpmullw	%ymm3, %ymm12, %ymm13
	vpmulhw	%ymm3, %ymm2, %ymm12
	vpmulhw	%ymm0, %ymm15, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm4
	vpmulhw	%ymm0, %ymm11, %ymm3
	vpmulhw	%ymm0, %ymm13, %ymm11
	vpsubw	%ymm14, %ymm10, %ymm13
	vpaddw	%ymm10, %ymm14, %ymm10
	vpsubw	%ymm7, %ymm9, %ymm15
	vpaddw	%ymm9, %ymm7, %ymm8
	vpsubw	%ymm12, %ymm6, %ymm7
	vpaddw	%ymm6, %ymm12, %ymm6
	vpsubw	%ymm5, %ymm1, %ymm9
	vpaddw	%ymm1, %ymm5, %ymm1
	vpaddw	%ymm15, %ymm2, %ymm5
	vpsubw	%ymm2, %ymm8, %ymm2
	vpaddw	%ymm13, %ymm4, %ymm8
	vpsubw	%ymm4, %ymm10, %ymm4
	vpaddw	%ymm9, %ymm3, %ymm9
	vpsubw	%ymm3, %ymm1, %ymm1
	vpaddw	%ymm7, %ymm11, %ymm3
	vpsubw	%ymm11, %ymm6, %ymm6
	vmovdqu	glob_data + 928(%rip), %ymm7
	vpmulhw	%ymm7, %ymm2, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm2, %ymm2
	vpmulhw	%ymm7, %ymm4, %ymm10
	vpsraw	$10, %ymm10, %ymm10
	vpmullw	%ymm0, %ymm10, %ymm10
	vpsubw	%ymm10, %ymm4, %ymm11
	vpmulhw	%ymm7, %ymm1, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm1, %ymm10
	vpmulhw	%ymm7, %ymm6, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm6, %ymm1
	vpmulhw	%ymm7, %ymm5, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm8, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm8, %ymm8
	vpmulhw	%ymm7, %ymm9, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm9, %ymm13
	vpmulhw	%ymm7, %ymm3, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm3, %ymm3
	vmovdqu	%ymm2, 256(%rcx)
	vmovdqu	%ymm11, 288(%rcx)
	vmovdqu	%ymm6, 320(%rcx)
	vmovdqu	%ymm8, 352(%rcx)
	vmovdqu	%ymm10, 384(%rcx)
	vmovdqu	%ymm1, 416(%rcx)
	vmovdqu	%ymm13, 448(%rcx)
	vmovdqu	%ymm3, 480(%rcx)
	ret
L_poly_invntt$1:
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 1024(%rip), %ymm10
	vmovdqu	glob_data + 1088(%rip), %ymm1
	vmovdqu	glob_data + 1056(%rip), %ymm2
	vmovdqu	glob_data + 1120(%rip), %ymm5
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm14
	vmovdqu	64(%rcx), %ymm9
	vmovdqu	96(%rcx), %ymm4
	vmovdqu	128(%rcx), %ymm6
	vmovdqu	160(%rcx), %ymm12
	vmovdqu	192(%rcx), %ymm13
	vmovdqu	224(%rcx), %ymm11
	vpsubw	%ymm9, %ymm3, %ymm15
	vpsubw	%ymm4, %ymm14, %ymm7
	vpsubw	%ymm13, %ymm6, %ymm8
	vpaddw	%ymm3, %ymm9, %ymm3
	vpaddw	%ymm14, %ymm4, %ymm4
	vpmullw	%ymm15, %ymm10, %ymm9
	vpaddw	%ymm6, %ymm13, %ymm6
	vpmullw	%ymm7, %ymm10, %ymm13
	vpsubw	%ymm11, %ymm12, %ymm10
	vpaddw	%ymm12, %ymm11, %ymm11
	vpmullw	%ymm8, %ymm1, %ymm12
	vpmullw	%ymm10, %ymm1, %ymm1
	vpmulhw	%ymm15, %ymm2, %ymm15
	vpmulhw	%ymm7, %ymm2, %ymm14
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm10, %ymm5, %ymm10
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm13, %ymm0, %ymm2
	vpmulhw	%ymm12, %ymm0, %ymm12
	vpmulhw	%ymm1, %ymm0, %ymm1
	vpsubw	%ymm9, %ymm15, %ymm7
	vpsubw	%ymm2, %ymm14, %ymm5
	vpsubw	%ymm12, %ymm8, %ymm9
	vpsubw	%ymm1, %ymm10, %ymm8
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	glob_data + 1152(%rip), %ymm2
	vmovdqu	glob_data + 1184(%rip), %ymm10
	vpmulhw	%ymm1, %ymm3, %ymm12
	vpsraw	$10, %ymm12, %ymm12
	vpmullw	%ymm0, %ymm12, %ymm12
	vpsubw	%ymm12, %ymm3, %ymm12
	vpmulhw	%ymm1, %ymm4, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm14
	vpmulhw	%ymm1, %ymm6, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm6
	vpmulhw	%ymm1, %ymm11, %ymm3
	vpsraw	$10, %ymm3, %ymm3
	vpmullw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm11, %ymm13
	vpsubw	%ymm6, %ymm12, %ymm15
	vpsubw	%ymm13, %ymm14, %ymm3
	vpsubw	%ymm9, %ymm7, %ymm4
	vpaddw	%ymm12, %ymm6, %ymm12
	vpaddw	%ymm14, %ymm13, %ymm6
	vpmullw	%ymm15, %ymm2, %ymm11
	vpaddw	%ymm7, %ymm9, %ymm7
	vpmullw	%ymm3, %ymm2, %ymm13
	vpsubw	%ymm8, %ymm5, %ymm14
	vpaddw	%ymm5, %ymm8, %ymm8
	vpmullw	%ymm4, %ymm2, %ymm9
	vpmullw	%ymm14, %ymm2, %ymm5
	vpmulhw	%ymm15, %ymm10, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm3
	vpmulhw	%ymm4, %ymm10, %ymm4
	vpmulhw	%ymm14, %ymm10, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpsubw	%ymm11, %ymm2, %ymm2
	vpsubw	%ymm13, %ymm3, %ymm3
	vpsubw	%ymm9, %ymm4, %ymm4
	vpsubw	%ymm5, %ymm14, %ymm5
	vpslld	$16, %ymm6, %ymm15
	vpblendw	$170, %ymm15, %ymm12, %ymm9
	vpsrld	$16, %ymm12, %ymm14
	vpblendw	$170, %ymm6, %ymm14, %ymm11
	vpslld	$16, %ymm8, %ymm6
	vpblendw	$170, %ymm6, %ymm7, %ymm10
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$170, %ymm8, %ymm7, %ymm14
	vpslld	$16, %ymm3, %ymm6
	vpblendw	$170, %ymm6, %ymm2, %ymm12
	vpsrld	$16, %ymm2, %ymm7
	vpblendw	$170, %ymm3, %ymm7, %ymm13
	vpslld	$16, %ymm5, %ymm2
	vpblendw	$170, %ymm2, %ymm4, %ymm3
	vpsrld	$16, %ymm4, %ymm7
	vpblendw	$170, %ymm5, %ymm7, %ymm5
	vmovdqu	glob_data + 1216(%rip), %ymm2
	vmovdqu	glob_data + 1248(%rip), %ymm4
	vpsubw	%ymm11, %ymm9, %ymm15
	vpsubw	%ymm14, %ymm10, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm10, %ymm14, %ymm10
	vpmullw	%ymm15, %ymm2, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm2, %ymm13
	vpsubw	%ymm5, %ymm3, %ymm14
	vpaddw	%ymm3, %ymm5, %ymm6
	vpmullw	%ymm8, %ymm2, %ymm3
	vpmullw	%ymm14, %ymm2, %ymm5
	vpmulhw	%ymm15, %ymm4, %ymm2
	vpmulhw	%ymm7, %ymm4, %ymm7
	vpmulhw	%ymm8, %ymm4, %ymm8
	vpmulhw	%ymm14, %ymm4, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm4
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpsubw	%ymm11, %ymm2, %ymm2
	vpsubw	%ymm13, %ymm7, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpsubw	%ymm5, %ymm14, %ymm5
	vpmulhw	%ymm1, %ymm9, %ymm8
	vpsraw	$10, %ymm8, %ymm8
	vpmullw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm7
	vmovsldup	%ymm10, %ymm15
	vpblendd	$170, %ymm15, %ymm7, %ymm9
	vpsrlq	$32, %ymm7, %ymm7
	vpblendd	$170, %ymm10, %ymm7, %ymm11
	vmovsldup	%ymm6, %ymm15
	vpblendd	$170, %ymm15, %ymm12, %ymm10
	vpsrlq	$32, %ymm12, %ymm7
	vpblendd	$170, %ymm6, %ymm7, %ymm14
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm2, %ymm12
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm13
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovdqu	glob_data + 1280(%rip), %ymm4
	vmovdqu	glob_data + 1312(%rip), %ymm5
	vpsubw	%ymm11, %ymm9, %ymm6
	vpsubw	%ymm14, %ymm10, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm10, %ymm14, %ymm10
	vpmullw	%ymm6, %ymm4, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm4, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm4, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm5, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm14, %ymm5, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm13, %ymm7, %ymm6
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm4, %ymm14, %ymm7
	vpmulhw	%ymm1, %ymm9, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm9, %ymm4
	vpunpcklqdq	%ymm10, %ymm4, %ymm9
	vpunpckhqdq	%ymm10, %ymm4, %ymm11
	vpunpcklqdq	%ymm2, %ymm12, %ymm10
	vpunpckhqdq	%ymm2, %ymm12, %ymm13
	vpunpcklqdq	%ymm6, %ymm5, %ymm12
	vpunpckhqdq	%ymm6, %ymm5, %ymm4
	vpunpcklqdq	%ymm7, %ymm3, %ymm2
	vpunpckhqdq	%ymm7, %ymm3, %ymm3
	vmovdqu	glob_data + 1344(%rip), %ymm5
	vmovdqu	glob_data + 1376(%rip), %ymm6
	vpsubw	%ymm11, %ymm9, %ymm15
	vpsubw	%ymm13, %ymm10, %ymm7
	vpsubw	%ymm4, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm10, %ymm13, %ymm10
	vpmullw	%ymm15, %ymm5, %ymm11
	vpaddw	%ymm12, %ymm4, %ymm4
	vpmullw	%ymm7, %ymm5, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm5, %ymm3
	vpmullw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm15, %ymm6, %ymm15
	vpmulhw	%ymm7, %ymm6, %ymm7
	vpmulhw	%ymm8, %ymm6, %ymm8
	vpmulhw	%ymm14, %ymm6, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpsubw	%ymm11, %ymm15, %ymm12
	vpsubw	%ymm13, %ymm7, %ymm6
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm5, %ymm14, %ymm5
	vpmulhw	%ymm1, %ymm9, %ymm8
	vpsraw	$10, %ymm8, %ymm8
	vpmullw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm7
	vperm2i128	$32, %ymm10, %ymm7, %ymm9
	vperm2i128	$49, %ymm10, %ymm7, %ymm11
	vperm2i128	$32, %ymm2, %ymm4, %ymm10
	vperm2i128	$49, %ymm2, %ymm4, %ymm13
	vperm2i128	$32, %ymm6, %ymm12, %ymm2
	vperm2i128	$49, %ymm6, %ymm12, %ymm4
	vperm2i128	$32, %ymm5, %ymm3, %ymm6
	vperm2i128	$49, %ymm5, %ymm3, %ymm3
	vpbroadcastd	glob_data + 1408(%rip), %ymm5
	vpbroadcastd	glob_data + 1412(%rip), %ymm7
	vpsubw	%ymm11, %ymm9, %ymm15
	vpsubw	%ymm13, %ymm10, %ymm8
	vpsubw	%ymm4, %ymm2, %ymm12
	vpaddw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm10, %ymm13, %ymm10
	vpmullw	%ymm15, %ymm5, %ymm11
	vpaddw	%ymm2, %ymm4, %ymm2
	vpmullw	%ymm8, %ymm5, %ymm13
	vpsubw	%ymm3, %ymm6, %ymm14
	vpaddw	%ymm6, %ymm3, %ymm3
	vpmullw	%ymm12, %ymm5, %ymm4
	vpmullw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm15, %ymm7, %ymm6
	vpmulhw	%ymm8, %ymm7, %ymm8
	vpmulhw	%ymm12, %ymm7, %ymm12
	vpmulhw	%ymm14, %ymm7, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm13, %ymm8, %ymm7
	vpsubw	%ymm4, %ymm12, %ymm8
	vpsubw	%ymm5, %ymm14, %ymm4
	vpmulhw	%ymm1, %ymm9, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm9, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	%ymm10, 32(%rcx)
	vmovdqu	%ymm2, 64(%rcx)
	vmovdqu	%ymm3, 96(%rcx)
	vmovdqu	%ymm6, 128(%rcx)
	vmovdqu	%ymm7, 160(%rcx)
	vmovdqu	%ymm8, 192(%rcx)
	vmovdqu	%ymm4, 224(%rcx)
	vmovdqu	glob_data + 1416(%rip), %ymm10
	vmovdqu	glob_data + 1480(%rip), %ymm1
	vmovdqu	glob_data + 1448(%rip), %ymm2
	vmovdqu	glob_data + 1512(%rip), %ymm5
	vmovdqu	256(%rcx), %ymm4
	vmovdqu	288(%rcx), %ymm6
	vmovdqu	320(%rcx), %ymm9
	vmovdqu	352(%rcx), %ymm14
	vmovdqu	384(%rcx), %ymm11
	vmovdqu	416(%rcx), %ymm3
	vmovdqu	448(%rcx), %ymm13
	vmovdqu	480(%rcx), %ymm12
	vpsubw	%ymm9, %ymm4, %ymm15
	vpsubw	%ymm14, %ymm6, %ymm7
	vpsubw	%ymm13, %ymm11, %ymm8
	vpaddw	%ymm4, %ymm9, %ymm4
	vpaddw	%ymm6, %ymm14, %ymm6
	vpmullw	%ymm15, %ymm10, %ymm9
	vpaddw	%ymm11, %ymm13, %ymm11
	vpmullw	%ymm7, %ymm10, %ymm13
	vpsubw	%ymm12, %ymm3, %ymm10
	vpaddw	%ymm3, %ymm12, %ymm3
	vpmullw	%ymm8, %ymm1, %ymm12
	vpmullw	%ymm10, %ymm1, %ymm1
	vpmulhw	%ymm15, %ymm2, %ymm15
	vpmulhw	%ymm7, %ymm2, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm2
	vpmulhw	%ymm10, %ymm5, %ymm10
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm12, %ymm0, %ymm5
	vpmulhw	%ymm1, %ymm0, %ymm1
	vpsubw	%ymm9, %ymm15, %ymm12
	vpsubw	%ymm13, %ymm7, %ymm8
	vpsubw	%ymm5, %ymm2, %ymm9
	vpsubw	%ymm1, %ymm10, %ymm7
	vmovdqu	glob_data + 928(%rip), %ymm1
	vmovdqu	glob_data + 1544(%rip), %ymm2
	vmovdqu	glob_data + 1576(%rip), %ymm10
	vpmulhw	%ymm1, %ymm4, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm4, %ymm4
	vpmulhw	%ymm1, %ymm6, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm6, %ymm6
	vpmulhw	%ymm1, %ymm11, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm11, %ymm11
	vpmulhw	%ymm1, %ymm3, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm3, %ymm13
	vpsubw	%ymm11, %ymm4, %ymm15
	vpsubw	%ymm13, %ymm6, %ymm3
	vpsubw	%ymm9, %ymm12, %ymm5
	vpaddw	%ymm4, %ymm11, %ymm4
	vpaddw	%ymm6, %ymm13, %ymm6
	vpmullw	%ymm15, %ymm2, %ymm11
	vpaddw	%ymm12, %ymm9, %ymm12
	vpmullw	%ymm3, %ymm2, %ymm13
	vpsubw	%ymm7, %ymm8, %ymm14
	vpaddw	%ymm8, %ymm7, %ymm8
	vpmullw	%ymm5, %ymm2, %ymm9
	vpmullw	%ymm14, %ymm2, %ymm7
	vpmulhw	%ymm15, %ymm10, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm3
	vpmulhw	%ymm5, %ymm10, %ymm5
	vpmulhw	%ymm14, %ymm10, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpsubw	%ymm11, %ymm2, %ymm2
	vpsubw	%ymm13, %ymm3, %ymm3
	vpsubw	%ymm9, %ymm5, %ymm5
	vpsubw	%ymm7, %ymm14, %ymm7
	vpslld	$16, %ymm6, %ymm15
	vpblendw	$170, %ymm15, %ymm4, %ymm9
	vpsrld	$16, %ymm4, %ymm14
	vpblendw	$170, %ymm6, %ymm14, %ymm11
	vpslld	$16, %ymm8, %ymm6
	vpblendw	$170, %ymm6, %ymm12, %ymm6
	vpsrld	$16, %ymm12, %ymm14
	vpblendw	$170, %ymm8, %ymm14, %ymm14
	vpslld	$16, %ymm3, %ymm15
	vpblendw	$170, %ymm15, %ymm2, %ymm12
	vpsrld	$16, %ymm2, %ymm8
	vpblendw	$170, %ymm3, %ymm8, %ymm13
	vpslld	$16, %ymm7, %ymm2
	vpblendw	$170, %ymm2, %ymm5, %ymm4
	vpsrld	$16, %ymm5, %ymm3
	vpblendw	$170, %ymm7, %ymm3, %ymm5
	vmovdqu	glob_data + 1608(%rip), %ymm2
	vmovdqu	glob_data + 1640(%rip), %ymm10
	vpsubw	%ymm11, %ymm9, %ymm15
	vpsubw	%ymm14, %ymm6, %ymm3
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm6, %ymm14, %ymm6
	vpmullw	%ymm15, %ymm2, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm3, %ymm2, %ymm13
	vpsubw	%ymm5, %ymm4, %ymm14
	vpaddw	%ymm4, %ymm5, %ymm7
	vpmullw	%ymm8, %ymm2, %ymm4
	vpmullw	%ymm14, %ymm2, %ymm5
	vpmulhw	%ymm15, %ymm10, %ymm2
	vpmulhw	%ymm3, %ymm10, %ymm3
	vpmulhw	%ymm8, %ymm10, %ymm8
	vpmulhw	%ymm14, %ymm10, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpsubw	%ymm11, %ymm2, %ymm2
	vpsubw	%ymm13, %ymm3, %ymm3
	vpsubw	%ymm4, %ymm8, %ymm4
	vpsubw	%ymm5, %ymm14, %ymm5
	vpmulhw	%ymm1, %ymm9, %ymm8
	vpsraw	$10, %ymm8, %ymm8
	vpmullw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm10
	vmovsldup	%ymm6, %ymm15
	vpblendd	$170, %ymm15, %ymm10, %ymm9
	vpsrlq	$32, %ymm10, %ymm10
	vpblendd	$170, %ymm6, %ymm10, %ymm11
	vmovsldup	%ymm7, %ymm6
	vpblendd	$170, %ymm6, %ymm12, %ymm10
	vpsrlq	$32, %ymm12, %ymm12
	vpblendd	$170, %ymm7, %ymm12, %ymm14
	vmovsldup	%ymm3, %ymm6
	vpblendd	$170, %ymm6, %ymm2, %ymm12
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm3, %ymm2, %ymm13
	vmovsldup	%ymm5, %ymm2
	vpblendd	$170, %ymm2, %ymm4, %ymm2
	vpsrlq	$32, %ymm4, %ymm3
	vpblendd	$170, %ymm5, %ymm3, %ymm3
	vmovdqu	glob_data + 1672(%rip), %ymm4
	vmovdqu	glob_data + 1704(%rip), %ymm5
	vpsubw	%ymm11, %ymm9, %ymm6
	vpsubw	%ymm14, %ymm10, %ymm7
	vpsubw	%ymm13, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm10, %ymm14, %ymm10
	vpmullw	%ymm6, %ymm4, %ymm11
	vpaddw	%ymm12, %ymm13, %ymm12
	vpmullw	%ymm7, %ymm4, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm4, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm7, %ymm5, %ymm7
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm14, %ymm5, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm11, %ymm6, %ymm5
	vpsubw	%ymm13, %ymm7, %ymm6
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm4, %ymm14, %ymm7
	vpmulhw	%ymm1, %ymm9, %ymm4
	vpsraw	$10, %ymm4, %ymm4
	vpmullw	%ymm0, %ymm4, %ymm4
	vpsubw	%ymm4, %ymm9, %ymm4
	vpunpcklqdq	%ymm10, %ymm4, %ymm9
	vpunpckhqdq	%ymm10, %ymm4, %ymm11
	vpunpcklqdq	%ymm2, %ymm12, %ymm10
	vpunpckhqdq	%ymm2, %ymm12, %ymm13
	vpunpcklqdq	%ymm6, %ymm5, %ymm12
	vpunpckhqdq	%ymm6, %ymm5, %ymm4
	vpunpcklqdq	%ymm7, %ymm3, %ymm2
	vpunpckhqdq	%ymm7, %ymm3, %ymm3
	vmovdqu	glob_data + 1736(%rip), %ymm5
	vmovdqu	glob_data + 1768(%rip), %ymm6
	vpsubw	%ymm11, %ymm9, %ymm15
	vpsubw	%ymm13, %ymm10, %ymm7
	vpsubw	%ymm4, %ymm12, %ymm8
	vpaddw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm10, %ymm13, %ymm10
	vpmullw	%ymm15, %ymm5, %ymm11
	vpaddw	%ymm12, %ymm4, %ymm4
	vpmullw	%ymm7, %ymm5, %ymm13
	vpsubw	%ymm3, %ymm2, %ymm14
	vpaddw	%ymm2, %ymm3, %ymm2
	vpmullw	%ymm8, %ymm5, %ymm3
	vpmullw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm15, %ymm6, %ymm15
	vpmulhw	%ymm7, %ymm6, %ymm7
	vpmulhw	%ymm8, %ymm6, %ymm8
	vpmulhw	%ymm14, %ymm6, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm3, %ymm0, %ymm3
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpsubw	%ymm11, %ymm15, %ymm12
	vpsubw	%ymm13, %ymm7, %ymm6
	vpsubw	%ymm3, %ymm8, %ymm3
	vpsubw	%ymm5, %ymm14, %ymm5
	vpmulhw	%ymm1, %ymm9, %ymm8
	vpsraw	$10, %ymm8, %ymm8
	vpmullw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm7
	vperm2i128	$32, %ymm10, %ymm7, %ymm9
	vperm2i128	$49, %ymm10, %ymm7, %ymm11
	vperm2i128	$32, %ymm2, %ymm4, %ymm10
	vperm2i128	$49, %ymm2, %ymm4, %ymm13
	vperm2i128	$32, %ymm6, %ymm12, %ymm2
	vperm2i128	$49, %ymm6, %ymm12, %ymm4
	vperm2i128	$32, %ymm5, %ymm3, %ymm6
	vperm2i128	$49, %ymm5, %ymm3, %ymm3
	vpbroadcastd	glob_data + 1800(%rip), %ymm5
	vpbroadcastd	glob_data + 1804(%rip), %ymm7
	vpsubw	%ymm11, %ymm9, %ymm15
	vpsubw	%ymm13, %ymm10, %ymm8
	vpsubw	%ymm4, %ymm2, %ymm12
	vpaddw	%ymm9, %ymm11, %ymm9
	vpaddw	%ymm10, %ymm13, %ymm10
	vpmullw	%ymm15, %ymm5, %ymm11
	vpaddw	%ymm2, %ymm4, %ymm2
	vpmullw	%ymm8, %ymm5, %ymm13
	vpsubw	%ymm3, %ymm6, %ymm14
	vpaddw	%ymm6, %ymm3, %ymm3
	vpmullw	%ymm12, %ymm5, %ymm4
	vpmullw	%ymm14, %ymm5, %ymm5
	vpmulhw	%ymm15, %ymm7, %ymm6
	vpmulhw	%ymm8, %ymm7, %ymm8
	vpmulhw	%ymm12, %ymm7, %ymm12
	vpmulhw	%ymm14, %ymm7, %ymm14
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpmulhw	%ymm5, %ymm0, %ymm5
	vpsubw	%ymm11, %ymm6, %ymm6
	vpsubw	%ymm13, %ymm8, %ymm7
	vpsubw	%ymm4, %ymm12, %ymm8
	vpsubw	%ymm5, %ymm14, %ymm4
	vpmulhw	%ymm1, %ymm9, %ymm5
	vpsraw	$10, %ymm5, %ymm5
	vpmullw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm9, %ymm1
	vmovdqu	%ymm6, 384(%rcx)
	vmovdqu	%ymm7, 416(%rcx)
	vmovdqu	%ymm8, 448(%rcx)
	vmovdqu	%ymm4, 480(%rcx)
	vpbroadcastd	glob_data + 1808(%rip), %ymm4
	vpbroadcastd	glob_data + 1812(%rip), %ymm5
	vmovdqu	%ymm3, %ymm7
	vmovdqu	%ymm2, %ymm3
	vmovdqu	(%rcx), %ymm2
	vmovdqu	32(%rcx), %ymm14
	vmovdqu	64(%rcx), %ymm6
	vmovdqu	96(%rcx), %ymm9
	vpsubw	%ymm1, %ymm2, %ymm15
	vpsubw	%ymm10, %ymm14, %ymm8
	vpsubw	%ymm3, %ymm6, %ymm12
	vpaddw	%ymm2, %ymm1, %ymm1
	vpaddw	%ymm14, %ymm10, %ymm2
	vpmullw	%ymm15, %ymm4, %ymm11
	vpaddw	%ymm6, %ymm3, %ymm3
	vpmullw	%ymm8, %ymm4, %ymm13
	vpsubw	%ymm7, %ymm9, %ymm10
	vpaddw	%ymm9, %ymm7, %ymm6
	vpmullw	%ymm12, %ymm4, %ymm9
	vpmullw	%ymm10, %ymm4, %ymm7
	vpmulhw	%ymm15, %ymm5, %ymm15
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm12, %ymm5, %ymm12
	vpmulhw	%ymm10, %ymm5, %ymm10
	vpmulhw	%ymm11, %ymm0, %ymm11
	vpmulhw	%ymm13, %ymm0, %ymm13
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm7, %ymm0, %ymm7
	vpsubw	%ymm11, %ymm15, %ymm11
	vpsubw	%ymm13, %ymm8, %ymm8
	vpsubw	%ymm9, %ymm12, %ymm12
	vpsubw	%ymm7, %ymm10, %ymm10
	vmovdqu	glob_data + 864(%rip), %ymm7
	vmovdqu	glob_data + 896(%rip), %ymm9
	vmovdqu	%ymm11, 256(%rcx)
	vmovdqu	%ymm8, 288(%rcx)
	vmovdqu	%ymm12, 320(%rcx)
	vmovdqu	%ymm10, 352(%rcx)
	vpmullw	%ymm1, %ymm7, %ymm8
	vpmulhw	%ymm1, %ymm9, %ymm1
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm1, %ymm1
	vpmullw	%ymm2, %ymm7, %ymm8
	vpmulhw	%ymm2, %ymm9, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm2, %ymm2
	vpmullw	%ymm3, %ymm7, %ymm8
	vpmulhw	%ymm3, %ymm9, %ymm3
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm3, %ymm10
	vpmullw	%ymm6, %ymm7, %ymm3
	vpmulhw	%ymm6, %ymm9, %ymm6
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm6, %ymm7
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	%ymm2, 32(%rcx)
	vmovdqu	%ymm10, 64(%rcx)
	vmovdqu	%ymm7, 96(%rcx)
	vmovdqu	384(%rcx), %ymm1
	vmovdqu	416(%rcx), %ymm2
	vmovdqu	448(%rcx), %ymm3
	vmovdqu	480(%rcx), %ymm7
	vmovdqu	128(%rcx), %ymm9
	vmovdqu	160(%rcx), %ymm10
	vmovdqu	192(%rcx), %ymm6
	vmovdqu	224(%rcx), %ymm12
	vpsubw	%ymm1, %ymm9, %ymm15
	vpsubw	%ymm2, %ymm10, %ymm14
	vpsubw	%ymm3, %ymm6, %ymm8
	vpaddw	%ymm9, %ymm1, %ymm1
	vpaddw	%ymm10, %ymm2, %ymm2
	vpmullw	%ymm15, %ymm4, %ymm9
	vpaddw	%ymm6, %ymm3, %ymm3
	vpmullw	%ymm14, %ymm4, %ymm13
	vpsubw	%ymm7, %ymm12, %ymm6
	vpaddw	%ymm12, %ymm7, %ymm7
	vpmullw	%ymm8, %ymm4, %ymm12
	vpmullw	%ymm6, %ymm4, %ymm4
	vpmulhw	%ymm15, %ymm5, %ymm15
	vpmulhw	%ymm14, %ymm5, %ymm14
	vpmulhw	%ymm8, %ymm5, %ymm8
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpmulhw	%ymm9, %ymm0, %ymm9
	vpmulhw	%ymm13, %ymm0, %ymm10
	vpmulhw	%ymm12, %ymm0, %ymm12
	vpmulhw	%ymm4, %ymm0, %ymm4
	vpsubw	%ymm9, %ymm15, %ymm5
	vpsubw	%ymm10, %ymm14, %ymm10
	vpsubw	%ymm12, %ymm8, %ymm12
	vpsubw	%ymm4, %ymm6, %ymm6
	vmovdqu	glob_data + 864(%rip), %ymm4
	vmovdqu	glob_data + 896(%rip), %ymm9
	vmovdqu	%ymm5, 384(%rcx)
	vmovdqu	%ymm10, 416(%rcx)
	vmovdqu	%ymm12, 448(%rcx)
	vmovdqu	%ymm6, 480(%rcx)
	vpmullw	%ymm1, %ymm4, %ymm5
	vpmulhw	%ymm1, %ymm9, %ymm1
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm1, %ymm1
	vpmullw	%ymm2, %ymm4, %ymm5
	vpmulhw	%ymm2, %ymm9, %ymm2
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm2, %ymm2
	vpmullw	%ymm3, %ymm4, %ymm5
	vpmulhw	%ymm3, %ymm9, %ymm3
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm3, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm3
	vpmulhw	%ymm7, %ymm9, %ymm5
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm5, %ymm7
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	%ymm2, 160(%rcx)
	vmovdqu	%ymm10, 192(%rcx)
	vmovdqu	%ymm7, 224(%rcx)
	ret
L_poly_getnoise_eta1_4x$1:
	leaq	32(%rsp), %rsi
	leaq	160(%rsp), %r10
	leaq	288(%rsp), %r11
	leaq	416(%rsp), %rbx
	movq	%rax, 552(%rsp)
	movq	%rcx, 560(%rsp)
	movq	%rdx, 568(%rsp)
	movq	%r8, 576(%rsp)
	movb	%r9b, 544(%rsp)
	incb	%r9b
	movb	%r9b, 545(%rsp)
	incb	%r9b
	movb	%r9b, 546(%rsp)
	incb	%r9b
	movb	%r9b, 547(%rsp)
	leaq	544(%rsp), %rdx
	leaq	-824(%rsp), %rsp
	call	L_shake256x4_A128__A32_A1$1
L_poly_getnoise_eta1_4x$2:
	leaq	824(%rsp), %rsp
	lfence
	movq	$0, %rax
	movq	552(%rsp), %rax
	movq	560(%rsp), %rcx
	movq	568(%rsp), %rdx
	movq	576(%rsp), %r8
	movl	$1431655765, 544(%rsp)
	movl	$858993459, 584(%rsp)
	movl	$50529027, 588(%rsp)
	movl	$252645135, 592(%rsp)
	vpbroadcastd	544(%rsp), %ymm0
	vpbroadcastd	584(%rsp), %ymm1
	vpbroadcastd	588(%rsp), %ymm2
	vpbroadcastd	592(%rsp), %ymm3
	vmovdqu	(%rsi), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, (%rax)
	vmovdqu	%ymm10, 32(%rax)
	vmovdqu	%ymm5, 64(%rax)
	vmovdqu	%ymm4, 96(%rax)
	vmovdqu	32(%rsi), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, 128(%rax)
	vmovdqu	%ymm10, 160(%rax)
	vmovdqu	%ymm5, 192(%rax)
	vmovdqu	%ymm4, 224(%rax)
	vmovdqu	64(%rsi), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, 256(%rax)
	vmovdqu	%ymm10, 288(%rax)
	vmovdqu	%ymm5, 320(%rax)
	vmovdqu	%ymm4, 352(%rax)
	vmovdqu	96(%rsi), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm2
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm4
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm2, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm2, %xmm6
	vpmovsxbw	%xmm6, %ymm2
	vmovdqu	%ymm4, 384(%rax)
	vmovdqu	%ymm10, 416(%rax)
	vmovdqu	%ymm5, 448(%rax)
	vmovdqu	%ymm2, 480(%rax)
	movl	$1431655765, 592(%rsp)
	movl	$858993459, 588(%rsp)
	movl	$50529027, 584(%rsp)
	movl	$252645135, 544(%rsp)
	vpbroadcastd	592(%rsp), %ymm0
	vpbroadcastd	588(%rsp), %ymm1
	vpbroadcastd	584(%rsp), %ymm2
	vpbroadcastd	544(%rsp), %ymm3
	vmovdqu	(%r10), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, (%rcx)
	vmovdqu	%ymm10, 32(%rcx)
	vmovdqu	%ymm5, 64(%rcx)
	vmovdqu	%ymm4, 96(%rcx)
	vmovdqu	32(%r10), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, 128(%rcx)
	vmovdqu	%ymm10, 160(%rcx)
	vmovdqu	%ymm5, 192(%rcx)
	vmovdqu	%ymm4, 224(%rcx)
	vmovdqu	64(%r10), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, 256(%rcx)
	vmovdqu	%ymm10, 288(%rcx)
	vmovdqu	%ymm5, 320(%rcx)
	vmovdqu	%ymm4, 352(%rcx)
	vmovdqu	96(%r10), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm2
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm4
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm2, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm2, %xmm6
	vpmovsxbw	%xmm6, %ymm2
	vmovdqu	%ymm4, 384(%rcx)
	vmovdqu	%ymm10, 416(%rcx)
	vmovdqu	%ymm5, 448(%rcx)
	vmovdqu	%ymm2, 480(%rcx)
	movl	$1431655765, 544(%rsp)
	movl	$858993459, 584(%rsp)
	movl	$50529027, 588(%rsp)
	movl	$252645135, 592(%rsp)
	vpbroadcastd	544(%rsp), %ymm0
	vpbroadcastd	584(%rsp), %ymm1
	vpbroadcastd	588(%rsp), %ymm2
	vpbroadcastd	592(%rsp), %ymm3
	vmovdqu	(%r11), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, (%rdx)
	vmovdqu	%ymm10, 32(%rdx)
	vmovdqu	%ymm5, 64(%rdx)
	vmovdqu	%ymm4, 96(%rdx)
	vmovdqu	32(%r11), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, 128(%rdx)
	vmovdqu	%ymm10, 160(%rdx)
	vmovdqu	%ymm5, 192(%rdx)
	vmovdqu	%ymm4, 224(%rdx)
	vmovdqu	64(%r11), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, 256(%rdx)
	vmovdqu	%ymm10, 288(%rdx)
	vmovdqu	%ymm5, 320(%rdx)
	vmovdqu	%ymm4, 352(%rdx)
	vmovdqu	96(%r11), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm2
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm4
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm2, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm2, %xmm6
	vpmovsxbw	%xmm6, %ymm2
	vmovdqu	%ymm4, 384(%rdx)
	vmovdqu	%ymm10, 416(%rdx)
	vmovdqu	%ymm5, 448(%rdx)
	vmovdqu	%ymm2, 480(%rdx)
	movl	$1431655765, 592(%rsp)
	movl	$858993459, 588(%rsp)
	movl	$50529027, 584(%rsp)
	movl	$252645135, 544(%rsp)
	vpbroadcastd	592(%rsp), %ymm0
	vpbroadcastd	588(%rsp), %ymm1
	vpbroadcastd	584(%rsp), %ymm2
	vpbroadcastd	544(%rsp), %ymm3
	vmovdqu	(%rbx), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, (%r8)
	vmovdqu	%ymm10, 32(%r8)
	vmovdqu	%ymm5, 64(%r8)
	vmovdqu	%ymm4, 96(%r8)
	vmovdqu	32(%rbx), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, 128(%r8)
	vmovdqu	%ymm10, 160(%r8)
	vmovdqu	%ymm5, 192(%r8)
	vmovdqu	%ymm4, 224(%r8)
	vmovdqu	64(%rbx), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm4
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm8
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm4, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm4, %xmm6
	vpmovsxbw	%xmm6, %ymm4
	vmovdqu	%ymm8, 256(%r8)
	vmovdqu	%ymm10, 288(%r8)
	vmovdqu	%ymm5, 320(%r8)
	vmovdqu	%ymm4, 352(%r8)
	vmovdqu	96(%rbx), %ymm4
	vpsrlw	$1, %ymm4, %ymm5
	vpand	%ymm4, %ymm0, %ymm4
	vpand	%ymm5, %ymm0, %ymm5
	vpaddb	%ymm5, %ymm4, %ymm4
	vpsrlw	$2, %ymm4, %ymm5
	vpand	%ymm4, %ymm1, %ymm4
	vpand	%ymm5, %ymm1, %ymm5
	vpaddb	%ymm1, %ymm4, %ymm4
	vpsubb	%ymm5, %ymm4, %ymm4
	vpsrlw	$4, %ymm4, %ymm5
	vpand	%ymm4, %ymm3, %ymm4
	vpand	%ymm5, %ymm3, %ymm5
	vpsubb	%ymm2, %ymm4, %ymm4
	vpsubb	%ymm2, %ymm5, %ymm5
	vpunpcklbw	%ymm5, %ymm4, %ymm10
	vpunpckhbw	%ymm5, %ymm4, %ymm2
	vmovdqu	%xmm10, %xmm5
	vpmovsxbw	%xmm5, %ymm4
	vextracti128	$1, %ymm10, %xmm5
	vpmovsxbw	%xmm5, %ymm5
	vmovdqu	%xmm2, %xmm6
	vpmovsxbw	%xmm6, %ymm10
	vextracti128	$1, %ymm2, %xmm6
	vpmovsxbw	%xmm6, %ymm2
	vmovdqu	%ymm4, 384(%r8)
	vmovdqu	%ymm10, 416(%r8)
	vmovdqu	%ymm5, 448(%r8)
	vmovdqu	%ymm2, 480(%r8)
	ret
L_i_poly_frommsg$1:
	vmovdqu	glob_data + 800(%rip), %ymm0
	vbroadcasti128	glob_data + 2640(%rip), %ymm2
	vbroadcasti128	glob_data + 2624(%rip), %ymm1
	vmovdqu	(%rax), %ymm3
	vpshufd	$0, %ymm3, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm6
	vpsllw	$8, %ymm4, %ymm7
	vpsllw	$4, %ymm4, %ymm5
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm7, %ymm6, %ymm8
	vpunpckhqdq	%ymm7, %ymm6, %ymm6
	vpunpcklqdq	%ymm4, %ymm5, %ymm7
	vpunpckhqdq	%ymm4, %ymm5, %ymm4
	vperm2i128	$32, %ymm7, %ymm8, %ymm5
	vperm2i128	$49, %ymm7, %ymm8, %ymm7
	vperm2i128	$32, %ymm4, %ymm6, %ymm8
	vperm2i128	$49, %ymm4, %ymm6, %ymm4
	vmovdqu	%ymm5, (%rcx)
	vmovdqu	%ymm8, 32(%rcx)
	vmovdqu	%ymm7, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vpshufd	$85, %ymm3, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm7
	vpsllw	$4, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm7, %ymm5, %ymm8
	vpunpckhqdq	%ymm7, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm6, %ymm7
	vpunpckhqdq	%ymm4, %ymm6, %ymm4
	vperm2i128	$32, %ymm7, %ymm8, %ymm6
	vperm2i128	$49, %ymm7, %ymm8, %ymm7
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm6, 64(%rcx)
	vmovdqu	%ymm8, 96(%rcx)
	vmovdqu	%ymm7, 320(%rcx)
	vmovdqu	%ymm4, 352(%rcx)
	vpshufd	$170, %ymm3, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm7
	vpsllw	$4, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm7, %ymm5, %ymm8
	vpunpckhqdq	%ymm7, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm6, %ymm7
	vpunpckhqdq	%ymm4, %ymm6, %ymm4
	vperm2i128	$32, %ymm7, %ymm8, %ymm6
	vperm2i128	$49, %ymm7, %ymm8, %ymm7
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm6, 128(%rcx)
	vmovdqu	%ymm8, 160(%rcx)
	vmovdqu	%ymm7, 384(%rcx)
	vmovdqu	%ymm4, 416(%rcx)
	vpshufd	$255, %ymm3, %ymm4
	vpsllvd	%ymm2, %ymm4, %ymm4
	vpshufb	%ymm1, %ymm4, %ymm4
	vpsllw	$12, %ymm4, %ymm5
	vpsllw	$8, %ymm4, %ymm7
	vpsllw	$4, %ymm4, %ymm6
	vpsraw	$15, %ymm5, %ymm5
	vpsraw	$15, %ymm7, %ymm7
	vpsraw	$15, %ymm6, %ymm6
	vpsraw	$15, %ymm4, %ymm4
	vpand	%ymm0, %ymm5, %ymm5
	vpand	%ymm0, %ymm7, %ymm7
	vpand	%ymm0, %ymm6, %ymm6
	vpand	%ymm0, %ymm4, %ymm4
	vpunpcklqdq	%ymm7, %ymm5, %ymm8
	vpunpckhqdq	%ymm7, %ymm5, %ymm5
	vpunpcklqdq	%ymm4, %ymm6, %ymm7
	vpunpckhqdq	%ymm4, %ymm6, %ymm4
	vperm2i128	$32, %ymm7, %ymm8, %ymm6
	vperm2i128	$49, %ymm7, %ymm8, %ymm7
	vperm2i128	$32, %ymm4, %ymm5, %ymm8
	vperm2i128	$49, %ymm4, %ymm5, %ymm4
	vmovdqu	%ymm6, 192(%rcx)
	vmovdqu	%ymm8, 224(%rcx)
	vmovdqu	%ymm7, 448(%rcx)
	vmovdqu	%ymm4, 480(%rcx)
	ret
L_poly_frommont$1:
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 960(%rip), %ymm1
	vmovdqu	glob_data + 704(%rip), %ymm2
	vmovdqu	(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm3
	vmovdqu	%ymm3, (%rax)
	vmovdqu	32(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 32(%rax)
	vmovdqu	64(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 64(%rax)
	vmovdqu	96(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 96(%rax)
	vmovdqu	128(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 128(%rax)
	vmovdqu	160(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 160(%rax)
	vmovdqu	192(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 192(%rax)
	vmovdqu	224(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 224(%rax)
	vmovdqu	256(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 256(%rax)
	vmovdqu	288(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 288(%rax)
	vmovdqu	320(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 320(%rax)
	vmovdqu	352(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 352(%rax)
	vmovdqu	384(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 384(%rax)
	vmovdqu	416(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 416(%rax)
	vmovdqu	448(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 448(%rax)
	vmovdqu	480(%rax), %ymm3
	vpmulhw	%ymm2, %ymm3, %ymm4
	vpmullw	%ymm2, %ymm3, %ymm3
	vpmullw	%ymm1, %ymm3, %ymm3
	vpmulhw	%ymm0, %ymm3, %ymm3
	vpsubw	%ymm3, %ymm4, %ymm5
	vmovdqu	%ymm5, 480(%rax)
	ret
L_i_poly_frombytes$1:
	vmovdqu	glob_data + 832(%rip), %ymm0
	vmovdqu	(%r9), %ymm2
	vmovdqu	32(%r9), %ymm3
	vmovdqu	64(%r9), %ymm4
	vmovdqu	96(%r9), %ymm1
	vmovdqu	128(%r9), %ymm5
	vmovdqu	160(%r9), %ymm6
	vperm2i128	$32, %ymm1, %ymm2, %ymm7
	vperm2i128	$49, %ymm1, %ymm2, %ymm9
	vperm2i128	$32, %ymm5, %ymm3, %ymm10
	vperm2i128	$49, %ymm5, %ymm3, %ymm1
	vperm2i128	$32, %ymm6, %ymm4, %ymm5
	vperm2i128	$49, %ymm6, %ymm4, %ymm6
	vpunpcklqdq	%ymm1, %ymm7, %ymm11
	vpunpckhqdq	%ymm1, %ymm7, %ymm2
	vpunpcklqdq	%ymm5, %ymm9, %ymm3
	vpunpckhqdq	%ymm5, %ymm9, %ymm5
	vpunpcklqdq	%ymm6, %ymm10, %ymm8
	vpunpckhqdq	%ymm6, %ymm10, %ymm1
	vmovsldup	%ymm5, %ymm6
	vpblendd	$170, %ymm6, %ymm11, %ymm4
	vpsrlq	$32, %ymm11, %ymm7
	vpblendd	$170, %ymm5, %ymm7, %ymm5
	vmovsldup	%ymm8, %ymm6
	vpblendd	$170, %ymm6, %ymm2, %ymm7
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm8, %ymm2, %ymm6
	vmovsldup	%ymm1, %ymm2
	vpblendd	$170, %ymm2, %ymm3, %ymm2
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$170, %ymm1, %ymm3, %ymm1
	vpslld	$16, %ymm6, %ymm15
	vpblendw	$170, %ymm15, %ymm4, %ymm11
	vpsrld	$16, %ymm4, %ymm3
	vpblendw	$170, %ymm6, %ymm3, %ymm6
	vpslld	$16, %ymm2, %ymm15
	vpblendw	$170, %ymm15, %ymm5, %ymm15
	vpsrld	$16, %ymm5, %ymm3
	vpblendw	$170, %ymm2, %ymm3, %ymm3
	vpslld	$16, %ymm1, %ymm2
	vpblendw	$170, %ymm2, %ymm7, %ymm8
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$170, %ymm1, %ymm7, %ymm1
	vpsrlw	$12, %ymm11, %ymm12
	vpsllw	$4, %ymm6, %ymm4
	vpor	%ymm4, %ymm12, %ymm12
	vpand	%ymm11, %ymm0, %ymm2
	vpand	%ymm12, %ymm0, %ymm12
	vpsrlw	$8, %ymm6, %ymm4
	vpsllw	$8, %ymm15, %ymm5
	vpor	%ymm5, %ymm4, %ymm4
	vpand	%ymm4, %ymm0, %ymm4
	vpsrlw	$4, %ymm15, %ymm5
	vpand	%ymm5, %ymm0, %ymm5
	vpsrlw	$12, %ymm3, %ymm6
	vpsllw	$4, %ymm8, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpand	%ymm3, %ymm0, %ymm3
	vpand	%ymm6, %ymm0, %ymm6
	vpsrlw	$8, %ymm8, %ymm7
	vpsllw	$8, %ymm1, %ymm8
	vpor	%ymm8, %ymm7, %ymm7
	vpand	%ymm7, %ymm0, %ymm7
	vpsrlw	$4, %ymm1, %ymm8
	vpand	%ymm8, %ymm0, %ymm8
	vmovdqu	%ymm2, (%rcx)
	vmovdqu	%ymm12, 32(%rcx)
	vmovdqu	%ymm4, 64(%rcx)
	vmovdqu	%ymm5, 96(%rcx)
	vmovdqu	%ymm3, 128(%rcx)
	vmovdqu	%ymm6, 160(%rcx)
	vmovdqu	%ymm7, 192(%rcx)
	vmovdqu	%ymm8, 224(%rcx)
	vmovdqu	192(%r9), %ymm2
	vmovdqu	224(%r9), %ymm3
	vmovdqu	256(%r9), %ymm4
	vmovdqu	288(%r9), %ymm1
	vmovdqu	320(%r9), %ymm5
	vmovdqu	352(%r9), %ymm6
	vperm2i128	$32, %ymm1, %ymm2, %ymm7
	vperm2i128	$49, %ymm1, %ymm2, %ymm9
	vperm2i128	$32, %ymm5, %ymm3, %ymm10
	vperm2i128	$49, %ymm5, %ymm3, %ymm1
	vperm2i128	$32, %ymm6, %ymm4, %ymm5
	vperm2i128	$49, %ymm6, %ymm4, %ymm6
	vpunpcklqdq	%ymm1, %ymm7, %ymm11
	vpunpckhqdq	%ymm1, %ymm7, %ymm2
	vpunpcklqdq	%ymm5, %ymm9, %ymm3
	vpunpckhqdq	%ymm5, %ymm9, %ymm5
	vpunpcklqdq	%ymm6, %ymm10, %ymm8
	vpunpckhqdq	%ymm6, %ymm10, %ymm1
	vmovsldup	%ymm5, %ymm6
	vpblendd	$170, %ymm6, %ymm11, %ymm4
	vpsrlq	$32, %ymm11, %ymm7
	vpblendd	$170, %ymm5, %ymm7, %ymm5
	vmovsldup	%ymm8, %ymm6
	vpblendd	$170, %ymm6, %ymm2, %ymm7
	vpsrlq	$32, %ymm2, %ymm2
	vpblendd	$170, %ymm8, %ymm2, %ymm6
	vmovsldup	%ymm1, %ymm2
	vpblendd	$170, %ymm2, %ymm3, %ymm2
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$170, %ymm1, %ymm3, %ymm1
	vpslld	$16, %ymm6, %ymm15
	vpblendw	$170, %ymm15, %ymm4, %ymm11
	vpsrld	$16, %ymm4, %ymm3
	vpblendw	$170, %ymm6, %ymm3, %ymm6
	vpslld	$16, %ymm2, %ymm15
	vpblendw	$170, %ymm15, %ymm5, %ymm15
	vpsrld	$16, %ymm5, %ymm3
	vpblendw	$170, %ymm2, %ymm3, %ymm3
	vpslld	$16, %ymm1, %ymm2
	vpblendw	$170, %ymm2, %ymm7, %ymm8
	vpsrld	$16, %ymm7, %ymm7
	vpblendw	$170, %ymm1, %ymm7, %ymm1
	vpsrlw	$12, %ymm11, %ymm12
	vpsllw	$4, %ymm6, %ymm4
	vpor	%ymm4, %ymm12, %ymm12
	vpand	%ymm11, %ymm0, %ymm2
	vpand	%ymm12, %ymm0, %ymm12
	vpsrlw	$8, %ymm6, %ymm4
	vpsllw	$8, %ymm15, %ymm5
	vpor	%ymm5, %ymm4, %ymm4
	vpand	%ymm4, %ymm0, %ymm4
	vpsrlw	$4, %ymm15, %ymm5
	vpand	%ymm5, %ymm0, %ymm5
	vpsrlw	$12, %ymm3, %ymm6
	vpsllw	$4, %ymm8, %ymm7
	vpor	%ymm7, %ymm6, %ymm6
	vpand	%ymm3, %ymm0, %ymm3
	vpand	%ymm6, %ymm0, %ymm6
	vpsrlw	$8, %ymm8, %ymm7
	vpsllw	$8, %ymm1, %ymm8
	vpor	%ymm8, %ymm7, %ymm7
	vpand	%ymm7, %ymm0, %ymm7
	vpsrlw	$4, %ymm1, %ymm8
	vpand	%ymm8, %ymm0, %ymm0
	vmovdqu	%ymm2, 256(%rcx)
	vmovdqu	%ymm12, 288(%rcx)
	vmovdqu	%ymm4, 320(%rcx)
	vmovdqu	%ymm5, 352(%rcx)
	vmovdqu	%ymm3, 384(%rcx)
	vmovdqu	%ymm6, 416(%rcx)
	vmovdqu	%ymm7, 448(%rcx)
	vmovdqu	%ymm0, 480(%rcx)
	ret
L_poly_basemul$1:
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	glob_data + 960(%rip), %ymm1
	vmovdqu	glob_data + 2096(%rip), %ymm2
	vmovdqu	glob_data + 2128(%rip), %ymm3
	vmovdqu	(%rsi), %ymm4
	vmovdqu	32(%rsi), %ymm5
	vmovdqu	(%rdi), %ymm6
	vmovdqu	32(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm10
	vpblendw	$170, %ymm9, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm10, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm10
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm10, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, (%rcx)
	vmovdqu	%ymm4, 32(%rcx)
	vmovdqu	64(%rsi), %ymm4
	vmovdqu	96(%rsi), %ymm5
	vmovdqu	64(%rdi), %ymm6
	vmovdqu	96(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm2
	vpmulhw	%ymm6, %ymm4, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm9
	vpunpckhwd	%ymm3, %ymm2, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm2
	vpmulhw	%ymm7, %ymm4, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm11
	vpunpckhwd	%ymm3, %ymm2, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm2
	vpmulhw	%ymm6, %ymm5, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm5
	vpunpckhwd	%ymm3, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm2
	vpmulhw	%ymm7, %ymm8, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm8
	vpunpckhwd	%ymm3, %ymm2, %ymm12
	vpsubd	%ymm8, %ymm9, %ymm7
	vpsubd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm2
	vpblendw	$170, %ymm9, %ymm8, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm2
	vpblendw	$170, %ymm9, %ymm4, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 64(%rcx)
	vmovdqu	%ymm4, 96(%rcx)
	vmovdqu	glob_data + 2160(%rip), %ymm2
	vmovdqu	glob_data + 2192(%rip), %ymm3
	vmovdqu	128(%rsi), %ymm4
	vmovdqu	160(%rsi), %ymm5
	vmovdqu	128(%rdi), %ymm6
	vmovdqu	160(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm10
	vpblendw	$170, %ymm9, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm10, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm10
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm10, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 128(%rcx)
	vmovdqu	%ymm4, 160(%rcx)
	vmovdqu	192(%rsi), %ymm4
	vmovdqu	224(%rsi), %ymm5
	vmovdqu	192(%rdi), %ymm6
	vmovdqu	224(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm2
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm3
	vpunpcklwd	%ymm3, %ymm10, %ymm9
	vpunpckhwd	%ymm3, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm3
	vpunpcklwd	%ymm3, %ymm12, %ymm11
	vpunpckhwd	%ymm3, %ymm12, %ymm3
	vpmullw	%ymm6, %ymm5, %ymm4
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm4, %ymm5
	vpunpckhwd	%ymm6, %ymm4, %ymm6
	vpmullw	%ymm7, %ymm2, %ymm4
	vpmulhw	%ymm7, %ymm2, %ymm7
	vpunpcklwd	%ymm7, %ymm4, %ymm8
	vpunpckhwd	%ymm7, %ymm4, %ymm12
	vpsubd	%ymm8, %ymm9, %ymm7
	vpsubd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm3, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm2
	vpblendw	$170, %ymm9, %ymm8, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm2
	vpblendw	$170, %ymm9, %ymm4, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 192(%rcx)
	vmovdqu	%ymm4, 224(%rcx)
	vmovdqu	glob_data + 2488(%rip), %ymm2
	vmovdqu	glob_data + 2520(%rip), %ymm3
	vmovdqu	256(%rsi), %ymm4
	vmovdqu	288(%rsi), %ymm5
	vmovdqu	256(%rdi), %ymm6
	vmovdqu	288(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm10
	vpblendw	$170, %ymm9, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm10, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm10
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm10, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 256(%rcx)
	vmovdqu	%ymm4, 288(%rcx)
	vmovdqu	320(%rsi), %ymm4
	vmovdqu	352(%rsi), %ymm5
	vmovdqu	320(%rdi), %ymm6
	vmovdqu	352(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm2
	vpmulhw	%ymm6, %ymm4, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm9
	vpunpckhwd	%ymm3, %ymm2, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm2
	vpmulhw	%ymm7, %ymm4, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm11
	vpunpckhwd	%ymm3, %ymm2, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm2
	vpmulhw	%ymm6, %ymm5, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm5
	vpunpckhwd	%ymm3, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm2
	vpmulhw	%ymm7, %ymm8, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm8
	vpunpckhwd	%ymm3, %ymm2, %ymm12
	vpsubd	%ymm8, %ymm9, %ymm7
	vpsubd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm2
	vpblendw	$170, %ymm9, %ymm8, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm2
	vpblendw	$170, %ymm9, %ymm4, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 320(%rcx)
	vmovdqu	%ymm4, 352(%rcx)
	vmovdqu	glob_data + 2552(%rip), %ymm2
	vmovdqu	glob_data + 2584(%rip), %ymm3
	vmovdqu	384(%rsi), %ymm4
	vmovdqu	416(%rsi), %ymm5
	vmovdqu	384(%rdi), %ymm6
	vmovdqu	416(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm9
	vpmulhw	%ymm0, %ymm8, %ymm8
	vpsubw	%ymm8, %ymm9, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm10
	vpmulhw	%ymm6, %ymm4, %ymm11
	vpunpcklwd	%ymm11, %ymm10, %ymm9
	vpunpckhwd	%ymm11, %ymm10, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm12
	vpmulhw	%ymm7, %ymm4, %ymm4
	vpunpcklwd	%ymm4, %ymm12, %ymm11
	vpunpckhwd	%ymm4, %ymm12, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm12
	vpmulhw	%ymm6, %ymm5, %ymm6
	vpunpcklwd	%ymm6, %ymm12, %ymm5
	vpunpckhwd	%ymm6, %ymm12, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm12
	vpmulhw	%ymm7, %ymm8, %ymm7
	vpunpcklwd	%ymm7, %ymm12, %ymm8
	vpunpckhwd	%ymm7, %ymm12, %ymm12
	vpaddd	%ymm8, %ymm9, %ymm7
	vpaddd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm10
	vpblendw	$170, %ymm9, %ymm8, %ymm6
	vpackusdw	%ymm6, %ymm10, %ymm6
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm7
	vpblendw	$170, %ymm9, %ymm5, %ymm10
	vpblendw	$170, %ymm9, %ymm4, %ymm9
	vpackusdw	%ymm9, %ymm10, %ymm8
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm6, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm7, %ymm5
	vpmullw	%ymm1, %ymm8, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm6
	vpsubw	%ymm6, %ymm4, %ymm4
	vmovdqu	%ymm5, 384(%rcx)
	vmovdqu	%ymm4, 416(%rcx)
	vmovdqu	448(%rsi), %ymm4
	vmovdqu	480(%rsi), %ymm5
	vmovdqu	448(%rdi), %ymm6
	vmovdqu	480(%rdi), %ymm7
	vpmullw	%ymm5, %ymm2, %ymm8
	vpmulhw	%ymm5, %ymm3, %ymm2
	vpmulhw	%ymm0, %ymm8, %ymm3
	vpsubw	%ymm3, %ymm2, %ymm8
	vpmullw	%ymm6, %ymm4, %ymm2
	vpmulhw	%ymm6, %ymm4, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm9
	vpunpckhwd	%ymm3, %ymm2, %ymm10
	vpmullw	%ymm7, %ymm4, %ymm2
	vpmulhw	%ymm7, %ymm4, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm11
	vpunpckhwd	%ymm3, %ymm2, %ymm4
	vpmullw	%ymm6, %ymm5, %ymm2
	vpmulhw	%ymm6, %ymm5, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm5
	vpunpckhwd	%ymm3, %ymm2, %ymm6
	vpmullw	%ymm7, %ymm8, %ymm2
	vpmulhw	%ymm7, %ymm8, %ymm3
	vpunpcklwd	%ymm3, %ymm2, %ymm8
	vpunpckhwd	%ymm3, %ymm2, %ymm12
	vpsubd	%ymm8, %ymm9, %ymm7
	vpsubd	%ymm12, %ymm10, %ymm8
	vpaddd	%ymm11, %ymm5, %ymm5
	vpaddd	%ymm4, %ymm6, %ymm4
	vpxor	%ymm9, %ymm9, %ymm9
	vpblendw	$170, %ymm9, %ymm7, %ymm2
	vpblendw	$170, %ymm9, %ymm8, %ymm3
	vpackusdw	%ymm3, %ymm2, %ymm2
	vpsrld	$16, %ymm7, %ymm7
	vpsrld	$16, %ymm8, %ymm8
	vpackusdw	%ymm8, %ymm7, %ymm3
	vpblendw	$170, %ymm9, %ymm5, %ymm7
	vpblendw	$170, %ymm9, %ymm4, %ymm6
	vpackusdw	%ymm6, %ymm7, %ymm6
	vpsrld	$16, %ymm5, %ymm5
	vpsrld	$16, %ymm4, %ymm4
	vpackusdw	%ymm4, %ymm5, %ymm4
	vpmullw	%ymm1, %ymm2, %ymm5
	vpmulhw	%ymm0, %ymm5, %ymm5
	vpsubw	%ymm5, %ymm3, %ymm5
	vpmullw	%ymm1, %ymm6, %ymm6
	vpmulhw	%ymm0, %ymm6, %ymm0
	vpsubw	%ymm0, %ymm4, %ymm4
	vmovdqu	%ymm5, 448(%rcx)
	vmovdqu	%ymm4, 480(%rcx)
	ret
L_poly_csubq$1:
	vmovdqu	glob_data + 992(%rip), %ymm0
	vmovdqu	(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, (%rsi)
	vmovdqu	32(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 32(%rsi)
	vmovdqu	64(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 64(%rsi)
	vmovdqu	96(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 96(%rsi)
	vmovdqu	128(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 128(%rsi)
	vmovdqu	160(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 160(%rsi)
	vmovdqu	192(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 192(%rsi)
	vmovdqu	224(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 224(%rsi)
	vmovdqu	256(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 256(%rsi)
	vmovdqu	288(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 288(%rsi)
	vmovdqu	320(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 320(%rsi)
	vmovdqu	352(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 352(%rsi)
	vmovdqu	384(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 384(%rsi)
	vmovdqu	416(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 416(%rsi)
	vmovdqu	448(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 448(%rsi)
	vmovdqu	480(%rsi), %ymm1
	vpsubw	%ymm0, %ymm1, %ymm1
	vpsraw	$15, %ymm1, %ymm5
	vpand	%ymm0, %ymm5, %ymm5
	vpaddw	%ymm1, %ymm5, %ymm1
	vmovdqu	%ymm1, 480(%rsi)
	ret
L_poly_add2$1:
	vmovdqu	(%rcx), %ymm2
	vmovdqu	(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rcx)
	vmovdqu	32(%rcx), %ymm2
	vmovdqu	32(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 32(%rcx)
	vmovdqu	64(%rcx), %ymm2
	vmovdqu	64(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 64(%rcx)
	vmovdqu	96(%rcx), %ymm2
	vmovdqu	96(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 96(%rcx)
	vmovdqu	128(%rcx), %ymm2
	vmovdqu	128(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 128(%rcx)
	vmovdqu	160(%rcx), %ymm2
	vmovdqu	160(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 160(%rcx)
	vmovdqu	192(%rcx), %ymm2
	vmovdqu	192(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 192(%rcx)
	vmovdqu	224(%rcx), %ymm2
	vmovdqu	224(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 224(%rcx)
	vmovdqu	256(%rcx), %ymm2
	vmovdqu	256(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 256(%rcx)
	vmovdqu	288(%rcx), %ymm2
	vmovdqu	288(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 288(%rcx)
	vmovdqu	320(%rcx), %ymm2
	vmovdqu	320(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 320(%rcx)
	vmovdqu	352(%rcx), %ymm2
	vmovdqu	352(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 352(%rcx)
	vmovdqu	384(%rcx), %ymm2
	vmovdqu	384(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 384(%rcx)
	vmovdqu	416(%rcx), %ymm2
	vmovdqu	416(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 416(%rcx)
	vmovdqu	448(%rcx), %ymm2
	vmovdqu	448(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 448(%rcx)
	vmovdqu	480(%rcx), %ymm2
	vmovdqu	480(%rdi), %ymm1
	vpaddw	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 480(%rcx)
	ret
L_shake256_A32__A1120$1:
	vpxor	%ymm3, %ymm3, %ymm3
	vpxor	%ymm4, %ymm4, %ymm4
	vpxor	%ymm5, %ymm5, %ymm5
	vpxor	%ymm0, %ymm0, %ymm0
	vpxor	%ymm1, %ymm1, %ymm1
	vpxor	%ymm2, %ymm2, %ymm2
	vpxor	%ymm6, %ymm6, %ymm6
	movq	$0, %rcx
	vpbroadcastq	(%rbp,%rcx), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rbp,%rcx), %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	40(%rbp,%rcx), %rdx
	vmovq	%rdx, %xmm7
	vmovdqu	48(%rbp,%rcx), %ymm14
	movq	80(%rbp,%rcx), %rdx
	vmovq	%rdx, %xmm8
	vmovdqu	88(%rbp,%rcx), %ymm13
	movq	120(%rbp,%rcx), %rdx
	vpinsrq	$1, %rdx, %xmm7, %xmm7
	movq	128(%rbp,%rcx), %rdx
	vmovq	%rdx, %xmm9
	movq	$0, %rdx
	vpinsrq	$1, %rdx, %xmm9, %xmm9
	vpxor	%xmm10, %xmm10, %xmm10
	vinserti128	$1, %xmm10, %ymm9, %ymm9
	movq	$0, %rdx
	vpinsrq	$1, %rdx, %xmm8, %xmm8
	vpxor	%ymm10, %ymm10, %ymm10
	vpblendd	$195, %ymm9, %ymm14, %ymm11
	vpblendd	$195, %ymm13, %ymm10, %ymm12
	vpblendd	$195, %ymm14, %ymm13, %ymm13
	vpblendd	$240, %ymm12, %ymm11, %ymm14
	vpblendd	$240, %ymm11, %ymm12, %ymm11
	vpblendd	$195, %ymm10, %ymm9, %ymm10
	vpblendd	$240, %ymm13, %ymm10, %ymm9
	vpblendd	$240, %ymm10, %ymm13, %ymm10
	vpxor	%ymm14, %ymm0, %ymm0
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm9, %ymm2, %ymm2
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%xmm8, %xmm10
	vinserti128	$1, %xmm7, %ymm10, %ymm10
	vpxor	%ymm10, %ymm5, %ymm5
	addq	$136, %rcx
	call	L_keccakf1600_avx2$1
L_shake256_A32__A1120$9:
	movq	$0, %rdx
	jmp 	L_shake256_A32__A1120$6
L_shake256_A32__A1120$7:
	vpbroadcastq	(%rbp,%rcx), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rbp,%rcx), %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	40(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm7
	vmovdqu	48(%rbp,%rcx), %ymm14
	movq	80(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm8
	vmovdqu	88(%rbp,%rcx), %ymm13
	movq	120(%rbp,%rcx), %rdi
	vpinsrq	$1, %rdi, %xmm7, %xmm7
	movq	128(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm9
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm9, %xmm9
	vpxor	%xmm10, %xmm10, %xmm10
	vinserti128	$1, %xmm10, %ymm9, %ymm9
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm8, %xmm8
	vpxor	%ymm10, %ymm10, %ymm10
	vpblendd	$195, %ymm9, %ymm14, %ymm11
	vpblendd	$195, %ymm13, %ymm10, %ymm12
	vpblendd	$195, %ymm14, %ymm13, %ymm13
	vpblendd	$240, %ymm12, %ymm11, %ymm14
	vpblendd	$240, %ymm11, %ymm12, %ymm11
	vpblendd	$195, %ymm10, %ymm9, %ymm10
	vpblendd	$240, %ymm13, %ymm10, %ymm9
	vpblendd	$240, %ymm10, %ymm13, %ymm10
	vpxor	%ymm14, %ymm0, %ymm0
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm9, %ymm2, %ymm2
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%xmm8, %xmm10
	vinserti128	$1, %xmm7, %ymm10, %ymm10
	vpxor	%ymm10, %ymm5, %ymm5
	addq	$136, %rcx
	call	L_keccakf1600_avx2$1
L_shake256_A32__A1120$8:
	incq	%rdx
L_shake256_A32__A1120$6:
	cmpq	$7, %rdx
	jb  	L_shake256_A32__A1120$7
	vpbroadcastq	(%rbp,%rcx), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rbp,%rcx), %xmm9
	movq	24(%rbp,%rcx), %rdx
	vmovq	%rdx, %xmm7
	movq	$0, %rdx
	movq	$31, %rcx
	orq 	%rcx, %rdx
	vpinsrq	$1, %rdx, %xmm7, %xmm7
	vinserti128	$1, %xmm7, %ymm9, %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	$1, %rcx
	shlq	$63, %rcx
	vmovq	%rcx, %xmm7
	vpxor	%ymm8, %ymm8, %ymm8
	vinserti128	$0, %xmm7, %ymm8, %ymm8
	vpxor	%ymm8, %ymm0, %ymm0
	movq	$0, %rcx
	movq	$0, %rdx
	jmp 	L_shake256_A32__A1120$3
L_shake256_A32__A1120$4:
	call	L_keccakf1600_avx2$1
L_shake256_A32__A1120$5:
	vmovdqu	%xmm3, %xmm7
	movq	%xmm7, (%rsi,%rcx)
	vmovdqu	%ymm4, 8(%rsi,%rcx)
	vmovdqu	%xmm5, %xmm9
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdi
	movq	%rdi, 40(%rsi,%rcx)
	vpunpckhqdq	%xmm7, %xmm7, %xmm7
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm0, %ymm1, %ymm12
	vpblendd	$240, %ymm6, %ymm2, %ymm13
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm11
	vmovdqu	%ymm11, 48(%rsi,%rcx)
	movq	%xmm9, %rdi
	movq	%rdi, 80(%rsi,%rcx)
	vpblendd	$195, %ymm12, %ymm8, %ymm9
	vmovdqu	%ymm9, 88(%rsi,%rcx)
	movq	%xmm7, %rdi
	movq	%rdi, 120(%rsi,%rcx)
	vpblendd	$195, %ymm10, %ymm13, %ymm7
	movq	%xmm7, 128(%rsi,%rcx)
	addq	$136, %rcx
	incq	%rdx
L_shake256_A32__A1120$3:
	cmpq	$0, %rdx
	jb  	L_shake256_A32__A1120$4
	call	L_keccakf1600_avx2$1
L_shake256_A32__A1120$2:
	movq	%xmm3, (%rsi,%rcx)
	vmovdqu	%xmm4, %xmm7
	vmovdqu	%xmm7, 8(%rsi,%rcx)
	vextracti128	$1, %ymm4, %xmm3
	movq	%xmm3, 24(%rsi,%rcx)
	ret
L_sha3_256A_A1184$1:
	vpxor	%ymm3, %ymm3, %ymm3
	vpxor	%ymm4, %ymm4, %ymm4
	vpxor	%ymm5, %ymm5, %ymm5
	vpxor	%ymm0, %ymm0, %ymm0
	vpxor	%ymm1, %ymm1, %ymm1
	vpxor	%ymm2, %ymm2, %ymm2
	vpxor	%ymm6, %ymm6, %ymm6
	movq	$0, %rcx
	vpbroadcastq	(%rbp,%rcx), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rbp,%rcx), %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	40(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm7
	vmovdqu	48(%rbp,%rcx), %ymm14
	movq	80(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm8
	vmovdqu	88(%rbp,%rcx), %ymm13
	movq	120(%rbp,%rcx), %rdi
	vpinsrq	$1, %rdi, %xmm7, %xmm7
	movq	128(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm9
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm9, %xmm9
	vpxor	%xmm10, %xmm10, %xmm10
	vinserti128	$1, %xmm10, %ymm9, %ymm9
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm8, %xmm8
	vpxor	%ymm10, %ymm10, %ymm10
	vpblendd	$195, %ymm9, %ymm14, %ymm11
	vpblendd	$195, %ymm13, %ymm10, %ymm12
	vpblendd	$195, %ymm14, %ymm13, %ymm13
	vpblendd	$240, %ymm12, %ymm11, %ymm14
	vpblendd	$240, %ymm11, %ymm12, %ymm11
	vpblendd	$195, %ymm10, %ymm9, %ymm10
	vpblendd	$240, %ymm13, %ymm10, %ymm9
	vpblendd	$240, %ymm10, %ymm13, %ymm10
	vpxor	%ymm14, %ymm0, %ymm0
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm9, %ymm2, %ymm2
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%xmm8, %xmm10
	vinserti128	$1, %xmm7, %ymm10, %ymm10
	vpxor	%ymm10, %ymm5, %ymm5
	addq	$136, %rcx
	call	L_keccakf1600_avx2$1
L_sha3_256A_A1184$9:
	movq	$0, %rax
	jmp 	L_sha3_256A_A1184$6
L_sha3_256A_A1184$7:
	vpbroadcastq	(%rbp,%rcx), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rbp,%rcx), %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	40(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm7
	vmovdqu	48(%rbp,%rcx), %ymm14
	movq	80(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm8
	vmovdqu	88(%rbp,%rcx), %ymm13
	movq	120(%rbp,%rcx), %rdi
	vpinsrq	$1, %rdi, %xmm7, %xmm7
	movq	128(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm9
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm9, %xmm9
	vpxor	%xmm10, %xmm10, %xmm10
	vinserti128	$1, %xmm10, %ymm9, %ymm9
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm8, %xmm8
	vpxor	%ymm10, %ymm10, %ymm10
	vpblendd	$195, %ymm9, %ymm14, %ymm11
	vpblendd	$195, %ymm13, %ymm10, %ymm12
	vpblendd	$195, %ymm14, %ymm13, %ymm13
	vpblendd	$240, %ymm12, %ymm11, %ymm14
	vpblendd	$240, %ymm11, %ymm12, %ymm11
	vpblendd	$195, %ymm10, %ymm9, %ymm10
	vpblendd	$240, %ymm13, %ymm10, %ymm9
	vpblendd	$240, %ymm10, %ymm13, %ymm10
	vpxor	%ymm14, %ymm0, %ymm0
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm9, %ymm2, %ymm2
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%xmm8, %xmm10
	vinserti128	$1, %xmm7, %ymm10, %ymm10
	vpxor	%ymm10, %ymm5, %ymm5
	addq	$136, %rcx
	call	L_keccakf1600_avx2$1
L_sha3_256A_A1184$8:
	incq	%rax
L_sha3_256A_A1184$6:
	cmpq	$7, %rax
	jb  	L_sha3_256A_A1184$7
	vpbroadcastq	(%rbp,%rcx), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rbp,%rcx), %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	40(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm7
	vmovdqu	48(%rbp,%rcx), %ymm14
	movq	80(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm8
	movq	88(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm9
	movq	$0, %rdi
	movq	$6, %rcx
	orq 	%rcx, %rdi
	vpinsrq	$1, %rdi, %xmm9, %xmm9
	vpxor	%xmm10, %xmm10, %xmm10
	vinserti128	$1, %xmm10, %ymm9, %ymm13
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm7, %xmm7
	vpxor	%ymm9, %ymm9, %ymm9
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm8, %xmm8
	vpxor	%ymm10, %ymm10, %ymm10
	vpblendd	$195, %ymm9, %ymm14, %ymm11
	vpblendd	$195, %ymm13, %ymm10, %ymm12
	vpblendd	$195, %ymm14, %ymm13, %ymm13
	vpblendd	$240, %ymm12, %ymm11, %ymm14
	vpblendd	$240, %ymm11, %ymm12, %ymm11
	vpblendd	$195, %ymm10, %ymm9, %ymm10
	vpblendd	$240, %ymm13, %ymm10, %ymm9
	vpblendd	$240, %ymm10, %ymm13, %ymm10
	vpxor	%ymm14, %ymm0, %ymm0
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm9, %ymm2, %ymm2
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%xmm8, %xmm10
	vinserti128	$1, %xmm7, %ymm10, %ymm10
	vpxor	%ymm10, %ymm5, %ymm5
	movq	$1, %rcx
	shlq	$63, %rcx
	vmovq	%rcx, %xmm7
	vpxor	%ymm8, %ymm8, %ymm8
	vinserti128	$0, %xmm7, %ymm8, %ymm8
	vpxor	%ymm8, %ymm0, %ymm0
	movq	$0, %rcx
	movq	$0, %rax
	jmp 	L_sha3_256A_A1184$3
L_sha3_256A_A1184$4:
	call	L_keccakf1600_avx2$1
L_sha3_256A_A1184$5:
	vmovdqu	%xmm3, %xmm7
	movq	%xmm7, (%rsi,%rcx)
	vmovdqu	%ymm4, 8(%rsi,%rcx)
	vmovdqu	%xmm5, %xmm9
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdi
	movq	%rdi, 40(%rsi,%rcx)
	vpunpckhqdq	%xmm7, %xmm7, %xmm7
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm0, %ymm1, %ymm12
	vpblendd	$240, %ymm6, %ymm2, %ymm13
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm11
	vmovdqu	%ymm11, 48(%rsi,%rcx)
	movq	%xmm9, %rdi
	movq	%rdi, 80(%rsi,%rcx)
	vpblendd	$195, %ymm12, %ymm8, %ymm9
	vmovdqu	%ymm9, 88(%rsi,%rcx)
	movq	%xmm7, %rdi
	movq	%rdi, 120(%rsi,%rcx)
	vpblendd	$195, %ymm10, %ymm13, %ymm7
	movq	%xmm7, 128(%rsi,%rcx)
	addq	$136, %rcx
	incq	%rax
L_sha3_256A_A1184$3:
	cmpq	$0, %rax
	jb  	L_sha3_256A_A1184$4
	call	L_keccakf1600_avx2$1
L_sha3_256A_A1184$2:
	movq	%xmm3, (%rsi,%rcx)
	vmovdqu	%xmm4, %xmm7
	vmovdqu	%xmm7, 8(%rsi,%rcx)
	vextracti128	$1, %ymm4, %xmm3
	movq	%xmm3, 24(%rsi,%rcx)
	ret
L_shake128x4_squeeze3blocks$1:
	movq	%rsi, %r9
	leaq	536(%rsi), %r10
	leaq	1072(%rsi), %r11
	leaq	1608(%rsi), %rbx
	movq	$0, %rbp
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
L_shake128x4_squeeze3blocks$16:
	leaq	824(%rsp), %rsp
	movq	$0, %r12
	jmp 	L_shake128x4_squeeze3blocks$14
L_shake128x4_squeeze3blocks$15:
	vmovdqu	(%r8,%r12,4), %ymm6
	vmovdqu	32(%r8,%r12,4), %ymm4
	vmovdqu	64(%r8,%r12,4), %ymm0
	vmovdqu	96(%r8,%r12,4), %ymm1
	addq	$32, %r12
	vperm2i128	$32, %ymm0, %ymm6, %ymm2
	vperm2i128	$32, %ymm1, %ymm4, %ymm3
	vperm2i128	$49, %ymm0, %ymm6, %ymm0
	vperm2i128	$49, %ymm1, %ymm4, %ymm1
	vpunpcklqdq	%ymm3, %ymm2, %ymm4
	vpunpckhqdq	%ymm3, %ymm2, %ymm3
	vpunpcklqdq	%ymm1, %ymm0, %ymm2
	vpunpckhqdq	%ymm1, %ymm0, %ymm1
	vmovdqu	%ymm4, (%r9,%rbp)
	vmovdqu	%ymm3, (%r10,%rbp)
	vmovdqu	%ymm2, (%r11,%rbp)
	vmovdqu	%ymm1, (%rbx,%rbp)
	addq	$32, %rbp
L_shake128x4_squeeze3blocks$14:
	cmpq	$160, %r12
	jb  	L_shake128x4_squeeze3blocks$15
	jmp 	L_shake128x4_squeeze3blocks$12
L_shake128x4_squeeze3blocks$13:
	movq	(%r8,%r12,4), %r13
	movq	%r13, (%r9,%rbp)
	movq	8(%r8,%r12,4), %r13
	movq	%r13, (%r10,%rbp)
	movq	16(%r8,%r12,4), %r13
	movq	%r13, (%r11,%rbp)
	movq	24(%r8,%r12,4), %r13
	movq	%r13, (%rbx,%rbp)
	addq	$8, %r12
	addq	$8, %rbp
L_shake128x4_squeeze3blocks$12:
	cmpq	$168, %r12
	jb  	L_shake128x4_squeeze3blocks$13
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
L_shake128x4_squeeze3blocks$11:
	leaq	824(%rsp), %rsp
	movq	$0, %r12
	jmp 	L_shake128x4_squeeze3blocks$9
L_shake128x4_squeeze3blocks$10:
	vmovdqu	(%r8,%r12,4), %ymm6
	vmovdqu	32(%r8,%r12,4), %ymm4
	vmovdqu	64(%r8,%r12,4), %ymm0
	vmovdqu	96(%r8,%r12,4), %ymm1
	addq	$32, %r12
	vperm2i128	$32, %ymm0, %ymm6, %ymm2
	vperm2i128	$32, %ymm1, %ymm4, %ymm3
	vperm2i128	$49, %ymm0, %ymm6, %ymm0
	vperm2i128	$49, %ymm1, %ymm4, %ymm1
	vpunpcklqdq	%ymm3, %ymm2, %ymm4
	vpunpckhqdq	%ymm3, %ymm2, %ymm3
	vpunpcklqdq	%ymm1, %ymm0, %ymm2
	vpunpckhqdq	%ymm1, %ymm0, %ymm1
	vmovdqu	%ymm4, (%r9,%rbp)
	vmovdqu	%ymm3, (%r10,%rbp)
	vmovdqu	%ymm2, (%r11,%rbp)
	vmovdqu	%ymm1, (%rbx,%rbp)
	addq	$32, %rbp
L_shake128x4_squeeze3blocks$9:
	cmpq	$160, %r12
	jb  	L_shake128x4_squeeze3blocks$10
	jmp 	L_shake128x4_squeeze3blocks$7
L_shake128x4_squeeze3blocks$8:
	movq	(%r8,%r12,4), %r13
	movq	%r13, (%r9,%rbp)
	movq	8(%r8,%r12,4), %r13
	movq	%r13, (%r10,%rbp)
	movq	16(%r8,%r12,4), %r13
	movq	%r13, (%r11,%rbp)
	movq	24(%r8,%r12,4), %r13
	movq	%r13, (%rbx,%rbp)
	addq	$8, %r12
	addq	$8, %rbp
L_shake128x4_squeeze3blocks$7:
	cmpq	$168, %r12
	jb  	L_shake128x4_squeeze3blocks$8
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
L_shake128x4_squeeze3blocks$6:
	leaq	824(%rsp), %rsp
	movq	$0, %r12
	jmp 	L_shake128x4_squeeze3blocks$4
L_shake128x4_squeeze3blocks$5:
	vmovdqu	(%r8,%r12,4), %ymm6
	vmovdqu	32(%r8,%r12,4), %ymm4
	vmovdqu	64(%r8,%r12,4), %ymm0
	vmovdqu	96(%r8,%r12,4), %ymm1
	addq	$32, %r12
	vperm2i128	$32, %ymm0, %ymm6, %ymm2
	vperm2i128	$32, %ymm1, %ymm4, %ymm3
	vperm2i128	$49, %ymm0, %ymm6, %ymm0
	vperm2i128	$49, %ymm1, %ymm4, %ymm1
	vpunpcklqdq	%ymm3, %ymm2, %ymm4
	vpunpckhqdq	%ymm3, %ymm2, %ymm3
	vpunpcklqdq	%ymm1, %ymm0, %ymm2
	vpunpckhqdq	%ymm1, %ymm0, %ymm1
	vmovdqu	%ymm4, (%r9,%rbp)
	vmovdqu	%ymm3, (%r10,%rbp)
	vmovdqu	%ymm2, (%r11,%rbp)
	vmovdqu	%ymm1, (%rbx,%rbp)
	addq	$32, %rbp
L_shake128x4_squeeze3blocks$4:
	cmpq	$192, %r12
	jb  	L_shake128x4_squeeze3blocks$5
	jmp 	L_shake128x4_squeeze3blocks$2
L_shake128x4_squeeze3blocks$3:
	movq	(%r8,%r12,4), %r13
	movq	%r13, (%r9,%rbp)
	movq	8(%r8,%r12,4), %r13
	movq	%r13, (%r10,%rbp)
	movq	16(%r8,%r12,4), %r13
	movq	%r13, (%r11,%rbp)
	movq	24(%r8,%r12,4), %r13
	movq	%r13, (%rbx,%rbp)
	addq	$8, %r12
	addq	$8, %rbp
L_shake128x4_squeeze3blocks$2:
	cmpq	$200, %r12
	jb  	L_shake128x4_squeeze3blocks$3
	ret
L_shake128_next_state$1:
	leaq	336(%r8), %rbx
	call	L_keccakf1600_st25_avx2$1
L_shake128_next_state$2:
	ret
L_shake128_squeeze3blocks$1:
	call	L_keccakf1600_avx2$1
L_shake128_squeeze3blocks$4:
	movq	$0, %rcx
	vmovdqu	%xmm3, %xmm7
	movq	%xmm7, (%r8,%rcx)
	vmovdqu	%ymm4, 8(%r8,%rcx)
	vmovdqu	%xmm5, %xmm9
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdx
	movq	%rdx, 40(%r8,%rcx)
	vpunpckhqdq	%xmm7, %xmm7, %xmm7
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm0, %ymm1, %ymm12
	vpblendd	$240, %ymm6, %ymm2, %ymm13
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm11
	vmovdqu	%ymm11, 48(%r8,%rcx)
	movq	%xmm9, %rdx
	movq	%rdx, 80(%r8,%rcx)
	vpunpckhqdq	%xmm9, %xmm9, %xmm9
	vpblendd	$195, %ymm12, %ymm8, %ymm11
	vmovdqu	%ymm11, 88(%r8,%rcx)
	movq	%xmm7, %rdx
	movq	%rdx, 120(%r8,%rcx)
	vpblendd	$195, %ymm10, %ymm13, %ymm7
	vmovdqu	%ymm7, 128(%r8,%rcx)
	movq	%xmm9, %rdx
	movq	%rdx, 160(%r8,%rcx)
	addq	$168, %rcx
	call	L_keccakf1600_avx2$1
L_shake128_squeeze3blocks$3:
	vmovdqu	%xmm3, %xmm7
	movq	%xmm7, (%r8,%rcx)
	vmovdqu	%ymm4, 8(%r8,%rcx)
	vmovdqu	%xmm5, %xmm9
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdx
	movq	%rdx, 40(%r8,%rcx)
	vpunpckhqdq	%xmm7, %xmm7, %xmm7
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm0, %ymm1, %ymm12
	vpblendd	$240, %ymm6, %ymm2, %ymm13
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm11
	vmovdqu	%ymm11, 48(%r8,%rcx)
	movq	%xmm9, %rdx
	movq	%rdx, 80(%r8,%rcx)
	vpunpckhqdq	%xmm9, %xmm9, %xmm9
	vpblendd	$195, %ymm12, %ymm8, %ymm11
	vmovdqu	%ymm11, 88(%r8,%rcx)
	movq	%xmm7, %rdx
	movq	%rdx, 120(%r8,%rcx)
	vpblendd	$195, %ymm10, %ymm13, %ymm7
	vmovdqu	%ymm7, 128(%r8,%rcx)
	movq	%xmm9, %rdx
	movq	%rdx, 160(%r8,%rcx)
	addq	$168, %rcx
	call	L_keccakf1600_avx2$1
L_shake128_squeeze3blocks$2:
	movq	%xmm3, (%r8,%rcx)
	vmovdqu	%ymm4, 8(%r8,%rcx)
	vmovdqu	%xmm5, %xmm9
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdx
	movq	%rdx, 40(%r8,%rcx)
	vpunpckhqdq	%xmm7, %xmm7, %xmm7
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm0, %ymm1, %ymm12
	vpblendd	$240, %ymm6, %ymm2, %ymm13
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm3
	vmovdqu	%ymm3, 48(%r8,%rcx)
	movq	%xmm9, %rdx
	movq	%rdx, 80(%r8,%rcx)
	vpunpckhqdq	%xmm9, %xmm9, %xmm9
	vpblendd	$195, %ymm12, %ymm8, %ymm3
	vmovdqu	%ymm3, 88(%r8,%rcx)
	movq	%xmm7, %rdx
	movq	%rdx, 120(%r8,%rcx)
	vpblendd	$195, %ymm10, %ymm13, %ymm3
	vmovdqu	%ymm3, 128(%r8,%rcx)
	movq	%xmm9, %rdx
	movq	%rdx, 160(%r8,%rcx)
	vpblendd	$195, %ymm13, %ymm12, %ymm3
	vmovdqu	%ymm3, 168(%r8,%rcx)
	ret
L_shake128x4_absorb_A32_A2$1:
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %r12
	jmp 	L_shake128x4_absorb_A32_A2$6
L_shake128x4_absorb_A32_A2$7:
	vmovdqu	%ymm0, (%r8,%r12)
	addq	$32, %r12
L_shake128x4_absorb_A32_A2$6:
	cmpq	$800, %r12
	jb  	L_shake128x4_absorb_A32_A2$7
	movq	$0, %rbp
	movq	$0, %r12
	jmp 	L_shake128x4_absorb_A32_A2$4
L_shake128x4_absorb_A32_A2$5:
	vpbroadcastq	(%rdx,%rbp), %ymm3
	addq	$8, %rbp
	vpxor	(%r8,%r12), %ymm3, %ymm3
	vmovdqu	%ymm3, (%r8,%r12)
	addq	$32, %r12
L_shake128x4_absorb_A32_A2$4:
	cmpq	$128, %r12
	jb  	L_shake128x4_absorb_A32_A2$5
	movq	%r9, %r10
	leaq	2(%r9), %r11
	leaq	4(%r9), %rbx
	leaq	6(%r9), %r9
	movq	$0, %rbp
	movq	$16, %r12
	jmp 	L_shake128x4_absorb_A32_A2$2
L_shake128x4_absorb_A32_A2$3:
	movq	(%r10,%rbp), %r13
	xorq	%r13, (%r8,%r12,8)
	movq	(%r11,%rbp), %r13
	xorq	%r13, 8(%r8,%r12,8)
	movq	(%rbx,%rbp), %r13
	xorq	%r13, 16(%r8,%r12,8)
	movq	(%r9,%rbp), %r13
	addq	$8, %rbp
	xorq	%r13, 24(%r8,%r12,8)
	addq	$4, %r12
L_shake128x4_absorb_A32_A2$2:
	cmpq	$16, %r12
	jb  	L_shake128x4_absorb_A32_A2$3
	movq	$0, %r13
	movzwq	(%r10,%rbp), %r10
	orq 	%r10, %r13
	movq	$31, %r10
	shlq	$16, %r10
	orq 	%r10, %r13
	xorq	%r13, (%r8,%r12,8)
	movq	$0, %r13
	movzwq	(%r11,%rbp), %r10
	orq 	%r10, %r13
	movq	$31, %r10
	shlq	$16, %r10
	orq 	%r10, %r13
	xorq	%r13, 8(%r8,%r12,8)
	movq	$0, %r13
	movzwq	(%rbx,%rbp), %r10
	orq 	%r10, %r13
	movq	$31, %r10
	shlq	$16, %r10
	orq 	%r10, %r13
	xorq	%r13, 16(%r8,%r12,8)
	movq	$0, %r13
	movzwq	(%r9,%rbp), %r10
	orq 	%r10, %r13
	movq	$31, %r10
	shlq	$16, %r10
	orq 	%r10, %r13
	xorq	%r13, 24(%r8,%r12,8)
	movq	$1, %r9
	shlq	$63, %r9
	vmovq	%r9, %xmm7
	vpbroadcastq	%xmm7, %ymm8
	vpxor	640(%r8), %ymm8, %ymm8
	vmovdqu	%ymm8, 640(%r8)
	ret
L_shake128_absorb_A32_A2$1:
	vpxor	%ymm3, %ymm3, %ymm3
	vpxor	%ymm4, %ymm4, %ymm4
	vpxor	%ymm5, %ymm5, %ymm5
	vpxor	%ymm0, %ymm0, %ymm0
	vpxor	%ymm1, %ymm1, %ymm1
	vpxor	%ymm2, %ymm2, %ymm2
	vpxor	%ymm6, %ymm6, %ymm6
	movq	$0, %rbp
	vpbroadcastq	(%rdx,%rbp), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rdx,%rbp), %xmm7
	movq	24(%rdx,%rbp), %rdx
	vmovq	%rdx, %xmm9
	movq	$0, %rdx
	vpinsrq	$1, %rdx, %xmm9, %xmm10
	vinserti128	$1, %xmm10, %ymm7, %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	$0, %rbp
	vpxor	%ymm7, %ymm7, %ymm7
	vpxor	%xmm9, %xmm9, %xmm9
	movq	$0, %rdx
	movzwq	(%rcx,%rbp), %rcx
	orq 	%rcx, %rdx
	movq	$31, %rcx
	shlq	$16, %rcx
	orq 	%rcx, %rdx
	vpinsrq	$1, %rdx, %xmm9, %xmm10
	vinserti128	$1, %xmm10, %ymm7, %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	$1, %rcx
	shlq	$63, %rcx
	vpxor	%xmm7, %xmm7, %xmm7
	vpinsrq	$1, %rcx, %xmm7, %xmm7
	vpxor	%ymm8, %ymm8, %ymm8
	vinserti128	$0, %xmm7, %ymm8, %ymm8
	vpxor	%ymm8, %ymm5, %ymm5
	ret
L_shake256x4_A128__A32_A1$1:
	leaq	32(%rsp), %r8
	vpxor	%ymm0, %ymm0, %ymm0
	movq	$0, %rax
	jmp 	L_shake256x4_A128__A32_A1$11
L_shake256x4_A128__A32_A1$12:
	vmovdqu	%ymm0, (%r8,%rax)
	addq	$32, %rax
L_shake256x4_A128__A32_A1$11:
	cmpq	$800, %rax
	jb  	L_shake256x4_A128__A32_A1$12
	movq	$0, %rcx
	movq	$0, %r12
	jmp 	L_shake256x4_A128__A32_A1$9
L_shake256x4_A128__A32_A1$10:
	vpbroadcastq	(%rdi,%rcx), %ymm3
	addq	$8, %rcx
	vpxor	(%r8,%r12), %ymm3, %ymm3
	vmovdqu	%ymm3, (%r8,%r12)
	addq	$32, %r12
L_shake256x4_A128__A32_A1$9:
	cmpq	$128, %r12
	jb  	L_shake256x4_A128__A32_A1$10
	movq	%rdx, %r9
	leaq	1(%rdx), %rax
	leaq	2(%rdx), %rcx
	leaq	3(%rdx), %rdx
	movq	$0, %rbp
	movq	$16, %r12
	jmp 	L_shake256x4_A128__A32_A1$7
L_shake256x4_A128__A32_A1$8:
	movq	(%r9,%rbp), %r13
	xorq	%r13, (%r8,%r12,8)
	movq	(%rax,%rbp), %r13
	xorq	%r13, 8(%r8,%r12,8)
	movq	(%rcx,%rbp), %r13
	xorq	%r13, 16(%r8,%r12,8)
	movq	(%rdx,%rbp), %r13
	addq	$8, %rbp
	xorq	%r13, 24(%r8,%r12,8)
	addq	$4, %r12
L_shake256x4_A128__A32_A1$7:
	cmpq	$16, %r12
	jb  	L_shake256x4_A128__A32_A1$8
	movq	$0, %r13
	movzbq	(%r9,%rbp), %r9
	orq 	$7936, %r9
	orq 	%r9, %r13
	xorq	%r13, (%r8,%r12,8)
	movq	$0, %r13
	movzbq	(%rax,%rbp), %r9
	orq 	$7936, %r9
	orq 	%r9, %r13
	xorq	%r13, 8(%r8,%r12,8)
	movq	$0, %r13
	movzbq	(%rcx,%rbp), %rcx
	orq 	$7936, %rcx
	orq 	%rcx, %r13
	xorq	%r13, 16(%r8,%r12,8)
	movq	$0, %r13
	movzbq	(%rdx,%rbp), %rcx
	orq 	$7936, %rcx
	orq 	%rcx, %r13
	xorq	%r13, 24(%r8,%r12,8)
	movq	$1, %rcx
	shlq	$63, %rcx
	vmovq	%rcx, %xmm7
	vpbroadcastq	%xmm7, %ymm8
	vpxor	512(%r8), %ymm8, %ymm8
	vmovdqu	%ymm8, 512(%r8)
	movq	$0, %rcx
	leaq	-824(%rsp), %rsp
	call	L_keccakf1600_avx2x4$1
L_shake256x4_A128__A32_A1$6:
	leaq	824(%rsp), %rsp
	movq	$0, %rax
	jmp 	L_shake256x4_A128__A32_A1$4
L_shake256x4_A128__A32_A1$5:
	vmovdqu	(%r8,%rax,4), %ymm6
	vmovdqu	32(%r8,%rax,4), %ymm4
	vmovdqu	64(%r8,%rax,4), %ymm0
	vmovdqu	96(%r8,%rax,4), %ymm1
	addq	$32, %rax
	vperm2i128	$32, %ymm0, %ymm6, %ymm2
	vperm2i128	$32, %ymm1, %ymm4, %ymm3
	vperm2i128	$49, %ymm0, %ymm6, %ymm0
	vperm2i128	$49, %ymm1, %ymm4, %ymm1
	vpunpcklqdq	%ymm3, %ymm2, %ymm4
	vpunpckhqdq	%ymm3, %ymm2, %ymm3
	vpunpcklqdq	%ymm1, %ymm0, %ymm2
	vpunpckhqdq	%ymm1, %ymm0, %ymm1
	vmovdqu	%ymm4, (%rsi,%rcx)
	vmovdqu	%ymm3, (%r10,%rcx)
	vmovdqu	%ymm2, (%r11,%rcx)
	vmovdqu	%ymm1, (%rbx,%rcx)
	addq	$32, %rcx
L_shake256x4_A128__A32_A1$4:
	cmpq	$128, %rax
	jb  	L_shake256x4_A128__A32_A1$5
	jmp 	L_shake256x4_A128__A32_A1$2
L_shake256x4_A128__A32_A1$3:
	movq	(%r8,%rax,4), %r13
	movq	%r13, (%rsi,%rcx)
	movq	8(%r8,%rax,4), %r13
	movq	%r13, (%r10,%rcx)
	movq	16(%r8,%rax,4), %r13
	movq	%r13, (%r11,%rcx)
	movq	24(%r8,%rax,4), %r13
	movq	%r13, (%rbx,%rcx)
	addq	$8, %rax
	addq	$8, %rcx
L_shake256x4_A128__A32_A1$2:
	cmpq	$128, %rax
	jb  	L_shake256x4_A128__A32_A1$3
	ret
L_sha3_512A_A64$1:
	vpxor	%ymm3, %ymm3, %ymm3
	vpxor	%ymm4, %ymm4, %ymm4
	vpxor	%ymm5, %ymm5, %ymm5
	vpxor	%ymm0, %ymm0, %ymm0
	vpxor	%ymm1, %ymm1, %ymm1
	vpxor	%ymm2, %ymm2, %ymm2
	vpxor	%ymm6, %ymm6, %ymm6
	movq	$0, %rcx
	vpbroadcastq	(%rbp,%rcx), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rbp,%rcx), %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	40(%rbp,%rcx), %rdi
	vmovq	%rdi, %xmm7
	vmovdqu	48(%rbp,%rcx), %xmm9
	movq	$0, %rdi
	movq	$6, %rcx
	orq 	%rcx, %rdi
	vmovq	%rdi, %xmm11
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm11, %xmm10
	vinserti128	$1, %xmm10, %ymm9, %ymm14
	movq	$0, %rdi
	vmovq	%rdi, %xmm8
	vpxor	%ymm13, %ymm13, %ymm13
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm7, %xmm7
	vpxor	%ymm9, %ymm9, %ymm9
	movq	$0, %rdi
	vpinsrq	$1, %rdi, %xmm8, %xmm8
	vpxor	%ymm10, %ymm10, %ymm10
	vpblendd	$195, %ymm9, %ymm14, %ymm11
	vpblendd	$195, %ymm13, %ymm10, %ymm12
	vpblendd	$195, %ymm14, %ymm13, %ymm13
	vpblendd	$240, %ymm12, %ymm11, %ymm14
	vpblendd	$240, %ymm11, %ymm12, %ymm11
	vpblendd	$195, %ymm10, %ymm9, %ymm10
	vpblendd	$240, %ymm13, %ymm10, %ymm9
	vpblendd	$240, %ymm10, %ymm13, %ymm10
	vpxor	%ymm14, %ymm0, %ymm0
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm9, %ymm2, %ymm2
	vpxor	%ymm10, %ymm6, %ymm6
	vmovdqu	%xmm8, %xmm10
	vinserti128	$1, %xmm7, %ymm10, %ymm10
	vpxor	%ymm10, %ymm5, %ymm5
	movq	$1, %rcx
	shlq	$63, %rcx
	vmovq	%rcx, %xmm7
	vpxor	%ymm8, %ymm8, %ymm8
	vinserti128	$1, %xmm7, %ymm8, %ymm8
	vpxor	%ymm8, %ymm1, %ymm1
	movq	$0, %rcx
	movq	$0, %rax
	jmp 	L_sha3_512A_A64$3
L_sha3_512A_A64$4:
	call	L_keccakf1600_avx2$1
L_sha3_512A_A64$5:
	vmovdqu	%xmm3, %xmm7
	movq	%xmm7, (%rsi,%rcx)
	vmovdqu	%ymm4, 8(%rsi,%rcx)
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdi
	movq	%rdi, 40(%rsi,%rcx)
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm7
	vmovdqu	%xmm7, %xmm8
	vmovdqu	%xmm8, 48(%rsi,%rcx)
	vextracti128	$1, %ymm7, %xmm7
	movq	%xmm7, 64(%rsi,%rcx)
	addq	$72, %rcx
	incq	%rax
L_sha3_512A_A64$3:
	cmpq	$0, %rax
	jb  	L_sha3_512A_A64$4
	call	L_keccakf1600_avx2$1
L_sha3_512A_A64$2:
	movq	%xmm3, (%rsi,%rcx)
	vmovdqu	%ymm4, 8(%rsi,%rcx)
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdi
	movq	%rdi, 40(%rsi,%rcx)
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm3
	vmovdqu	%xmm3, 48(%rsi,%rcx)
	ret
L_sha3_512A_A33$1:
	vpxor	%ymm3, %ymm3, %ymm3
	vpxor	%ymm4, %ymm4, %ymm4
	vpxor	%ymm5, %ymm5, %ymm5
	vpxor	%ymm0, %ymm0, %ymm0
	vpxor	%ymm1, %ymm1, %ymm1
	vpxor	%ymm2, %ymm2, %ymm2
	vpxor	%ymm6, %ymm6, %ymm6
	movq	$0, %rcx
	vpbroadcastq	(%rbp,%rcx), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vmovdqu	8(%rbp,%rcx), %xmm9
	movq	24(%rbp,%rcx), %rdx
	vmovq	%rdx, %xmm7
	movq	$0, %rdx
	movzbq	32(%rbp,%rcx), %rcx
	orq 	$1536, %rcx
	orq 	%rcx, %rdx
	vpinsrq	$1, %rdx, %xmm7, %xmm7
	vinserti128	$1, %xmm7, %ymm9, %ymm9
	vpxor	%ymm9, %ymm4, %ymm4
	movq	$1, %rcx
	shlq	$63, %rcx
	vmovq	%rcx, %xmm7
	vpxor	%ymm8, %ymm8, %ymm8
	vinserti128	$1, %xmm7, %ymm8, %ymm8
	vpxor	%ymm8, %ymm1, %ymm1
	movq	$0, %rcx
	movq	$0, %rax
	jmp 	L_sha3_512A_A33$3
L_sha3_512A_A33$4:
	call	L_keccakf1600_avx2$1
L_sha3_512A_A33$5:
	vmovdqu	%xmm3, %xmm7
	movq	%xmm7, (%rsi,%rcx)
	vmovdqu	%ymm4, 8(%rsi,%rcx)
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdx
	movq	%rdx, 40(%rsi,%rcx)
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm7
	vmovdqu	%xmm7, %xmm8
	vmovdqu	%xmm8, 48(%rsi,%rcx)
	vextracti128	$1, %ymm7, %xmm7
	movq	%xmm7, 64(%rsi,%rcx)
	addq	$72, %rcx
	incq	%rax
L_sha3_512A_A33$3:
	cmpq	$0, %rax
	jb  	L_sha3_512A_A33$4
	call	L_keccakf1600_avx2$1
L_sha3_512A_A33$2:
	movq	%xmm3, (%rsi,%rcx)
	vmovdqu	%ymm4, 8(%rsi,%rcx)
	vextracti128	$1, %ymm5, %xmm7
	movq	%xmm7, %rdx
	movq	%rdx, 40(%rsi,%rcx)
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vpblendd	$195, %ymm8, %ymm10, %ymm3
	vmovdqu	%xmm3, 48(%rsi,%rcx)
	ret
L_keccakf1600_avx2x4$1:
	leaq	glob_data + 4760(%rip), %r12
	leaq	32(%rsp), %r13
	vmovdqu	glob_data + 256(%rip), %ymm0
	vmovdqu	glob_data + 288(%rip), %ymm1
	movq	$0, %r14
	jmp 	L_keccakf1600_avx2x4$2
L_keccakf1600_avx2x4$3:
	vpbroadcastq	(%r12,%r14,8), %ymm2
	call	L_keccakf1600_4x_pround$1
L_keccakf1600_avx2x4$5:
	vpxor	(%r13), %ymm2, %ymm5
	vmovdqu	%ymm5, (%r13)
	xchg	%r8, %r13
	vpbroadcastq	8(%r12,%r14,8), %ymm2
	call	L_keccakf1600_4x_pround$1
L_keccakf1600_avx2x4$4:
	vpxor	(%r13), %ymm2, %ymm5
	vmovdqu	%ymm5, (%r13)
	xchg	%r13, %r8
	addq	$2, %r14
L_keccakf1600_avx2x4$2:
	cmpq	$24, %r14
	jb  	L_keccakf1600_avx2x4$3
	ret
L_keccakf1600_4x_pround$1:
	vmovdqu	(%r8), %ymm7
	vmovdqu	32(%r8), %ymm5
	vmovdqu	64(%r8), %ymm6
	vmovdqu	96(%r8), %ymm8
	vmovdqu	128(%r8), %ymm9
	vpxor	160(%r8), %ymm7, %ymm7
	vpxor	192(%r8), %ymm5, %ymm5
	vpxor	224(%r8), %ymm6, %ymm6
	vpxor	256(%r8), %ymm8, %ymm8
	vpxor	288(%r8), %ymm9, %ymm9
	vpxor	320(%r8), %ymm7, %ymm7
	vpxor	352(%r8), %ymm5, %ymm5
	vpxor	384(%r8), %ymm6, %ymm6
	vpxor	416(%r8), %ymm8, %ymm8
	vpxor	448(%r8), %ymm9, %ymm9
	vpxor	480(%r8), %ymm7, %ymm7
	vpxor	512(%r8), %ymm5, %ymm5
	vpxor	544(%r8), %ymm6, %ymm6
	vpxor	576(%r8), %ymm8, %ymm8
	vpxor	608(%r8), %ymm9, %ymm9
	vpxor	640(%r8), %ymm7, %ymm7
	vpxor	672(%r8), %ymm5, %ymm5
	vpxor	704(%r8), %ymm6, %ymm6
	vpxor	736(%r8), %ymm8, %ymm8
	vpxor	768(%r8), %ymm9, %ymm9
	vmovdqu	%ymm5, %ymm3
	vpsllq	$1, %ymm3, %ymm4
	vpsrlq	$63, %ymm3, %ymm3
	vpor	%ymm4, %ymm3, %ymm3
	vpxor	%ymm9, %ymm3, %ymm3
	vmovdqu	%ymm6, %ymm4
	vpsllq	$1, %ymm4, %ymm10
	vpsrlq	$63, %ymm4, %ymm4
	vpor	%ymm10, %ymm4, %ymm4
	vpxor	%ymm7, %ymm4, %ymm4
	vmovdqu	%ymm8, %ymm10
	vpsllq	$1, %ymm10, %ymm11
	vpsrlq	$63, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vpxor	%ymm5, %ymm10, %ymm5
	vpsllq	$1, %ymm9, %ymm10
	vpsrlq	$63, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vpxor	%ymm6, %ymm9, %ymm6
	vpsllq	$1, %ymm7, %ymm9
	vpsrlq	$63, %ymm7, %ymm7
	vpor	%ymm9, %ymm7, %ymm7
	vpxor	%ymm8, %ymm7, %ymm7
	vmovdqu	(%r8), %ymm8
	vpxor	%ymm3, %ymm8, %ymm8
	vmovdqu	192(%r8), %ymm9
	vpxor	%ymm4, %ymm9, %ymm9
	vpsllq	$44, %ymm9, %ymm10
	vpsrlq	$20, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	384(%r8), %ymm10
	vpxor	%ymm5, %ymm10, %ymm10
	vpsllq	$43, %ymm10, %ymm11
	vpsrlq	$21, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	576(%r8), %ymm11
	vpxor	%ymm6, %ymm11, %ymm11
	vpsllq	$21, %ymm11, %ymm12
	vpsrlq	$43, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	768(%r8), %ymm12
	vpxor	%ymm7, %ymm12, %ymm12
	vpsllq	$14, %ymm12, %ymm13
	vpsrlq	$50, %ymm12, %ymm12
	vpor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm10, %ymm9, %ymm13
	vpxor	%ymm8, %ymm13, %ymm13
	vmovdqu	%ymm13, (%r13)
	vpandn	%ymm11, %ymm10, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vmovdqu	%ymm13, 32(%r13)
	vpandn	%ymm12, %ymm11, %ymm13
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	%ymm10, 64(%r13)
	vpandn	%ymm8, %ymm12, %ymm10
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 96(%r13)
	vpandn	%ymm9, %ymm8, %ymm8
	vpxor	%ymm12, %ymm8, %ymm8
	vmovdqu	%ymm8, 128(%r13)
	vmovdqu	96(%r8), %ymm8
	vpxor	%ymm6, %ymm8, %ymm8
	vpsllq	$28, %ymm8, %ymm9
	vpsrlq	$36, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	288(%r8), %ymm9
	vpxor	%ymm7, %ymm9, %ymm9
	vpsllq	$20, %ymm9, %ymm10
	vpsrlq	$44, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	320(%r8), %ymm10
	vpxor	%ymm3, %ymm10, %ymm10
	vpsllq	$3, %ymm10, %ymm11
	vpsrlq	$61, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	512(%r8), %ymm11
	vpxor	%ymm4, %ymm11, %ymm11
	vpsllq	$45, %ymm11, %ymm12
	vpsrlq	$19, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	704(%r8), %ymm12
	vpxor	%ymm5, %ymm12, %ymm12
	vpsllq	$61, %ymm12, %ymm13
	vpsrlq	$3, %ymm12, %ymm12
	vpor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm10, %ymm9, %ymm13
	vpxor	%ymm8, %ymm13, %ymm13
	vmovdqu	%ymm13, 160(%r13)
	vpandn	%ymm11, %ymm10, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vmovdqu	%ymm13, 192(%r13)
	vpandn	%ymm12, %ymm11, %ymm13
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	%ymm10, 224(%r13)
	vpandn	%ymm8, %ymm12, %ymm10
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 256(%r13)
	vpandn	%ymm9, %ymm8, %ymm8
	vpxor	%ymm12, %ymm8, %ymm8
	vmovdqu	%ymm8, 288(%r13)
	vmovdqu	32(%r8), %ymm8
	vpxor	%ymm4, %ymm8, %ymm8
	vpsllq	$1, %ymm8, %ymm9
	vpsrlq	$63, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	224(%r8), %ymm9
	vpxor	%ymm5, %ymm9, %ymm9
	vpsllq	$6, %ymm9, %ymm10
	vpsrlq	$58, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	416(%r8), %ymm10
	vpxor	%ymm6, %ymm10, %ymm10
	vpsllq	$25, %ymm10, %ymm11
	vpsrlq	$39, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	608(%r8), %ymm11
	vpxor	%ymm7, %ymm11, %ymm11
	vpshufb	%ymm0, %ymm11, %ymm11
	vmovdqu	640(%r8), %ymm12
	vpxor	%ymm3, %ymm12, %ymm12
	vpsllq	$18, %ymm12, %ymm13
	vpsrlq	$46, %ymm12, %ymm12
	vpor	%ymm13, %ymm12, %ymm12
	vpandn	%ymm10, %ymm9, %ymm13
	vpxor	%ymm8, %ymm13, %ymm13
	vmovdqu	%ymm13, 320(%r13)
	vpandn	%ymm11, %ymm10, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vmovdqu	%ymm13, 352(%r13)
	vpandn	%ymm12, %ymm11, %ymm13
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	%ymm10, 384(%r13)
	vpandn	%ymm8, %ymm12, %ymm10
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 416(%r13)
	vpandn	%ymm9, %ymm8, %ymm8
	vpxor	%ymm12, %ymm8, %ymm8
	vmovdqu	%ymm8, 448(%r13)
	vmovdqu	128(%r8), %ymm8
	vpxor	%ymm7, %ymm8, %ymm8
	vpsllq	$27, %ymm8, %ymm9
	vpsrlq	$37, %ymm8, %ymm8
	vpor	%ymm9, %ymm8, %ymm8
	vmovdqu	160(%r8), %ymm9
	vpxor	%ymm3, %ymm9, %ymm9
	vpsllq	$36, %ymm9, %ymm10
	vpsrlq	$28, %ymm9, %ymm9
	vpor	%ymm10, %ymm9, %ymm9
	vmovdqu	352(%r8), %ymm10
	vpxor	%ymm4, %ymm10, %ymm10
	vpsllq	$10, %ymm10, %ymm11
	vpsrlq	$54, %ymm10, %ymm10
	vpor	%ymm11, %ymm10, %ymm10
	vmovdqu	544(%r8), %ymm11
	vpxor	%ymm5, %ymm11, %ymm11
	vpsllq	$15, %ymm11, %ymm12
	vpsrlq	$49, %ymm11, %ymm11
	vpor	%ymm12, %ymm11, %ymm11
	vmovdqu	736(%r8), %ymm12
	vpxor	%ymm6, %ymm12, %ymm12
	vpshufb	%ymm1, %ymm12, %ymm12
	vpandn	%ymm10, %ymm9, %ymm13
	vpxor	%ymm8, %ymm13, %ymm13
	vmovdqu	%ymm13, 480(%r13)
	vpandn	%ymm11, %ymm10, %ymm13
	vpxor	%ymm9, %ymm13, %ymm13
	vmovdqu	%ymm13, 512(%r13)
	vpandn	%ymm12, %ymm11, %ymm13
	vpxor	%ymm10, %ymm13, %ymm10
	vmovdqu	%ymm10, 544(%r13)
	vpandn	%ymm8, %ymm12, %ymm10
	vpxor	%ymm11, %ymm10, %ymm10
	vmovdqu	%ymm10, 576(%r13)
	vpandn	%ymm9, %ymm8, %ymm8
	vpxor	%ymm12, %ymm8, %ymm8
	vmovdqu	%ymm8, 608(%r13)
	vmovdqu	64(%r8), %ymm8
	vpxor	%ymm5, %ymm8, %ymm5
	vpsllq	$62, %ymm5, %ymm8
	vpsrlq	$2, %ymm5, %ymm5
	vpor	%ymm8, %ymm5, %ymm5
	vmovdqu	256(%r8), %ymm8
	vpxor	%ymm6, %ymm8, %ymm6
	vpsllq	$55, %ymm6, %ymm8
	vpsrlq	$9, %ymm6, %ymm6
	vpor	%ymm8, %ymm6, %ymm6
	vmovdqu	448(%r8), %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vpsllq	$39, %ymm7, %ymm8
	vpsrlq	$25, %ymm7, %ymm7
	vpor	%ymm8, %ymm7, %ymm7
	vmovdqu	480(%r8), %ymm8
	vpxor	%ymm3, %ymm8, %ymm3
	vpsllq	$41, %ymm3, %ymm8
	vpsrlq	$23, %ymm3, %ymm3
	vpor	%ymm8, %ymm3, %ymm3
	vmovdqu	672(%r8), %ymm8
	vpxor	%ymm4, %ymm8, %ymm4
	vpsllq	$2, %ymm4, %ymm8
	vpsrlq	$62, %ymm4, %ymm4
	vpor	%ymm8, %ymm4, %ymm4
	vpandn	%ymm7, %ymm6, %ymm8
	vpxor	%ymm5, %ymm8, %ymm8
	vmovdqu	%ymm8, 640(%r13)
	vpandn	%ymm3, %ymm7, %ymm8
	vpxor	%ymm6, %ymm8, %ymm8
	vmovdqu	%ymm8, 672(%r13)
	vpandn	%ymm4, %ymm3, %ymm8
	vpxor	%ymm7, %ymm8, %ymm7
	vmovdqu	%ymm7, 704(%r13)
	vpandn	%ymm5, %ymm4, %ymm7
	vpxor	%ymm3, %ymm7, %ymm3
	vmovdqu	%ymm3, 736(%r13)
	vpandn	%ymm6, %ymm5, %ymm3
	vpxor	%ymm4, %ymm3, %ymm3
	vmovdqu	%ymm3, 768(%r13)
	ret
L_keccakf1600_st25_avx2$1:
	vpbroadcastq	(%rbx), %ymm3
	vmovdqu	8(%rbx), %ymm4
	vmovq	40(%rbx), %xmm7
	vmovdqu	48(%rbx), %ymm0
	vmovq	80(%rbx), %xmm9
	vmovdqu	88(%rbx), %ymm1
	movq	120(%rbx), %r12
	vpinsrq	$1, %r12, %xmm7, %xmm7
	vmovdqu	128(%rbx), %ymm2
	movq	160(%rbx), %r12
	vpinsrq	$1, %r12, %xmm9, %xmm9
	vmovdqu	%xmm9, %xmm10
	vinserti128	$1, %xmm7, %ymm10, %ymm5
	vmovdqu	168(%rbx), %ymm6
	vpblendd	$195, %ymm2, %ymm0, %ymm10
	vpblendd	$195, %ymm1, %ymm6, %ymm12
	vpblendd	$195, %ymm0, %ymm1, %ymm13
	vpblendd	$240, %ymm12, %ymm10, %ymm0
	vpblendd	$240, %ymm10, %ymm12, %ymm1
	vpblendd	$195, %ymm6, %ymm2, %ymm10
	vpblendd	$240, %ymm13, %ymm10, %ymm2
	vpblendd	$240, %ymm10, %ymm13, %ymm6
	call	L__keccakf1600_avx2$1
L_keccakf1600_st25_avx2$2:
	vmovlpd	%xmm3, (%rbx)
	vmovdqu	%ymm4, 8(%rbx)
	vpblendd	$240, %ymm1, %ymm0, %ymm10
	vpblendd	$240, %ymm0, %ymm1, %ymm12
	vpblendd	$240, %ymm6, %ymm2, %ymm13
	vpblendd	$240, %ymm2, %ymm6, %ymm8
	vextracti128	$1, %ymm5, %xmm7
	vmovlpd	%xmm7, 40(%rbx)
	vpblendd	$195, %ymm8, %ymm10, %ymm0
	vmovdqu	%ymm0, 48(%rbx)
	vmovlpd	%xmm5, 80(%rbx)
	vpblendd	$195, %ymm12, %ymm8, %ymm0
	vmovdqu	%ymm0, 88(%rbx)
	vmovhpd	%xmm7, 120(%rbx)
	vpblendd	$195, %ymm10, %ymm13, %ymm0
	vmovdqu	%ymm0, 128(%rbx)
	vmovhpd	%xmm5, 160(%rbx)
	vpblendd	$195, %ymm13, %ymm12, %ymm0
	vmovdqu	%ymm0, 168(%rbx)
	ret
L_keccakf1600_avx2$1:
	call	L__keccakf1600_avx2$1
L_keccakf1600_avx2$2:
	ret
L__keccakf1600_avx2$1:
	leaq	glob_data + 4760(%rip), %r11
	movq	$0, %r12
L__keccakf1600_avx2$2:
	vpshufd	$78, %ymm5, %ymm7
	vpxor	%ymm0, %ymm2, %ymm8
	vpxor	%ymm6, %ymm1, %ymm9
	vpxor	%ymm4, %ymm8, %ymm8
	vpxor	%ymm9, %ymm8, %ymm8
	vpermq	$147, %ymm8, %ymm10
	vpxor	%ymm5, %ymm7, %ymm7
	vpermq	$78, %ymm7, %ymm15
	vpsrlq	$63, %ymm8, %ymm9
	vpaddq	%ymm8, %ymm8, %ymm8
	vpor	%ymm8, %ymm9, %ymm9
	vpermq	$57, %ymm9, %ymm8
	vpxor	%ymm10, %ymm9, %ymm9
	vpermq	$0, %ymm9, %ymm9
	vpxor	%ymm3, %ymm7, %ymm7
	vpxor	%ymm15, %ymm7, %ymm7
	vpsrlq	$63, %ymm7, %ymm15
	vpaddq	%ymm7, %ymm7, %ymm14
	vpor	%ymm15, %ymm14, %ymm14
	vpxor	%ymm9, %ymm5, %ymm5
	vpxor	%ymm9, %ymm3, %ymm3
	vpblendd	$192, %ymm14, %ymm8, %ymm8
	vpblendd	$3, %ymm7, %ymm10, %ymm10
	vpxor	%ymm10, %ymm8, %ymm8
	vpsllvq	glob_data + 512(%rip), %ymm5, %ymm10
	vpsrlvq	glob_data + 320(%rip), %ymm5, %ymm5
	vpor	%ymm10, %ymm5, %ymm5
	vpxor	%ymm8, %ymm0, %ymm0
	vpsllvq	glob_data + 576(%rip), %ymm0, %ymm10
	vpsrlvq	glob_data + 384(%rip), %ymm0, %ymm0
	vpor	%ymm10, %ymm0, %ymm0
	vpxor	%ymm8, %ymm1, %ymm1
	vpsllvq	glob_data + 608(%rip), %ymm1, %ymm7
	vpsrlvq	glob_data + 416(%rip), %ymm1, %ymm1
	vpor	%ymm7, %ymm1, %ymm9
	vpxor	%ymm8, %ymm2, %ymm2
	vpsllvq	glob_data + 640(%rip), %ymm2, %ymm11
	vpsrlvq	glob_data + 448(%rip), %ymm2, %ymm2
	vpor	%ymm11, %ymm2, %ymm2
	vpxor	%ymm8, %ymm6, %ymm6
	vpermq	$141, %ymm5, %ymm10
	vpermq	$141, %ymm0, %ymm1
	vpsllvq	glob_data + 672(%rip), %ymm6, %ymm12
	vpsrlvq	glob_data + 480(%rip), %ymm6, %ymm7
	vpor	%ymm12, %ymm7, %ymm7
	vpxor	%ymm8, %ymm4, %ymm4
	vpermq	$27, %ymm9, %ymm8
	vpermq	$114, %ymm2, %ymm11
	vpsllvq	glob_data + 544(%rip), %ymm4, %ymm0
	vpsrlvq	glob_data + 352(%rip), %ymm4, %ymm2
	vpor	%ymm0, %ymm2, %ymm4
	vpsrldq	$8, %ymm7, %ymm12
	vpandn	%ymm12, %ymm7, %ymm2
	vpblendd	$12, %ymm11, %ymm4, %ymm0
	vpblendd	$12, %ymm4, %ymm1, %ymm5
	vpblendd	$12, %ymm1, %ymm10, %ymm6
	vpblendd	$12, %ymm10, %ymm4, %ymm12
	vpblendd	$48, %ymm1, %ymm0, %ymm0
	vpblendd	$48, %ymm8, %ymm5, %ymm5
	vpblendd	$48, %ymm4, %ymm6, %ymm6
	vpblendd	$48, %ymm11, %ymm12, %ymm12
	vpblendd	$192, %ymm8, %ymm0, %ymm0
	vpblendd	$192, %ymm11, %ymm5, %ymm5
	vpblendd	$192, %ymm11, %ymm6, %ymm6
	vpblendd	$192, %ymm1, %ymm12, %ymm12
	vpandn	%ymm5, %ymm0, %ymm0
	vpandn	%ymm12, %ymm6, %ymm6
	vpblendd	$12, %ymm4, %ymm8, %ymm12
	vpblendd	$12, %ymm8, %ymm10, %ymm5
	vpxor	%ymm10, %ymm0, %ymm0
	vpblendd	$48, %ymm10, %ymm12, %ymm12
	vpblendd	$48, %ymm1, %ymm5, %ymm5
	vpxor	%ymm8, %ymm6, %ymm6
	vpblendd	$192, %ymm1, %ymm12, %ymm12
	vpblendd	$192, %ymm4, %ymm5, %ymm5
	vpandn	%ymm5, %ymm12, %ymm12
	vpxor	%ymm11, %ymm12, %ymm12
	vpermq	$30, %ymm7, %ymm9
	vpblendd	$48, %ymm3, %ymm9, %ymm5
	vpermq	$57, %ymm7, %ymm9
	vpblendd	$192, %ymm3, %ymm9, %ymm9
	vpandn	%ymm5, %ymm9, %ymm9
	vpblendd	$12, %ymm8, %ymm1, %ymm5
	vpblendd	$12, %ymm1, %ymm11, %ymm14
	vpblendd	$48, %ymm11, %ymm5, %ymm5
	vpblendd	$48, %ymm10, %ymm14, %ymm14
	vpblendd	$192, %ymm10, %ymm5, %ymm5
	vpblendd	$192, %ymm8, %ymm14, %ymm14
	vpandn	%ymm14, %ymm5, %ymm5
	vpxor	%ymm4, %ymm5, %ymm5
	vpermq	$0, %ymm2, %ymm15
	vpermq	$27, %ymm0, %ymm0
	vpermq	$141, %ymm6, %ymm2
	vpermq	$114, %ymm12, %ymm6
	vpblendd	$12, %ymm10, %ymm11, %ymm12
	vpblendd	$12, %ymm11, %ymm8, %ymm14
	vpblendd	$48, %ymm8, %ymm12, %ymm12
	vpblendd	$48, %ymm4, %ymm14, %ymm14
	vpblendd	$192, %ymm4, %ymm12, %ymm12
	vpblendd	$192, %ymm10, %ymm14, %ymm14
	vpandn	%ymm14, %ymm12, %ymm12
	vpxor	%ymm15, %ymm3, %ymm3
	vpxor	%ymm7, %ymm9, %ymm4
	vpxor	%ymm1, %ymm12, %ymm1
	vpbroadcastq	(%r11,%r12,8), %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	incq	%r12
	cmpq	$24, %r12
	jb  	L__keccakf1600_avx2$2
	ret
L_nttunpack$1:
	vmovdqu	(%rcx), %ymm3
	vmovdqu	32(%rcx), %ymm5
	vmovdqu	64(%rcx), %ymm7
	vmovdqu	96(%rcx), %ymm9
	vmovdqu	128(%rcx), %ymm1
	vmovdqu	160(%rcx), %ymm6
	vmovdqu	192(%rcx), %ymm8
	vmovdqu	224(%rcx), %ymm10
	vperm2i128	$32, %ymm1, %ymm3, %ymm2
	vperm2i128	$49, %ymm1, %ymm3, %ymm3
	vperm2i128	$32, %ymm6, %ymm5, %ymm4
	vperm2i128	$49, %ymm6, %ymm5, %ymm5
	vperm2i128	$32, %ymm8, %ymm7, %ymm1
	vperm2i128	$49, %ymm8, %ymm7, %ymm6
	vperm2i128	$32, %ymm10, %ymm9, %ymm8
	vperm2i128	$49, %ymm10, %ymm9, %ymm13
	vpunpcklqdq	%ymm1, %ymm2, %ymm7
	vpunpckhqdq	%ymm1, %ymm2, %ymm9
	vpunpcklqdq	%ymm6, %ymm3, %ymm10
	vpunpckhqdq	%ymm6, %ymm3, %ymm11
	vpunpcklqdq	%ymm8, %ymm4, %ymm2
	vpunpckhqdq	%ymm8, %ymm4, %ymm1
	vpunpcklqdq	%ymm13, %ymm5, %ymm6
	vpunpckhqdq	%ymm13, %ymm5, %ymm5
	vmovsldup	%ymm2, %ymm15
	vpblendd	$170, %ymm15, %ymm7, %ymm4
	vpsrlq	$32, %ymm7, %ymm3
	vpblendd	$170, %ymm2, %ymm3, %ymm2
	vmovsldup	%ymm1, %ymm15
	vpblendd	$170, %ymm15, %ymm9, %ymm3
	vpsrlq	$32, %ymm9, %ymm7
	vpblendd	$170, %ymm1, %ymm7, %ymm7
	vmovsldup	%ymm6, %ymm15
	vpblendd	$170, %ymm15, %ymm10, %ymm1
	vpsrlq	$32, %ymm10, %ymm9
	vpblendd	$170, %ymm6, %ymm9, %ymm6
	vmovsldup	%ymm5, %ymm15
	vpblendd	$170, %ymm15, %ymm11, %ymm8
	vpsrlq	$32, %ymm11, %ymm9
	vpblendd	$170, %ymm5, %ymm9, %ymm5
	vpslld	$16, %ymm1, %ymm15
	vpblendw	$170, %ymm15, %ymm4, %ymm0
	vpsrld	$16, %ymm4, %ymm9
	vpblendw	$170, %ymm1, %ymm9, %ymm9
	vpslld	$16, %ymm6, %ymm15
	vpblendw	$170, %ymm15, %ymm2, %ymm10
	vpsrld	$16, %ymm2, %ymm1
	vpblendw	$170, %ymm6, %ymm1, %ymm13
	vpslld	$16, %ymm8, %ymm2
	vpblendw	$170, %ymm2, %ymm3, %ymm2
	vpsrld	$16, %ymm3, %ymm1
	vpblendw	$170, %ymm8, %ymm1, %ymm8
	vpslld	$16, %ymm5, %ymm6
	vpblendw	$170, %ymm6, %ymm7, %ymm1
	vpsrld	$16, %ymm7, %ymm3
	vpblendw	$170, %ymm5, %ymm3, %ymm3
	vmovdqu	%ymm0, (%rcx)
	vmovdqu	%ymm9, 32(%rcx)
	vmovdqu	%ymm10, 64(%rcx)
	vmovdqu	%ymm13, 96(%rcx)
	vmovdqu	%ymm2, 128(%rcx)
	vmovdqu	%ymm8, 160(%rcx)
	vmovdqu	%ymm1, 192(%rcx)
	vmovdqu	%ymm3, 224(%rcx)
	vmovdqu	256(%rcx), %ymm3
	vmovdqu	288(%rcx), %ymm4
	vmovdqu	320(%rcx), %ymm7
	vmovdqu	352(%rcx), %ymm9
	vmovdqu	384(%rcx), %ymm1
	vmovdqu	416(%rcx), %ymm8
	vmovdqu	448(%rcx), %ymm10
	vmovdqu	480(%rcx), %ymm13
	vperm2i128	$32, %ymm1, %ymm3, %ymm2
	vperm2i128	$49, %ymm1, %ymm3, %ymm5
	vperm2i128	$32, %ymm8, %ymm4, %ymm6
	vperm2i128	$49, %ymm8, %ymm4, %ymm8
	vperm2i128	$32, %ymm10, %ymm7, %ymm0
	vperm2i128	$49, %ymm10, %ymm7, %ymm1
	vperm2i128	$32, %ymm13, %ymm9, %ymm14
	vperm2i128	$49, %ymm13, %ymm9, %ymm10
	vpunpcklqdq	%ymm0, %ymm2, %ymm3
	vpunpckhqdq	%ymm0, %ymm2, %ymm4
	vpunpcklqdq	%ymm1, %ymm5, %ymm7
	vpunpckhqdq	%ymm1, %ymm5, %ymm5
	vpunpcklqdq	%ymm14, %ymm6, %ymm2
	vpunpckhqdq	%ymm14, %ymm6, %ymm1
	vpunpcklqdq	%ymm10, %ymm8, %ymm6
	vpunpckhqdq	%ymm10, %ymm8, %ymm8
	vmovsldup	%ymm2, %ymm15
	vpblendd	$170, %ymm15, %ymm3, %ymm9
	vpsrlq	$32, %ymm3, %ymm3
	vpblendd	$170, %ymm2, %ymm3, %ymm2
	vmovsldup	%ymm1, %ymm15
	vpblendd	$170, %ymm15, %ymm4, %ymm3
	vpsrlq	$32, %ymm4, %ymm4
	vpblendd	$170, %ymm1, %ymm4, %ymm4
	vmovsldup	%ymm6, %ymm15
	vpblendd	$170, %ymm15, %ymm7, %ymm1
	vpsrlq	$32, %ymm7, %ymm7
	vpblendd	$170, %ymm6, %ymm7, %ymm6
	vmovsldup	%ymm8, %ymm15
	vpblendd	$170, %ymm15, %ymm5, %ymm7
	vpsrlq	$32, %ymm5, %ymm5
	vpblendd	$170, %ymm8, %ymm5, %ymm5
	vpslld	$16, %ymm1, %ymm15
	vpblendw	$170, %ymm15, %ymm9, %ymm0
	vpsrld	$16, %ymm9, %ymm8
	vpblendw	$170, %ymm1, %ymm8, %ymm9
	vpslld	$16, %ymm6, %ymm15
	vpblendw	$170, %ymm15, %ymm2, %ymm10
	vpsrld	$16, %ymm2, %ymm1
	vpblendw	$170, %ymm6, %ymm1, %ymm13
	vpslld	$16, %ymm7, %ymm2
	vpblendw	$170, %ymm2, %ymm3, %ymm2
	vpsrld	$16, %ymm3, %ymm1
	vpblendw	$170, %ymm7, %ymm1, %ymm8
	vpslld	$16, %ymm5, %ymm6
	vpblendw	$170, %ymm6, %ymm4, %ymm1
	vpsrld	$16, %ymm4, %ymm3
	vpblendw	$170, %ymm5, %ymm3, %ymm3
	vmovdqu	%ymm0, 256(%rcx)
	vmovdqu	%ymm9, 288(%rcx)
	vmovdqu	%ymm10, 320(%rcx)
	vmovdqu	%ymm13, 352(%rcx)
	vmovdqu	%ymm2, 384(%rcx)
	vmovdqu	%ymm8, 416(%rcx)
	vmovdqu	%ymm1, 448(%rcx)
	vmovdqu	%ymm3, 480(%rcx)
	ret
	.data
	.p2align	5
glob_data:
G$sample_q:
	.byte	  1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13
	.byte	  1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13
G$sample_mask:
	.byte	255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15
	.byte	255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15
G$sample_ones:
	.byte	  1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1
	.byte	  1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1,   1
G$sample_load_shuffle:
	.byte	  0,   1,   1,   2,   3,   4,   4,   5,   6,   7,   7,   8,   9,  10,  10,  11
	.byte	  4,   5,   5,   6,   7,   8,   8,   9,  10,  11,  11,  12,  13,  14,  14,  15
G$pvc_shufbidx_s:
	.byte	  0,   1,   2,   3,   4,   8,   9,  10,  11,  12, 255, 255, 255, 255, 255, 255
	.byte	  9,  10,  11,  12, 255, 255, 255, 255, 255, 255,   0,   1,   2,   3,   4,   8
G$pvd_shufbdidx_s:
	.byte	  0,   1,   1,   2,   2,   3,   3,   4,   5,   6,   6,   7,   7,   8,   8,   9
	.byte	  2,   3,   3,   4,   4,   5,   5,   6,   7,   8,   8,   9,   9,  10,  10,  11
G$pd_jshufbidx:
	.byte	  0,   0,   0,   0,   1,   1,   1,   1,   2,   2,   2,   2,   3,   3,   3,   3
	.byte	  4,   4,   4,   4,   5,   5,   5,   5,   6,   6,   6,   6,   7,   7,   7,   7
G$pc_permidx_s:
	.byte	  0,   0,   0,   0,   4,   0,   0,   0,   1,   0,   0,   0,   5,   0,   0,   0
	.byte	  2,   0,   0,   0,   6,   0,   0,   0,   3,   0,   0,   0,   7,   0,   0,   0
G$ROL8:
	.byte	  7,   0,   1,   2,   3,   4,   5,   6,  15,   8,   9,  10,  11,  12,  13,  14
	.byte	 23,  16,  17,  18,  19,  20,  21,  22,  31,  24,  25,  26,  27,  28,  29,  30
G$ROL56:
	.byte	  1,   2,   3,   4,   5,   6,   7,   0,   9,  10,  11,  12,  13,  14,  15,   8
	.byte	 17,  18,  19,  20,  21,  22,  23,  16,  25,  26,  27,  28,  29,  30,  31,  24
G$KECCAK_RHOTATES_RIGHT:
	.byte	 61,   0,   0,   0,   0,   0,   0,   0,  46,   0,   0,   0,   0,   0,   0,   0
	.byte	 28,   0,   0,   0,   0,   0,   0,   0,  23,   0,   0,   0,   0,   0,   0,   0
	.byte	 63,   0,   0,   0,   0,   0,   0,   0,   2,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,   0,   0,   0,   0,   0,   0,   0,  37,   0,   0,   0,   0,   0,   0,   0
	.byte	 19,   0,   0,   0,   0,   0,   0,   0,  58,   0,   0,   0,   0,   0,   0,   0
	.byte	  8,   0,   0,   0,   0,   0,   0,   0,  25,   0,   0,   0,   0,   0,   0,   0
	.byte	 54,   0,   0,   0,   0,   0,   0,   0,   3,   0,   0,   0,   0,   0,   0,   0
	.byte	  9,   0,   0,   0,   0,   0,   0,   0,  56,   0,   0,   0,   0,   0,   0,   0
	.byte	 62,   0,   0,   0,   0,   0,   0,   0,  49,   0,   0,   0,   0,   0,   0,   0
	.byte	 39,   0,   0,   0,   0,   0,   0,   0,  44,   0,   0,   0,   0,   0,   0,   0
	.byte	 20,   0,   0,   0,   0,   0,   0,   0,  21,   0,   0,   0,   0,   0,   0,   0
	.byte	 43,   0,   0,   0,   0,   0,   0,   0,  50,   0,   0,   0,   0,   0,   0,   0
G$KECCAK_RHOTATES_LEFT:
	.byte	  3,   0,   0,   0,   0,   0,   0,   0,  18,   0,   0,   0,   0,   0,   0,   0
	.byte	 36,   0,   0,   0,   0,   0,   0,   0,  41,   0,   0,   0,   0,   0,   0,   0
	.byte	  1,   0,   0,   0,   0,   0,   0,   0,  62,   0,   0,   0,   0,   0,   0,   0
	.byte	 28,   0,   0,   0,   0,   0,   0,   0,  27,   0,   0,   0,   0,   0,   0,   0
	.byte	 45,   0,   0,   0,   0,   0,   0,   0,   6,   0,   0,   0,   0,   0,   0,   0
	.byte	 56,   0,   0,   0,   0,   0,   0,   0,  39,   0,   0,   0,   0,   0,   0,   0
	.byte	 10,   0,   0,   0,   0,   0,   0,   0,  61,   0,   0,   0,   0,   0,   0,   0
	.byte	 55,   0,   0,   0,   0,   0,   0,   0,   8,   0,   0,   0,   0,   0,   0,   0
	.byte	  2,   0,   0,   0,   0,   0,   0,   0,  15,   0,   0,   0,   0,   0,   0,   0
	.byte	 25,   0,   0,   0,   0,   0,   0,   0,  20,   0,   0,   0,   0,   0,   0,   0
	.byte	 44,   0,   0,   0,   0,   0,   0,   0,  43,   0,   0,   0,   0,   0,   0,   0
	.byte	 21,   0,   0,   0,   0,   0,   0,   0,  14,   0,   0,   0,   0,   0,   0,   0
G$jdmontx16:
	.byte	 73,   5,  73,   5,  73,   5,  73,   5,  73,   5,  73,   5,  73,   5,  73,   5
	.byte	 73,   5,  73,   5,  73,   5,  73,   5,  73,   5,  73,   5,  73,   5,  73,   5
G$hhqx16:
	.byte	 64,   3,  64,   3,  64,   3,  64,   3,  64,   3,  64,   3,  64,   3,  64,   3
	.byte	 64,   3,  64,   3,  64,   3,  64,   3,  64,   3,  64,   3,  64,   3,  64,   3
G$hqx16_m1:
	.byte	128,   6, 128,   6, 128,   6, 128,   6, 128,   6, 128,   6, 128,   6, 128,   6
	.byte	128,   6, 128,   6, 128,   6, 128,   6, 128,   6, 128,   6, 128,   6, 128,   6
G$hqx16_p1:
	.byte	129,   6, 129,   6, 129,   6, 129,   6, 129,   6, 129,   6, 129,   6, 129,   6
	.byte	129,   6, 129,   6, 129,   6, 129,   6, 129,   6, 129,   6, 129,   6, 129,   6
G$maskx16:
	.byte	255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15
	.byte	255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15, 255,  15
G$jflox16:
	.byte	161, 216, 161, 216, 161, 216, 161, 216, 161, 216, 161, 216, 161, 216, 161, 216
	.byte	161, 216, 161, 216, 161, 216, 161, 216, 161, 216, 161, 216, 161, 216, 161, 216
G$jfhix16:
	.byte	161,   5, 161,   5, 161,   5, 161,   5, 161,   5, 161,   5, 161,   5, 161,   5
	.byte	161,   5, 161,   5, 161,   5, 161,   5, 161,   5, 161,   5, 161,   5, 161,   5
G$jvx16:
	.byte	191,  78, 191,  78, 191,  78, 191,  78, 191,  78, 191,  78, 191,  78, 191,  78
	.byte	191,  78, 191,  78, 191,  78, 191,  78, 191,  78, 191,  78, 191,  78, 191,  78
G$jqinvx16:
	.byte	  1, 243,   1, 243,   1, 243,   1, 243,   1, 243,   1, 243,   1, 243,   1, 243
	.byte	  1, 243,   1, 243,   1, 243,   1, 243,   1, 243,   1, 243,   1, 243,   1, 243
G$jqx16:
	.byte	  1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13
	.byte	  1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13,   1,  13
G$jzetas_inv_exp:
	.byte	165, 165, 180, 225,  34,  79,  52,  93,  35,  68,  86, 165, 231,  78, 250,  83
	.byte	123, 199,  37,  43,  55,  58, 136,  24, 129, 126,   5, 196, 159, 247, 184, 176
	.byte	165,   6, 180,   5,  34,   9,  52,   1,  35,  11,  86,   3, 231,   9, 250,   5
	.byte	123,   6,  37,  12,  55,   5, 136,   0, 129,  11,   5,   5, 159,  10, 184,   8
	.byte	 15,  68,  67, 162,  29, 144, 108, 132, 102, 213, 230,  87, 254,  30, 161, 215
	.byte	163, 189, 106, 161,  63, 213, 191,  81, 185, 160, 215,  28, 166, 156, 208, 121
	.byte	 15,   7,  67,   9,  29,   9, 108,   0, 102,   3, 230,   5, 254,   4, 161,   4
	.byte	163,   4, 106,   3,  63,   8, 191,   4, 185,   5, 215,   7, 166,  10, 208,   9
	.byte	251,  69,  92,  94,  41, 239,  65, 190, 213,  49, 228, 113,  64, 201, 142, 203
	.byte	183, 184, 247, 117, 141, 220, 150, 110, 195,  34,  15,  62,  90, 110,  85, 178
	.byte	251,   4,  92,  10,  41,   4,  65,  11, 213,   2, 228,   5,  64,   9, 142,   1
	.byte	183,   3, 247,   0, 141,   5, 150,  12, 195,   9,  15,   1,  90,   0,  85,   3
	.byte	 35,  63,  35,  63, 205, 151, 205, 151, 102, 221, 102, 221,   6, 184,   6, 184
	.byte	161, 221, 161, 221,  37,  41,  37,  41,   8, 161,   8, 161, 169, 109, 169, 109
	.byte	 35,   6,  35,   6, 205,   0, 205,   0, 102,  11, 102,  11,   6,   6,   6,   6
	.byte	161,  10, 161,  10,  37,  10,  37,  10,   8,   9,   8,   9, 169,   2, 169,   2
	.byte	 69, 134,  69, 134,  69, 134,  69, 134, 194,  43, 194,  43, 194,  43, 194,  43
	.byte	178, 250, 178, 250, 178, 250, 178, 250,  63, 214,  63, 214,  63, 214,  63, 214
	.byte	 69,   7,  69,   7,  69,   7,  69,   7, 194,   5, 194,   5, 194,   5, 194,   5
	.byte	178,   4, 178,   4, 178,   4, 178,   4,  63,   9,  63,   9,  63,   9,  63,   9
	.byte	 55,  65,  55,  65,  55,  65,  55,  65,  55,  65,  55,  65,  55,  65,  55,  65
	.byte	226, 145, 226, 145, 226, 145, 226, 145, 226, 145, 226, 145, 226, 145, 226, 145
	.byte	 55,  12,  55,  12,  55,  12,  55,  12,  55,  12,  55,  12,  55,  12,  55,  12
	.byte	226,  11, 226,  11, 226,  11, 226,  11, 226,  11, 226,  11, 226,  11, 226,  11
	.byte	237, 252, 237, 252, 237,   5, 237,   5,  75,  49, 184, 179, 164, 183, 125, 177
	.byte	162, 206,  54,  73, 147, 137, 247, 126, 140, 234, 204, 165, 235,  17, 182, 204
	.byte	152,  84, 154,  55, 182, 203,  83, 212,  75,   0, 184,  11, 164,  11, 125,  10
	.byte	162,   8,  54,   7, 147,   0, 247,   9, 140,   6, 204,   1, 235,   0, 182,  10
	.byte	152,  12, 154,   9, 182,   9,  83,  11, 156,  20,  95,  56, 104, 187,  54,  72
	.byte	 90, 112,   9, 142, 122, 214, 246, 130, 219, 231,  35,  58,  80, 252,  91, 108
	.byte	243, 175, 227, 125, 214,  44,  79,   1, 156,   0,  95,  11, 104,   3,  54,   6
	.byte	 90,   2,   9,   3, 122,   8, 246,   0, 219,   6,  35,   1,  80,  12,  91,  11
	.byte	243,   6, 227,   4, 214,  10,  79,   4,  68, 147, 131, 101, 138,   2,  82, 220
	.byte	154,  48,  64, 193,   8, 152, 253,  49,   8, 158,  26, 175,  46, 177,  13,  92
	.byte	 10, 135,  40, 250, 117,  25,  58,  22,  68,   7, 131,  12, 138,   4,  82,   6
	.byte	154,   2,  64,   1,   8,   0, 253,  10,   8,   6,  26,   1,  46,   7,  13,   5
	.byte	 10,   9,  40,   2, 117,  10,  58,   8, 130, 102, 130, 102,  66, 172,  66, 172
	.byte	 79,   4,  79,   4,  61, 234,  61, 234, 130, 113, 130, 113, 249, 102, 249, 102
	.byte	 45, 188,  45, 188, 196,  22, 196,  22, 130,   0, 130,   0,  66,   6,  66,   6
	.byte	 79,   7,  79,   7,  61,   3,  61,   3, 130,  11, 130,  11, 249,  11, 249,  11
	.byte	 45,   5,  45,   5, 196,  10, 196,  10,  75,  61,  75,  61,  75,  61,  75,  61
	.byte	216,  14, 216,  14, 216,  14, 216,  14, 147, 147, 147, 147, 147, 147, 147, 147
	.byte	171,  81, 171,  81, 171,  81, 171,  81,  75,  12,  75,  12,  75,  12,  75,  12
	.byte	216,   6, 216,   6, 216,   6, 216,   6, 147,  10, 147,  10, 147,  10, 147,  10
	.byte	171,   0, 171,   0, 171,   0, 171,   0, 115,  48, 115,  48, 115,  48, 115,  48
	.byte	115,  48, 115,  48, 115,  48, 115,  48,  44, 203,  44, 203,  44, 203,  44, 203
	.byte	 44, 203,  44, 203,  44, 203,  44, 203, 115,   7, 115,   7, 115,   7, 115,   7
	.byte	115,   7, 115,   7, 115,   7, 115,   7,  44,   7,  44,   7,  44,   7,  44,   7
	.byte	 44,   7,  44,   7,  44,   7,  44,   7, 103, 198, 103, 198, 103,   1, 103,   1
	.byte	140, 235, 140, 235, 140,   7, 140,   7,   0,   0,   0,   0,   0,   0,   0,   0
G$jzetas_exp:
	.byte	 11, 123,  11, 123,  11,  10,  11,  10, 154,  57, 154,  57, 154,  11, 154,  11
	.byte	213,  52, 213,  52, 213,  52, 213,  52, 213,  52, 213,  52, 213,  52, 213,  52
	.byte	142, 207, 142, 207, 142, 207, 142, 207, 142, 207, 142, 207, 142, 207, 142, 207
	.byte	213,   5, 213,   5, 213,   5, 213,   5, 213,   5, 213,   5, 213,   5, 213,   5
	.byte	142,   5, 142,   5, 142,   5, 142,   5, 142,   5, 142,   5, 142,   5, 142,   5
	.byte	 86, 174,  86, 174,  86, 174,  86, 174, 110, 108, 110, 108, 110, 108, 110, 108
	.byte	 41, 241,  41, 241,  41, 241,  41, 241, 182, 194, 182, 194, 182, 194, 182, 194
	.byte	 86,  12,  86,  12,  86,  12,  86,  12, 110,   2, 110,   2, 110,   2, 110,   2
	.byte	 41,   6,  41,   6,  41,   6,  41,   6, 182,   0, 182,   0, 182,   0, 182,   0
	.byte	 61, 233,  61, 233, 212,  67, 212,  67,   8, 153,   8, 153, 127, 142, 127, 142
	.byte	196,  21, 196,  21, 178, 251, 178, 251, 191,  83, 191,  83, 127, 153, 127, 153
	.byte	 61,   2,  61,   2, 212,   7, 212,   7,   8,   1,   8,   1, 127,   1, 127,   1
	.byte	196,   9, 196,   9, 178,   5, 178,   5, 191,   6, 191,   6, 127,  12, 127,  12
	.byte	199, 233, 140, 230, 217,   5, 247, 120, 244, 163, 211,  78, 231,  80, 249,  97
	.byte	  4, 206, 249, 103, 193,  62, 103, 207, 175,  35, 119, 253, 126, 154, 189, 108
	.byte	199,   4, 140,   2, 217,  10, 247,   3, 244,   7, 211,   5, 231,  11, 249,   6
	.byte	  4,   2, 249,  12, 193,  11, 103,  10, 175,   6, 119,   8, 126,   0, 189,   5
	.byte	178, 254,  43, 211,  30, 130,  14,  80, 166, 147, 177,   3, 222, 197,  38,  24
	.byte	 11, 125, 135,  41, 248, 113, 167, 143, 203, 183, 153,  68, 162, 199, 101, 235
	.byte	178,   8,  43,   2,  30,   8,  14,   6, 166,   1, 177,   0, 222,  11,  38,   6
	.byte	 11,  12, 135,   4, 248,   9, 167,  10, 203,   6, 153,   9, 162,   1, 101,  12
	.byte	174,  43,  75,  52, 103, 200, 105, 171,  75,  51,  22, 238,  53,  90, 117,  21
	.byte	 10, 129, 110, 118, 203, 182,  95,  49, 132,  78,  93,  72,  73,  76, 182, 206
	.byte	174,   1,  75,   3, 103,   3, 105,   0,  75,   2,  22,  12,  53,  11, 117,   6
	.byte	 10,   3, 110,  12, 203,   5,  95,   4, 132,   2,  93,   1,  73,   1, 182,  12
	.byte	 20,   3,  20,   3,  20,   7,  20,   7,  31, 110,  31, 110,  31, 110,  31, 110
	.byte	 31, 110,  31, 110,  31, 110,  31, 110, 202, 190, 202, 190, 202, 190, 202, 190
	.byte	202, 190, 202, 190, 202, 190, 202, 190,  31,   1,  31,   1,  31,   1,  31,   1
	.byte	 31,   1,  31,   1,  31,   1,  31,   1, 202,   0, 202,   0, 202,   0, 202,   0
	.byte	202,   0, 202,   0, 202,   0, 202,   0, 194,  41, 194,  41, 194,  41, 194,  41
	.byte	 79,   5,  79,   5,  79,   5,  79,   5,  63, 212,  63, 212,  63, 212,  63, 212
	.byte	188, 121, 188, 121, 188, 121, 188, 121, 194,   3, 194,   3, 194,   3, 194,   3
	.byte	 79,   8,  79,   8,  79,   8,  79,   8,  63,   7,  63,   7,  63,   7,  63,   7
	.byte	188,   5, 188,   5, 188,   5, 188,   5,  88, 146,  88, 146, 249,  94, 249,  94
	.byte	220, 214, 220, 214,  96,  34,  96,  34, 251,  71, 251,  71, 155,  34, 155,  34
	.byte	 52, 104,  52, 104, 222, 192, 222, 192,  88,  10,  88,  10, 249,   3, 249,   3
	.byte	220,   2, 220,   2,  96,   2,  96,   2, 251,   6, 251,   6, 155,   1, 155,   1
	.byte	 52,  12,  52,  12, 222,   6, 222,   6, 172,  77, 167, 145, 242, 193,  62, 221
	.byte	107, 145, 116,  35,  10, 138,  74,  71, 115,  52, 193,  54,  29, 142,  44, 206
	.byte	192,  65, 216,  16, 165, 161,   6, 186, 172,   9, 167,  12, 242,  11,  62,   3
	.byte	107,   0, 116,   7,  10,  12,  74,   9, 115,  11, 193,   3,  29,   7,  44,  10
	.byte	192,   1, 216,   8, 165,   2,   6,   8,  49, 134,  91,  99,  42, 227,  72,  95
	.byte	 66, 174, 194,  42, 151,  94,  94,  66,  96,  40,   3, 225,  27, 168, 155,  42
	.byte	149, 123, 228, 111, 190,  93, 242, 187,  49,   3,  91,   2,  42,   5,  72,   7
	.byte	 66,   8, 194,   4, 151,   9,  94,   8,  96,   8,   3,   8,  27,   7, 155,   9
	.byte	149,  12, 228,   3, 190,   3, 242,   5,  73,  79,  98,   8, 252,  59, 128, 129
	.byte	121, 231, 202, 197, 220, 212, 134,  56,   7, 172,  26, 177, 171,  90, 222, 187
	.byte	205, 162, 223, 176,  77,  30,  92,  90,  73,   4,  98,   2, 252,   7, 128,   1
	.byte	121,  12, 202,   7, 220,   0, 134,   6,   7,   7,  26,   3, 171,   9, 222,   1
	.byte	205,  11, 223,   3,  77,   7,  92,   6,   0,   0,   0,   0,   0,   0,   0,   0
G$pfm_idx_s:
	.byte	  0,   1,   4,   5,   8,   9,  12,  13,   2,   3,   6,   7,  10,  11,  14,  15
G$pfm_shift_s:
	.byte	  3,   0,   0,   0,   2,   0,   0,   0,   1,   0,   0,   0,   0,   0,   0,   0
G$gen_matrix_indexes:
	.byte	  0,   0,   1,   0,   2,   0,   0,   1,   1,   1,   2,   1,   0,   2,   1,   2
	.byte	  0,   0,   0,   1,   0,   2,   1,   0,   1,   1,   1,   2,   2,   0,   2,   1
G$sample_shuffle_table:
	.byte	255, 255, 255, 255, 255, 255, 255, 255,   0, 255, 255, 255, 255, 255, 255, 255
	.byte	  2, 255, 255, 255, 255, 255, 255, 255,   0,   2, 255, 255, 255, 255, 255, 255
	.byte	  4, 255, 255, 255, 255, 255, 255, 255,   0,   4, 255, 255, 255, 255, 255, 255
	.byte	  2,   4, 255, 255, 255, 255, 255, 255,   0,   2,   4, 255, 255, 255, 255, 255
	.byte	  6, 255, 255, 255, 255, 255, 255, 255,   0,   6, 255, 255, 255, 255, 255, 255
	.byte	  2,   6, 255, 255, 255, 255, 255, 255,   0,   2,   6, 255, 255, 255, 255, 255
	.byte	  4,   6, 255, 255, 255, 255, 255, 255,   0,   4,   6, 255, 255, 255, 255, 255
	.byte	  2,   4,   6, 255, 255, 255, 255, 255,   0,   2,   4,   6, 255, 255, 255, 255
	.byte	  8, 255, 255, 255, 255, 255, 255, 255,   0,   8, 255, 255, 255, 255, 255, 255
	.byte	  2,   8, 255, 255, 255, 255, 255, 255,   0,   2,   8, 255, 255, 255, 255, 255
	.byte	  4,   8, 255, 255, 255, 255, 255, 255,   0,   4,   8, 255, 255, 255, 255, 255
	.byte	  2,   4,   8, 255, 255, 255, 255, 255,   0,   2,   4,   8, 255, 255, 255, 255
	.byte	  6,   8, 255, 255, 255, 255, 255, 255,   0,   6,   8, 255, 255, 255, 255, 255
	.byte	  2,   6,   8, 255, 255, 255, 255, 255,   0,   2,   6,   8, 255, 255, 255, 255
	.byte	  4,   6,   8, 255, 255, 255, 255, 255,   0,   4,   6,   8, 255, 255, 255, 255
	.byte	  2,   4,   6,   8, 255, 255, 255, 255,   0,   2,   4,   6,   8, 255, 255, 255
	.byte	 10, 255, 255, 255, 255, 255, 255, 255,   0,  10, 255, 255, 255, 255, 255, 255
	.byte	  2,  10, 255, 255, 255, 255, 255, 255,   0,   2,  10, 255, 255, 255, 255, 255
	.byte	  4,  10, 255, 255, 255, 255, 255, 255,   0,   4,  10, 255, 255, 255, 255, 255
	.byte	  2,   4,  10, 255, 255, 255, 255, 255,   0,   2,   4,  10, 255, 255, 255, 255
	.byte	  6,  10, 255, 255, 255, 255, 255, 255,   0,   6,  10, 255, 255, 255, 255, 255
	.byte	  2,   6,  10, 255, 255, 255, 255, 255,   0,   2,   6,  10, 255, 255, 255, 255
	.byte	  4,   6,  10, 255, 255, 255, 255, 255,   0,   4,   6,  10, 255, 255, 255, 255
	.byte	  2,   4,   6,  10, 255, 255, 255, 255,   0,   2,   4,   6,  10, 255, 255, 255
	.byte	  8,  10, 255, 255, 255, 255, 255, 255,   0,   8,  10, 255, 255, 255, 255, 255
	.byte	  2,   8,  10, 255, 255, 255, 255, 255,   0,   2,   8,  10, 255, 255, 255, 255
	.byte	  4,   8,  10, 255, 255, 255, 255, 255,   0,   4,   8,  10, 255, 255, 255, 255
	.byte	  2,   4,   8,  10, 255, 255, 255, 255,   0,   2,   4,   8,  10, 255, 255, 255
	.byte	  6,   8,  10, 255, 255, 255, 255, 255,   0,   6,   8,  10, 255, 255, 255, 255
	.byte	  2,   6,   8,  10, 255, 255, 255, 255,   0,   2,   6,   8,  10, 255, 255, 255
	.byte	  4,   6,   8,  10, 255, 255, 255, 255,   0,   4,   6,   8,  10, 255, 255, 255
	.byte	  2,   4,   6,   8,  10, 255, 255, 255,   0,   2,   4,   6,   8,  10, 255, 255
	.byte	 12, 255, 255, 255, 255, 255, 255, 255,   0,  12, 255, 255, 255, 255, 255, 255
	.byte	  2,  12, 255, 255, 255, 255, 255, 255,   0,   2,  12, 255, 255, 255, 255, 255
	.byte	  4,  12, 255, 255, 255, 255, 255, 255,   0,   4,  12, 255, 255, 255, 255, 255
	.byte	  2,   4,  12, 255, 255, 255, 255, 255,   0,   2,   4,  12, 255, 255, 255, 255
	.byte	  6,  12, 255, 255, 255, 255, 255, 255,   0,   6,  12, 255, 255, 255, 255, 255
	.byte	  2,   6,  12, 255, 255, 255, 255, 255,   0,   2,   6,  12, 255, 255, 255, 255
	.byte	  4,   6,  12, 255, 255, 255, 255, 255,   0,   4,   6,  12, 255, 255, 255, 255
	.byte	  2,   4,   6,  12, 255, 255, 255, 255,   0,   2,   4,   6,  12, 255, 255, 255
	.byte	  8,  12, 255, 255, 255, 255, 255, 255,   0,   8,  12, 255, 255, 255, 255, 255
	.byte	  2,   8,  12, 255, 255, 255, 255, 255,   0,   2,   8,  12, 255, 255, 255, 255
	.byte	  4,   8,  12, 255, 255, 255, 255, 255,   0,   4,   8,  12, 255, 255, 255, 255
	.byte	  2,   4,   8,  12, 255, 255, 255, 255,   0,   2,   4,   8,  12, 255, 255, 255
	.byte	  6,   8,  12, 255, 255, 255, 255, 255,   0,   6,   8,  12, 255, 255, 255, 255
	.byte	  2,   6,   8,  12, 255, 255, 255, 255,   0,   2,   6,   8,  12, 255, 255, 255
	.byte	  4,   6,   8,  12, 255, 255, 255, 255,   0,   4,   6,   8,  12, 255, 255, 255
	.byte	  2,   4,   6,   8,  12, 255, 255, 255,   0,   2,   4,   6,   8,  12, 255, 255
	.byte	 10,  12, 255, 255, 255, 255, 255, 255,   0,  10,  12, 255, 255, 255, 255, 255
	.byte	  2,  10,  12, 255, 255, 255, 255, 255,   0,   2,  10,  12, 255, 255, 255, 255
	.byte	  4,  10,  12, 255, 255, 255, 255, 255,   0,   4,  10,  12, 255, 255, 255, 255
	.byte	  2,   4,  10,  12, 255, 255, 255, 255,   0,   2,   4,  10,  12, 255, 255, 255
	.byte	  6,  10,  12, 255, 255, 255, 255, 255,   0,   6,  10,  12, 255, 255, 255, 255
	.byte	  2,   6,  10,  12, 255, 255, 255, 255,   0,   2,   6,  10,  12, 255, 255, 255
	.byte	  4,   6,  10,  12, 255, 255, 255, 255,   0,   4,   6,  10,  12, 255, 255, 255
	.byte	  2,   4,   6,  10,  12, 255, 255, 255,   0,   2,   4,   6,  10,  12, 255, 255
	.byte	  8,  10,  12, 255, 255, 255, 255, 255,   0,   8,  10,  12, 255, 255, 255, 255
	.byte	  2,   8,  10,  12, 255, 255, 255, 255,   0,   2,   8,  10,  12, 255, 255, 255
	.byte	  4,   8,  10,  12, 255, 255, 255, 255,   0,   4,   8,  10,  12, 255, 255, 255
	.byte	  2,   4,   8,  10,  12, 255, 255, 255,   0,   2,   4,   8,  10,  12, 255, 255
	.byte	  6,   8,  10,  12, 255, 255, 255, 255,   0,   6,   8,  10,  12, 255, 255, 255
	.byte	  2,   6,   8,  10,  12, 255, 255, 255,   0,   2,   6,   8,  10,  12, 255, 255
	.byte	  4,   6,   8,  10,  12, 255, 255, 255,   0,   4,   6,   8,  10,  12, 255, 255
	.byte	  2,   4,   6,   8,  10,  12, 255, 255,   0,   2,   4,   6,   8,  10,  12, 255
	.byte	 14, 255, 255, 255, 255, 255, 255, 255,   0,  14, 255, 255, 255, 255, 255, 255
	.byte	  2,  14, 255, 255, 255, 255, 255, 255,   0,   2,  14, 255, 255, 255, 255, 255
	.byte	  4,  14, 255, 255, 255, 255, 255, 255,   0,   4,  14, 255, 255, 255, 255, 255
	.byte	  2,   4,  14, 255, 255, 255, 255, 255,   0,   2,   4,  14, 255, 255, 255, 255
	.byte	  6,  14, 255, 255, 255, 255, 255, 255,   0,   6,  14, 255, 255, 255, 255, 255
	.byte	  2,   6,  14, 255, 255, 255, 255, 255,   0,   2,   6,  14, 255, 255, 255, 255
	.byte	  4,   6,  14, 255, 255, 255, 255, 255,   0,   4,   6,  14, 255, 255, 255, 255
	.byte	  2,   4,   6,  14, 255, 255, 255, 255,   0,   2,   4,   6,  14, 255, 255, 255
	.byte	  8,  14, 255, 255, 255, 255, 255, 255,   0,   8,  14, 255, 255, 255, 255, 255
	.byte	  2,   8,  14, 255, 255, 255, 255, 255,   0,   2,   8,  14, 255, 255, 255, 255
	.byte	  4,   8,  14, 255, 255, 255, 255, 255,   0,   4,   8,  14, 255, 255, 255, 255
	.byte	  2,   4,   8,  14, 255, 255, 255, 255,   0,   2,   4,   8,  14, 255, 255, 255
	.byte	  6,   8,  14, 255, 255, 255, 255, 255,   0,   6,   8,  14, 255, 255, 255, 255
	.byte	  2,   6,   8,  14, 255, 255, 255, 255,   0,   2,   6,   8,  14, 255, 255, 255
	.byte	  4,   6,   8,  14, 255, 255, 255, 255,   0,   4,   6,   8,  14, 255, 255, 255
	.byte	  2,   4,   6,   8,  14, 255, 255, 255,   0,   2,   4,   6,   8,  14, 255, 255
	.byte	 10,  14, 255, 255, 255, 255, 255, 255,   0,  10,  14, 255, 255, 255, 255, 255
	.byte	  2,  10,  14, 255, 255, 255, 255, 255,   0,   2,  10,  14, 255, 255, 255, 255
	.byte	  4,  10,  14, 255, 255, 255, 255, 255,   0,   4,  10,  14, 255, 255, 255, 255
	.byte	  2,   4,  10,  14, 255, 255, 255, 255,   0,   2,   4,  10,  14, 255, 255, 255
	.byte	  6,  10,  14, 255, 255, 255, 255, 255,   0,   6,  10,  14, 255, 255, 255, 255
	.byte	  2,   6,  10,  14, 255, 255, 255, 255,   0,   2,   6,  10,  14, 255, 255, 255
	.byte	  4,   6,  10,  14, 255, 255, 255, 255,   0,   4,   6,  10,  14, 255, 255, 255
	.byte	  2,   4,   6,  10,  14, 255, 255, 255,   0,   2,   4,   6,  10,  14, 255, 255
	.byte	  8,  10,  14, 255, 255, 255, 255, 255,   0,   8,  10,  14, 255, 255, 255, 255
	.byte	  2,   8,  10,  14, 255, 255, 255, 255,   0,   2,   8,  10,  14, 255, 255, 255
	.byte	  4,   8,  10,  14, 255, 255, 255, 255,   0,   4,   8,  10,  14, 255, 255, 255
	.byte	  2,   4,   8,  10,  14, 255, 255, 255,   0,   2,   4,   8,  10,  14, 255, 255
	.byte	  6,   8,  10,  14, 255, 255, 255, 255,   0,   6,   8,  10,  14, 255, 255, 255
	.byte	  2,   6,   8,  10,  14, 255, 255, 255,   0,   2,   6,   8,  10,  14, 255, 255
	.byte	  4,   6,   8,  10,  14, 255, 255, 255,   0,   4,   6,   8,  10,  14, 255, 255
	.byte	  2,   4,   6,   8,  10,  14, 255, 255,   0,   2,   4,   6,   8,  10,  14, 255
	.byte	 12,  14, 255, 255, 255, 255, 255, 255,   0,  12,  14, 255, 255, 255, 255, 255
	.byte	  2,  12,  14, 255, 255, 255, 255, 255,   0,   2,  12,  14, 255, 255, 255, 255
	.byte	  4,  12,  14, 255, 255, 255, 255, 255,   0,   4,  12,  14, 255, 255, 255, 255
	.byte	  2,   4,  12,  14, 255, 255, 255, 255,   0,   2,   4,  12,  14, 255, 255, 255
	.byte	  6,  12,  14, 255, 255, 255, 255, 255,   0,   6,  12,  14, 255, 255, 255, 255
	.byte	  2,   6,  12,  14, 255, 255, 255, 255,   0,   2,   6,  12,  14, 255, 255, 255
	.byte	  4,   6,  12,  14, 255, 255, 255, 255,   0,   4,   6,  12,  14, 255, 255, 255
	.byte	  2,   4,   6,  12,  14, 255, 255, 255,   0,   2,   4,   6,  12,  14, 255, 255
	.byte	  8,  12,  14, 255, 255, 255, 255, 255,   0,   8,  12,  14, 255, 255, 255, 255
	.byte	  2,   8,  12,  14, 255, 255, 255, 255,   0,   2,   8,  12,  14, 255, 255, 255
	.byte	  4,   8,  12,  14, 255, 255, 255, 255,   0,   4,   8,  12,  14, 255, 255, 255
	.byte	  2,   4,   8,  12,  14, 255, 255, 255,   0,   2,   4,   8,  12,  14, 255, 255
	.byte	  6,   8,  12,  14, 255, 255, 255, 255,   0,   6,   8,  12,  14, 255, 255, 255
	.byte	  2,   6,   8,  12,  14, 255, 255, 255,   0,   2,   6,   8,  12,  14, 255, 255
	.byte	  4,   6,   8,  12,  14, 255, 255, 255,   0,   4,   6,   8,  12,  14, 255, 255
	.byte	  2,   4,   6,   8,  12,  14, 255, 255,   0,   2,   4,   6,   8,  12,  14, 255
	.byte	 10,  12,  14, 255, 255, 255, 255, 255,   0,  10,  12,  14, 255, 255, 255, 255
	.byte	  2,  10,  12,  14, 255, 255, 255, 255,   0,   2,  10,  12,  14, 255, 255, 255
	.byte	  4,  10,  12,  14, 255, 255, 255, 255,   0,   4,  10,  12,  14, 255, 255, 255
	.byte	  2,   4,  10,  12,  14, 255, 255, 255,   0,   2,   4,  10,  12,  14, 255, 255
	.byte	  6,  10,  12,  14, 255, 255, 255, 255,   0,   6,  10,  12,  14, 255, 255, 255
	.byte	  2,   6,  10,  12,  14, 255, 255, 255,   0,   2,   6,  10,  12,  14, 255, 255
	.byte	  4,   6,  10,  12,  14, 255, 255, 255,   0,   4,   6,  10,  12,  14, 255, 255
	.byte	  2,   4,   6,  10,  12,  14, 255, 255,   0,   2,   4,   6,  10,  12,  14, 255
	.byte	  8,  10,  12,  14, 255, 255, 255, 255,   0,   8,  10,  12,  14, 255, 255, 255
	.byte	  2,   8,  10,  12,  14, 255, 255, 255,   0,   2,   8,  10,  12,  14, 255, 255
	.byte	  4,   8,  10,  12,  14, 255, 255, 255,   0,   4,   8,  10,  12,  14, 255, 255
	.byte	  2,   4,   8,  10,  12,  14, 255, 255,   0,   2,   4,   8,  10,  12,  14, 255
	.byte	  6,   8,  10,  12,  14, 255, 255, 255,   0,   6,   8,  10,  12,  14, 255, 255
	.byte	  2,   6,   8,  10,  12,  14, 255, 255,   0,   2,   6,   8,  10,  12,  14, 255
	.byte	  4,   6,   8,  10,  12,  14, 255, 255,   0,   4,   6,   8,  10,  12,  14, 255
	.byte	  2,   4,   6,   8,  10,  12,  14, 255,   0,   2,   4,   6,   8,  10,  12,  14
G$pvc_sllvdidx_s:
	.byte	 12,   0,   0,   0,   0,   0,   0,   0
G$pvc_shift2_s:
	.byte	  1,   0,   0,   4,   1,   0,   0,   4
G$pvd_sllvdidx_s:
	.byte	  4,   0,   0,   0,   0,   0,   0,   0
G$KECCAK1600_RC:
	.byte	  1,   0,   0,   0,   0,   0,   0,   0, 130, 128,   0,   0,   0,   0,   0,   0
	.byte	138, 128,   0,   0,   0,   0,   0, 128,   0, 128,   0, 128,   0,   0,   0, 128
	.byte	139, 128,   0,   0,   0,   0,   0,   0,   1,   0,   0, 128,   0,   0,   0,   0
	.byte	129, 128,   0, 128,   0,   0,   0, 128,   9, 128,   0,   0,   0,   0,   0, 128
	.byte	138,   0,   0,   0,   0,   0,   0,   0, 136,   0,   0,   0,   0,   0,   0,   0
	.byte	  9, 128,   0, 128,   0,   0,   0,   0,  10,   0,   0, 128,   0,   0,   0,   0
	.byte	139, 128,   0, 128,   0,   0,   0,   0, 139,   0,   0,   0,   0,   0,   0, 128
	.byte	137, 128,   0,   0,   0,   0,   0, 128,   3, 128,   0,   0,   0,   0,   0, 128
	.byte	  2, 128,   0,   0,   0,   0,   0, 128, 128,   0,   0,   0,   0,   0,   0, 128
	.byte	 10, 128,   0,   0,   0,   0,   0,   0,  10,   0,   0, 128,   0,   0,   0, 128
	.byte	129, 128,   0, 128,   0,   0,   0, 128, 128, 128,   0,   0,   0,   0,   0, 128
	.byte	  1,   0,   0, 128,   0,   0,   0,   0,   8, 128,   0, 128,   0,   0,   0, 128
G$pvd_mask_s:
	.byte	248,  31, 224, 127
G$pvd_q_s:
	.byte	  4,  52,   1,  13
G$pd_shift_s:
	.byte	  0,   8, 128,   0
G$pd_mask_s:
	.byte	 15,   0, 240,   0
G$pvc_mask_s:
	.byte	255,   3
G$pvc_shift1_s:
	.byte	  0,  16
G$pvc_off_s:
	.byte	 15,   0
G$pc_shift2_s:
	.byte	  1,  16
G$pc_mask_s:
	.byte	 15,   0
G$pc_shift1_s:
	.byte	  0,   2
G$mqinvx16:
	.byte	251,  58, 251,  58, 251,  58, 251,  58, 251,  58, 251,  58, 251,  58, 251,  58
	.byte	251,  58, 251,  58, 251,  58, 251,  58, 251,  58, 251,  58, 251,  58, 251,  58
G$jzetas_inv:
	.byte	165,   6,  15,   7, 180,   5,  67,   9,  34,   9,  29,   9,  52,   1, 108,   0
	.byte	 35,  11, 102,   3,  86,   3, 230,   5, 231,   9, 254,   4, 250,   5, 161,   4
	.byte	123,   6, 163,   4,  37,  12, 106,   3,  55,   5,  63,   8, 136,   0, 191,   4
	.byte	129,  11, 185,   5,   5,   5, 215,   7, 159,  10, 166,  10, 184,   8, 208,   9
	.byte	 75,   0, 156,   0, 184,  11,  95,  11, 164,  11, 104,   3, 125,  10,  54,   6
	.byte	162,   8,  90,   2,  54,   7,   9,   3, 147,   0, 122,   8, 247,   9, 246,   0
	.byte	140,   6, 219,   6, 204,   1,  35,   1, 235,   0,  80,  12, 182,  10,  91,  11
	.byte	152,  12, 243,   6, 154,   9, 227,   4, 182,   9, 214,  10,  83,  11,  79,   4
	.byte	251,   4,  92,  10,  41,   4,  65,  11, 213,   2, 228,   5,  64,   9, 142,   1
	.byte	183,   3, 247,   0, 141,   5, 150,  12, 195,   9,  15,   1,  90,   0,  85,   3
	.byte	 68,   7, 131,  12, 138,   4,  82,   6, 154,   2,  64,   1,   8,   0, 253,  10
	.byte	  8,   6,  26,   1,  46,   7,  13,   5,  10,   9,  40,   2, 117,  10,  58,   8
	.byte	 35,   6, 205,   0, 102,  11,   6,   6, 161,  10,  37,  10,   8,   9, 169,   2
	.byte	130,   0,  66,   6,  79,   7,  61,   3, 130,  11, 249,  11,  45,   5, 196,  10
	.byte	 69,   7, 194,   5, 178,   4,  63,   9,  75,  12, 216,   6, 147,  10, 171,   0
	.byte	 55,  12, 226,  11, 115,   7,  44,   7, 237,   5, 103,   1, 246,   2, 161,   5
G$jzetas:
	.byte	237,   8,  11,  10, 154,  11,  20,   7, 213,   5, 142,   5,  31,   1, 202,   0
	.byte	 86,  12, 110,   2,  41,   6, 182,   0, 194,   3,  79,   8,  63,   7, 188,   5
	.byte	 61,   2, 212,   7,   8,   1, 127,   1, 196,   9, 178,   5, 191,   6, 127,  12
	.byte	 88,  10, 249,   3, 220,   2,  96,   2, 251,   6, 155,   1,  52,  12, 222,   6
	.byte	199,   4, 140,   2, 217,  10, 247,   3, 244,   7, 211,   5, 231,  11, 249,   6
	.byte	  4,   2, 249,  12, 193,  11, 103,  10, 175,   6, 119,   8, 126,   0, 189,   5
	.byte	172,   9, 167,  12, 242,  11,  62,   3, 107,   0, 116,   7,  10,  12,  74,   9
	.byte	115,  11, 193,   3,  29,   7,  44,  10, 192,   1, 216,   8, 165,   2,   6,   8
	.byte	178,   8, 174,   1,  43,   2,  75,   3,  30,   8, 103,   3,  14,   6, 105,   0
	.byte	166,   1,  75,   2, 177,   0,  22,  12, 222,  11,  53,  11,  38,   6, 117,   6
	.byte	 11,  12,  10,   3, 135,   4, 110,  12, 248,   9, 203,   5, 167,  10,  95,   4
	.byte	203,   6, 132,   2, 153,   9,  93,   1, 162,   1,  73,   1, 101,  12, 182,  12
	.byte	 49,   3,  73,   4,  91,   2,  98,   2,  42,   5, 252,   7,  72,   7, 128,   1
	.byte	 66,   8, 121,  12, 194,   4, 202,   7, 151,   9, 220,   0,  94,   8, 134,   6
	.byte	 96,   8,   7,   7,   3,   8,  26,   3,  27,   7, 171,   9, 155,   9, 222,   1
	.byte	149,  12, 205,  11, 228,   3, 223,   3, 190,   3,  77,   7, 242,   5,  92,   6
	.ident	"Jasmin Compiler 2026.03.1"
	.section	".note.GNU-stack", "", %progbits
