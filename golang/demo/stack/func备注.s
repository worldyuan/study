main.add STEXT nosplit size=39 args=0x10 locals=0x10 funcid=0x0 align=0x0
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:3)	TEXT	main.add(SB), NOSPLIT|ABIInternal, $16-16
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:3)	PUSHQ	BP
	0x0001 00001 (D:/code/study/golang/demo/stack/fun.go:3)	MOVQ	SP, BP
	0x0004 00004 (D:/code/study/golang/demo/stack/fun.go:3)	SUBQ	$8, SP
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:3)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:3)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:3)	FUNCDATA	$5, main.add.arginfo1(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:3)	MOVQ	AX, main.a+24(SP)
	0x000d 00013 (D:/code/study/golang/demo/stack/fun.go:3)	MOVQ	BX, main.b+32(SP)
	0x0012 00018 (D:/code/study/golang/demo/stack/fun.go:3)	MOVQ	$0, main.~r0(SP)
	0x001a 00026 (D:/code/study/golang/demo/stack/fun.go:4)	ADDQ	BX, AX
	0x001d 00029 (D:/code/study/golang/demo/stack/fun.go:4)	MOVQ	AX, main.~r0(SP)
	0x0021 00033 (D:/code/study/golang/demo/stack/fun.go:4)	ADDQ	$8, SP
	0x0025 00037 (D:/code/study/golang/demo/stack/fun.go:4)	POPQ	BP
	0x0026 00038 (D:/code/study/golang/demo/stack/fun.go:4)	RET
	0x0000 55 48 89 e5 48 83 ec 08 48 89 44 24 18 48 89 5c  UH..H...H.D$.H.\
	0x0010 24 20 48 c7 04 24 00 00 00 00 48 01 d8 48 89 04  $ H..$....H..H..
	0x0020 24 48 83 c4 08 5d c3                             $H...].
main.add2 STEXT nosplit size=428 args=0x90 locals=0x50 funcid=0x0 align=0x0
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:7)	TEXT	main.add2(SB), NOSPLIT|ABIInternal, $80-144
	# 将BP的位置入栈（栈基，栈底）（高地址位）
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:7)	PUSHQ	BP
	# 这里是硬件SP，指向栈顶的位置(底低地址位)
	0x0001 00001 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	SP, BP
	# 申请72字节的局部变量栈基，加上刚才的BP，总共需要80
	0x0004 00004 (D:/code/study/golang/demo/stack/fun.go:7)	SUBQ	$72, SP
	# 下面是提供给GC使用的
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:7)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:7)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:7)	FUNCDATA	$5, main.add2.arginfo1(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	AX, main.a1+160(SP)
	0x0010 00016 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	BX, main.a2+168(SP)
	0x0018 00024 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	CX, main.a3+176(SP)
	0x0020 00032 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	DI, main.a4+184(SP)
	0x0028 00040 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	SI, main.a5+192(SP)
	0x0030 00048 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	R8, main.a6+200(SP)
	0x0038 00056 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	R9, main.a7+208(SP)
	0x0040 00064 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	R10, main.a8+216(SP)
	0x0048 00072 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	R11, main.a9+224(SP)
	0x0050 00080 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r0+64(SP)
	0x0059 00089 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r1+56(SP)
	0x0062 00098 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r2+48(SP)
	0x006b 00107 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r3+40(SP)
	0x0074 00116 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r4+32(SP)
	0x007d 00125 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r5+24(SP)
	0x0086 00134 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r6+16(SP)
	0x008f 00143 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r7+8(SP)
	0x0098 00152 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	$0, main.~r8(SP)
	0x00a0 00160 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a1+160(SP), DX
	0x00a8 00168 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a2+168(SP), DX
	0x00b0 00176 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a3+176(SP), DX
	0x00b8 00184 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	DX, main.~r0+64(SP)
	0x00bd 00189 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a3+176(SP), DX
	0x00c5 00197 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a4+184(SP), DX
	0x00cd 00205 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a18+152(SP), DX
	0x00d5 00213 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	DX, main.~r1+56(SP)
	0x00da 00218 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a5+192(SP), DX
	0x00e2 00226 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a6+200(SP), DX
	0x00ea 00234 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a1+160(SP), DX
	0x00f2 00242 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	DX, main.~r2+48(SP)
	0x00f7 00247 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a7+208(SP), DX
	0x00ff 00255 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a8+216(SP), DX
	0x0107 00263 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a1+160(SP), DX
	0x010f 00271 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	DX, main.~r3+40(SP)
	0x0114 00276 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a9+224(SP), DX
	0x011c 00284 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a10+88(SP), DX
	0x0121 00289 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a1+160(SP), DX
	0x0129 00297 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	DX, main.~r4+32(SP)
	0x012e 00302 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a11+96(SP), R8
	0x0133 00307 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a12+104(SP), R8
	0x0138 00312 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a1+160(SP), R8
	0x0140 00320 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a2+168(SP), R8
	0x0148 00328 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	R8, main.~r5+24(SP)
	0x014d 00333 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a13+112(SP), R9
	0x0152 00338 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a14+120(SP), R9
	0x0157 00343 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a3+176(SP), R9
	0x015f 00351 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	R9, main.~r6+16(SP)
	0x0164 00356 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a15+128(SP), R10
	0x016c 00364 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a16+136(SP), R10
	0x0174 00372 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	R10, main.~r7+8(SP)
	0x0179 00377 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.a17+144(SP), R11
	0x0181 00385 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	main.a1+160(SP), R11
	0x0189 00393 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	R11, main.~r8(SP)
	0x018d 00397 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.~r0+64(SP), AX
	0x0192 00402 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.~r1+56(SP), BX
	0x0197 00407 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.~r2+48(SP), CX
	0x019c 00412 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.~r3+40(SP), DI
	0x01a1 00417 (D:/code/study/golang/demo/stack/fun.go:8)	MOVQ	main.~r4+32(SP), SI
	0x01a6 00422 (D:/code/study/golang/demo/stack/fun.go:8)	ADDQ	$72, SP
	0x01aa 00426 (D:/code/study/golang/demo/stack/fun.go:8)	POPQ	BP
	0x01ab 00427 (D:/code/study/golang/demo/stack/fun.go:8)	RET
	0x0000 55 48 89 e5 48 83 ec 48 48 89 84 24 a0 00 00 00  UH..H..HH..$....
	0x0010 48 89 9c 24 a8 00 00 00 48 89 8c 24 b0 00 00 00  H..$....H..$....
	0x0020 48 89 bc 24 b8 00 00 00 48 89 b4 24 c0 00 00 00  H..$....H..$....
	0x0030 4c 89 84 24 c8 00 00 00 4c 89 8c 24 d0 00 00 00  L..$....L..$....
	0x0040 4c 89 94 24 d8 00 00 00 4c 89 9c 24 e0 00 00 00  L..$....L..$....
	0x0050 48 c7 44 24 40 00 00 00 00 48 c7 44 24 38 00 00  H.D$@....H.D$8..
	0x0060 00 00 48 c7 44 24 30 00 00 00 00 48 c7 44 24 28  ..H.D$0....H.D$(
	0x0070 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44  ....H.D$ ....H.D
	0x0080 24 18 00 00 00 00 48 c7 44 24 10 00 00 00 00 48  $.....H.D$.....H
	0x0090 c7 44 24 08 00 00 00 00 48 c7 04 24 00 00 00 00  .D$.....H..$....
	0x00a0 48 8b 94 24 a0 00 00 00 48 03 94 24 a8 00 00 00  H..$....H..$....
	0x00b0 48 03 94 24 b0 00 00 00 48 89 54 24 40 48 8b 94  H..$....H.T$@H..
	0x00c0 24 b0 00 00 00 48 03 94 24 b8 00 00 00 48 03 94  $....H..$....H..
	0x00d0 24 98 00 00 00 48 89 54 24 38 48 8b 94 24 c0 00  $....H.T$8H..$..
	0x00e0 00 00 48 03 94 24 c8 00 00 00 48 03 94 24 a0 00  ..H..$....H..$..
	0x00f0 00 00 48 89 54 24 30 48 8b 94 24 d0 00 00 00 48  ..H.T$0H..$....H
	0x0100 03 94 24 d8 00 00 00 48 03 94 24 a0 00 00 00 48  ..$....H..$....H
	0x0110 89 54 24 28 48 8b 94 24 e0 00 00 00 48 03 54 24  .T$(H..$....H.T$
	0x0120 58 48 03 94 24 a0 00 00 00 48 89 54 24 20 4c 8b  XH..$....H.T$ L.
	0x0130 44 24 60 4c 03 44 24 68 4c 03 84 24 a0 00 00 00  D$`L.D$hL..$....
	0x0140 4c 03 84 24 a8 00 00 00 4c 89 44 24 18 4c 8b 4c  L..$....L.D$.L.L
	0x0150 24 70 4c 03 4c 24 78 4c 03 8c 24 b0 00 00 00 4c  $pL.L$xL..$....L
	0x0160 89 4c 24 10 4c 8b 94 24 80 00 00 00 4c 03 94 24  .L$.L..$....L..$
	0x0170 88 00 00 00 4c 89 54 24 08 4c 8b 9c 24 90 00 00  ....L.T$.L..$...
	0x0180 00 4c 03 9c 24 a0 00 00 00 4c 89 1c 24 48 8b 44  .L..$....L..$H.D
	0x0190 24 40 48 8b 5c 24 38 48 8b 4c 24 30 48 8b 7c 24  $@H.\$8H.L$0H.|$
	0x01a0 28 48 8b 74 24 20 48 83 c4 48 5d c3              (H.t$ H..H].
main.main STEXT size=600 args=0x0 locals=0x130 funcid=0x0 align=0x0
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:11)	TEXT	main.main(SB), ABIInternal, $304-0
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:11)	LEAQ	-176(SP), R12
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:11)	CMPQ	R12, 16(R14)
	0x000c 00012 (D:/code/study/golang/demo/stack/fun.go:11)	PCDATA	$0, $-2
	0x000c 00012 (D:/code/study/golang/demo/stack/fun.go:11)	JLS	590
	0x0012 00018 (D:/code/study/golang/demo/stack/fun.go:11)	PCDATA	$0, $-1
	0x0012 00018 (D:/code/study/golang/demo/stack/fun.go:11)	PUSHQ	BP
	0x0013 00019 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	SP, BP
	0x0016 00022 (D:/code/study/golang/demo/stack/fun.go:11)	SUBQ	$296, SP
	0x001d 00029 (D:/code/study/golang/demo/stack/fun.go:11)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x001d 00029 (D:/code/study/golang/demo/stack/fun.go:11)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x001d 00029 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$10, (SP)
	0x0025 00037 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$11, 8(SP)
	0x002e 00046 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$12, 16(SP)
	0x0037 00055 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$13, 24(SP)
	0x0040 00064 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$14, 32(SP)
	0x0049 00073 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$15, 40(SP)
	0x0052 00082 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$16, 48(SP)
	0x005b 00091 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$17, 56(SP)
	0x0064 00100 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	$18, 64(SP)
	0x006d 00109 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$1, AX
	0x0072 00114 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$2, BX
	0x0077 00119 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$3, CX
	0x007c 00124 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$4, DI
	0x0081 00129 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$5, SI
	0x0086 00134 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$6, R8
	0x008c 00140 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$7, R9
	0x0092 00146 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$8, R10
	0x0098 00152 (D:/code/study/golang/demo/stack/fun.go:12)	MOVL	$9, R11
	0x009e 00158 (D:/code/study/golang/demo/stack/fun.go:12)	PCDATA	$1, $0
	0x009e 00158 (D:/code/study/golang/demo/stack/fun.go:12)	NOP
	0x00a0 00160 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	main.add2(SB)
	0x00a5 00165 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	AX, main..autotmp_9+144(SP)
	0x00ad 00173 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	BX, main..autotmp_10+272(SP)
	0x00b5 00181 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	CX, main..autotmp_11+264(SP)
	0x00bd 00189 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DI, main..autotmp_12+256(SP)
	0x00c5 00197 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	SI, main..autotmp_13+248(SP)
	0x00cd 00205 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	R8, main..autotmp_14+240(SP)
	0x00d5 00213 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	R9, main..autotmp_15+232(SP)
	0x00dd 00221 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	R10, main..autotmp_16+224(SP)
	0x00e5 00229 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	R11, main..autotmp_17+216(SP)
	0x00ed 00237 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_9+144(SP), DX
	0x00f5 00245 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_0+288(SP)
	0x00fd 00253 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_10+272(SP), DX
	0x0105 00261 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_1+280(SP)
	0x010d 00269 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_11+264(SP), DX
	0x0115 00277 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_2+200(SP)
	0x011d 00285 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_12+256(SP), DX
	0x0125 00293 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_3+192(SP)
	0x012d 00301 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_13+248(SP), DX
	0x0135 00309 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_4+184(SP)
	0x013d 00317 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_14+240(SP), DX
	0x0145 00325 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_5+176(SP)
	0x014d 00333 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_15+232(SP), DX
	0x0155 00341 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_6+168(SP)
	0x015d 00349 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_16+224(SP), DX
	0x0165 00357 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_7+160(SP)
	0x016d 00365 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_17+216(SP), DX
	0x0175 00373 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_8+152(SP)
	0x017d 00381 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_0+288(SP), DX
	0x0185 00389 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main..autotmp_18+208(SP)
	0x018d 00397 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printlock(SB)
	0x0192 00402 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_18+208(SP), AX
	0x019a 00410 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x019f 00415 (D:/code/study/golang/demo/stack/fun.go:12)	NOP
	0x01a0 00416 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printsp(SB)
	0x01a5 00421 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_1+280(SP), AX
	0x01ad 00429 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x01b2 00434 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printsp(SB)
	0x01b7 00439 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_2+200(SP), AX
	0x01bf 00447 (D:/code/study/golang/demo/stack/fun.go:12)	NOP
	0x01c0 00448 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x01c5 00453 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printsp(SB)
	0x01ca 00458 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_3+192(SP), AX
	0x01d2 00466 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x01d7 00471 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printsp(SB)
	0x01dc 00476 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_4+184(SP), AX
	0x01e4 00484 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x01e9 00489 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printsp(SB)
	0x01ee 00494 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_5+176(SP), AX
	0x01f6 00502 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x01fb 00507 (D:/code/study/golang/demo/stack/fun.go:12)	NOP
	0x0200 00512 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printsp(SB)
	0x0205 00517 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_6+168(SP), AX
	0x020d 00525 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x0212 00530 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printsp(SB)
	0x0217 00535 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_7+160(SP), AX
	0x021f 00543 (D:/code/study/golang/demo/stack/fun.go:12)	NOP
	0x0220 00544 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x0225 00549 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printsp(SB)
	0x022a 00554 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main..autotmp_8+152(SP), AX
	0x0232 00562 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printint(SB)
	0x0237 00567 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printnl(SB)
	0x023c 00572 (D:/code/study/golang/demo/stack/fun.go:12)	NOP
	0x0240 00576 (D:/code/study/golang/demo/stack/fun.go:12)	CALL	runtime.printunlock(SB)
	0x0245 00581 (D:/code/study/golang/demo/stack/fun.go:13)	ADDQ	$296, SP
	0x024c 00588 (D:/code/study/golang/demo/stack/fun.go:13)	POPQ	BP
	0x024d 00589 (D:/code/study/golang/demo/stack/fun.go:13)	RET
	0x024e 00590 (D:/code/study/golang/demo/stack/fun.go:13)	NOP
	0x024e 00590 (D:/code/study/golang/demo/stack/fun.go:11)	PCDATA	$1, $-1
	0x024e 00590 (D:/code/study/golang/demo/stack/fun.go:11)	PCDATA	$0, $-2
	0x024e 00590 (D:/code/study/golang/demo/stack/fun.go:11)	CALL	runtime.morestack_noctxt(SB)
	0x0253 00595 (D:/code/study/golang/demo/stack/fun.go:11)	PCDATA	$0, $-1
	0x0253 00595 (D:/code/study/golang/demo/stack/fun.go:11)	JMP	0
	0x0000 4c 8d a4 24 50 ff ff ff 4d 3b 66 10 0f 86 3c 02  L..$P...M;f...<.
	0x0010 00 00 55 48 89 e5 48 81 ec 28 01 00 00 48 c7 04  ..UH..H..(...H..
	0x0020 24 0a 00 00 00 48 c7 44 24 08 0b 00 00 00 48 c7  $....H.D$.....H.
	0x0030 44 24 10 0c 00 00 00 48 c7 44 24 18 0d 00 00 00  D$.....H.D$.....
	0x0040 48 c7 44 24 20 0e 00 00 00 48 c7 44 24 28 0f 00  H.D$ ....H.D$(..
	0x0050 00 00 48 c7 44 24 30 10 00 00 00 48 c7 44 24 38  ..H.D$0....H.D$8
	0x0060 11 00 00 00 48 c7 44 24 40 12 00 00 00 b8 01 00  ....H.D$@.......
	0x0070 00 00 bb 02 00 00 00 b9 03 00 00 00 bf 04 00 00  ................
	0x0080 00 be 05 00 00 00 41 b8 06 00 00 00 41 b9 07 00  ......A.....A...
	0x0090 00 00 41 ba 08 00 00 00 41 bb 09 00 00 00 66 90  ..A.....A.....f.
	0x00a0 e8 00 00 00 00 48 89 84 24 90 00 00 00 48 89 9c  .....H..$....H..
	0x00b0 24 10 01 00 00 48 89 8c 24 08 01 00 00 48 89 bc  $....H..$....H..
	0x00c0 24 00 01 00 00 48 89 b4 24 f8 00 00 00 4c 89 84  $....H..$....L..
	0x00d0 24 f0 00 00 00 4c 89 8c 24 e8 00 00 00 4c 89 94  $....L..$....L..
	0x00e0 24 e0 00 00 00 4c 89 9c 24 d8 00 00 00 48 8b 94  $....L..$....H..
	0x00f0 24 90 00 00 00 48 89 94 24 20 01 00 00 48 8b 94  $....H..$ ...H..
	0x0100 24 10 01 00 00 48 89 94 24 18 01 00 00 48 8b 94  $....H..$....H..
	0x0110 24 08 01 00 00 48 89 94 24 c8 00 00 00 48 8b 94  $....H..$....H..
	0x0120 24 00 01 00 00 48 89 94 24 c0 00 00 00 48 8b 94  $....H..$....H..
	0x0130 24 f8 00 00 00 48 89 94 24 b8 00 00 00 48 8b 94  $....H..$....H..
	0x0140 24 f0 00 00 00 48 89 94 24 b0 00 00 00 48 8b 94  $....H..$....H..
	0x0150 24 e8 00 00 00 48 89 94 24 a8 00 00 00 48 8b 94  $....H..$....H..
	0x0160 24 e0 00 00 00 48 89 94 24 a0 00 00 00 48 8b 94  $....H..$....H..
	0x0170 24 d8 00 00 00 48 89 94 24 98 00 00 00 48 8b 94  $....H..$....H..
	0x0180 24 20 01 00 00 48 89 94 24 d0 00 00 00 e8 00 00  $ ...H..$.......
	0x0190 00 00 48 8b 84 24 d0 00 00 00 e8 00 00 00 00 90  ..H..$..........
	0x01a0 e8 00 00 00 00 48 8b 84 24 18 01 00 00 e8 00 00  .....H..$.......
	0x01b0 00 00 e8 00 00 00 00 48 8b 84 24 c8 00 00 00 90  .......H..$.....
	0x01c0 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24 c0 00  ..........H..$..
	0x01d0 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24  ............H..$
	0x01e0 b8 00 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b  ..............H.
	0x01f0 84 24 b0 00 00 00 e8 00 00 00 00 0f 1f 44 00 00  .$...........D..
	0x0200 e8 00 00 00 00 48 8b 84 24 a8 00 00 00 e8 00 00  .....H..$.......
	0x0210 00 00 e8 00 00 00 00 48 8b 84 24 a0 00 00 00 90  .......H..$.....
	0x0220 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24 98 00  ..........H..$..
	0x0230 00 00 e8 00 00 00 00 e8 00 00 00 00 0f 1f 40 00  ..............@.
	0x0240 e8 00 00 00 00 48 81 c4 28 01 00 00 5d c3 e8 00  .....H..(...]...
	0x0250 00 00 00 e9 a8 fd ff ff                          ........
	rel 161+4 t=R_CALL main.add2+0
	rel 398+4 t=R_CALL runtime.printlock+0
	rel 411+4 t=R_CALL runtime.printint+0
	rel 417+4 t=R_CALL runtime.printsp+0
	rel 430+4 t=R_CALL runtime.printint+0
	rel 435+4 t=R_CALL runtime.printsp+0
	rel 449+4 t=R_CALL runtime.printint+0
	rel 454+4 t=R_CALL runtime.printsp+0
	rel 467+4 t=R_CALL runtime.printint+0
	rel 472+4 t=R_CALL runtime.printsp+0
	rel 485+4 t=R_CALL runtime.printint+0
	rel 490+4 t=R_CALL runtime.printsp+0
	rel 503+4 t=R_CALL runtime.printint+0
	rel 513+4 t=R_CALL runtime.printsp+0
	rel 526+4 t=R_CALL runtime.printint+0
	rel 531+4 t=R_CALL runtime.printsp+0
	rel 545+4 t=R_CALL runtime.printint+0
	rel 550+4 t=R_CALL runtime.printsp+0
	rel 563+4 t=R_CALL runtime.printint+0
	rel 568+4 t=R_CALL runtime.printnl+0
	rel 577+4 t=R_CALL runtime.printunlock+0
	rel 591+4 t=R_CALL runtime.morestack_noctxt+0
go:cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
main.add.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
main.add2.arginfo1 SRODATA static dupok size=22
	0x0000 48 08 50 08 58 08 60 08 68 08 70 08 78 08 80 08  H.P.X.`.h.p.x...
	0x0010 88 08 00 08 fc ff                                ......
