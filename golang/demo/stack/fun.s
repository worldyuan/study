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
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:7)	PUSHQ	BP
	0x0001 00001 (D:/code/study/golang/demo/stack/fun.go:7)	MOVQ	SP, BP
	0x0004 00004 (D:/code/study/golang/demo/stack/fun.go:7)	SUBQ	$72, SP
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
main.add3 STEXT nosplit size=820 args=0xd8 locals=0x50 funcid=0x0 align=0x0
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:11)	TEXT	main.add3(SB), NOSPLIT|ABIInternal, $80-216
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:11)	PUSHQ	BP
	0x0001 00001 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	SP, BP
	0x0004 00004 (D:/code/study/golang/demo/stack/fun.go:11)	SUBQ	$72, SP
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:11)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:11)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:11)	FUNCDATA	$5, main.add3.arginfo1(SB)
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	AX, main.a1+232(SP)
	0x0010 00016 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	BX, main.a2+240(SP)
	0x0018 00024 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	CX, main.a3+248(SP)
	0x0020 00032 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	DI, main.a4+256(SP)
	0x0028 00040 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	SI, main.a5+264(SP)
	0x0030 00048 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	R8, main.a6+272(SP)
	0x0038 00056 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	R9, main.a7+280(SP)
	0x0040 00064 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	R10, main.a8+288(SP)
	0x0048 00072 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	R11, main.a9+296(SP)
	0x0050 00080 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r0+64(SP)
	0x0059 00089 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r1+56(SP)
	0x0062 00098 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r2+48(SP)
	0x006b 00107 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r3+40(SP)
	0x0074 00116 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r4+32(SP)
	0x007d 00125 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r5+24(SP)
	0x0086 00134 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r6+16(SP)
	0x008f 00143 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r7+8(SP)
	0x0098 00152 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r8(SP)
	0x00a0 00160 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r9+160(SP)
	0x00ac 00172 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r10+168(SP)
	0x00b8 00184 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r11+176(SP)
	0x00c4 00196 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r12+184(SP)
	0x00d0 00208 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r13+192(SP)
	0x00dc 00220 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r14+200(SP)
	0x00e8 00232 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r15+208(SP)
	0x00f4 00244 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r16+216(SP)
	0x0100 00256 (D:/code/study/golang/demo/stack/fun.go:11)	MOVQ	$0, main.~r17+224(SP)
	0x010c 00268 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a1+232(SP), DX
	0x0114 00276 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a2+240(SP), DX
	0x011c 00284 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a3+248(SP), DX
	0x0124 00292 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r0+64(SP)
	0x0129 00297 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a3+248(SP), DX
	0x0131 00305 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a4+256(SP), DX
	0x0139 00313 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a18+152(SP), DX
	0x0141 00321 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r1+56(SP)
	0x0146 00326 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a5+264(SP), DX
	0x014e 00334 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a6+272(SP), DX
	0x0156 00342 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x015e 00350 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r2+48(SP)
	0x0163 00355 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a7+280(SP), DX
	0x016b 00363 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a8+288(SP), DX
	0x0173 00371 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x017b 00379 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r3+40(SP)
	0x0180 00384 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a9+296(SP), DX
	0x0188 00392 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a10+88(SP), DX
	0x018d 00397 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x0195 00405 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r4+32(SP)
	0x019a 00410 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a11+96(SP), DX
	0x019f 00415 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a12+104(SP), DX
	0x01a4 00420 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x01ac 00428 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a2+240(SP), DX
	0x01b4 00436 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r5+24(SP)
	0x01b9 00441 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a13+112(SP), DX
	0x01be 00446 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a14+120(SP), DX
	0x01c3 00451 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a3+248(SP), DX
	0x01cb 00459 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r6+16(SP)
	0x01d0 00464 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a15+128(SP), DX
	0x01d8 00472 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a16+136(SP), DX
	0x01e0 00480 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r7+8(SP)
	0x01e5 00485 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a17+144(SP), DX
	0x01ed 00493 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x01f5 00501 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r8(SP)
	0x01f9 00505 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a1+232(SP), DX
	0x0201 00513 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a2+240(SP), DX
	0x0209 00521 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a3+248(SP), DX
	0x0211 00529 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r9+160(SP)
	0x0219 00537 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a3+248(SP), DX
	0x0221 00545 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a4+256(SP), DX
	0x0229 00553 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a18+152(SP), DX
	0x0231 00561 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r10+168(SP)
	0x0239 00569 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a5+264(SP), DX
	0x0241 00577 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a6+272(SP), DX
	0x0249 00585 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x0251 00593 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r11+176(SP)
	0x0259 00601 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a7+280(SP), DX
	0x0261 00609 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a8+288(SP), DX
	0x0269 00617 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x0271 00625 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r12+184(SP)
	0x0279 00633 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a9+296(SP), DX
	0x0281 00641 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a10+88(SP), DX
	0x0286 00646 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x028e 00654 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r13+192(SP)
	0x0296 00662 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a11+96(SP), DX
	0x029b 00667 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a12+104(SP), DX
	0x02a0 00672 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x02a8 00680 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a2+240(SP), DX
	0x02b0 00688 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r14+200(SP)
	0x02b8 00696 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a13+112(SP), DX
	0x02bd 00701 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a14+120(SP), DX
	0x02c2 00706 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a3+248(SP), DX
	0x02ca 00714 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r15+208(SP)
	0x02d2 00722 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a15+128(SP), DX
	0x02da 00730 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a16+136(SP), DX
	0x02e2 00738 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r16+216(SP)
	0x02ea 00746 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.a17+144(SP), DX
	0x02f2 00754 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	main.a1+232(SP), DX
	0x02fa 00762 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	DX, main.~r17+224(SP)
	0x0302 00770 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r0+64(SP), AX
	0x0307 00775 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r1+56(SP), BX
	0x030c 00780 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r2+48(SP), CX
	0x0311 00785 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r3+40(SP), DI
	0x0316 00790 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r4+32(SP), SI
	0x031b 00795 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r5+24(SP), R8
	0x0320 00800 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r6+16(SP), R9
	0x0325 00805 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r7+8(SP), R10
	0x032a 00810 (D:/code/study/golang/demo/stack/fun.go:12)	MOVQ	main.~r8(SP), R11
	0x032e 00814 (D:/code/study/golang/demo/stack/fun.go:12)	ADDQ	$72, SP
	0x0332 00818 (D:/code/study/golang/demo/stack/fun.go:12)	POPQ	BP
	0x0333 00819 (D:/code/study/golang/demo/stack/fun.go:12)	RET
	0x0000 55 48 89 e5 48 83 ec 48 48 89 84 24 e8 00 00 00  UH..H..HH..$....
	0x0010 48 89 9c 24 f0 00 00 00 48 89 8c 24 f8 00 00 00  H..$....H..$....
	0x0020 48 89 bc 24 00 01 00 00 48 89 b4 24 08 01 00 00  H..$....H..$....
	0x0030 4c 89 84 24 10 01 00 00 4c 89 8c 24 18 01 00 00  L..$....L..$....
	0x0040 4c 89 94 24 20 01 00 00 4c 89 9c 24 28 01 00 00  L..$ ...L..$(...
	0x0050 48 c7 44 24 40 00 00 00 00 48 c7 44 24 38 00 00  H.D$@....H.D$8..
	0x0060 00 00 48 c7 44 24 30 00 00 00 00 48 c7 44 24 28  ..H.D$0....H.D$(
	0x0070 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44  ....H.D$ ....H.D
	0x0080 24 18 00 00 00 00 48 c7 44 24 10 00 00 00 00 48  $.....H.D$.....H
	0x0090 c7 44 24 08 00 00 00 00 48 c7 04 24 00 00 00 00  .D$.....H..$....
	0x00a0 48 c7 84 24 a0 00 00 00 00 00 00 00 48 c7 84 24  H..$........H..$
	0x00b0 a8 00 00 00 00 00 00 00 48 c7 84 24 b0 00 00 00  ........H..$....
	0x00c0 00 00 00 00 48 c7 84 24 b8 00 00 00 00 00 00 00  ....H..$........
	0x00d0 48 c7 84 24 c0 00 00 00 00 00 00 00 48 c7 84 24  H..$........H..$
	0x00e0 c8 00 00 00 00 00 00 00 48 c7 84 24 d0 00 00 00  ........H..$....
	0x00f0 00 00 00 00 48 c7 84 24 d8 00 00 00 00 00 00 00  ....H..$........
	0x0100 48 c7 84 24 e0 00 00 00 00 00 00 00 48 8b 94 24  H..$........H..$
	0x0110 e8 00 00 00 48 03 94 24 f0 00 00 00 48 03 94 24  ....H..$....H..$
	0x0120 f8 00 00 00 48 89 54 24 40 48 8b 94 24 f8 00 00  ....H.T$@H..$...
	0x0130 00 48 03 94 24 00 01 00 00 48 03 94 24 98 00 00  .H..$....H..$...
	0x0140 00 48 89 54 24 38 48 8b 94 24 08 01 00 00 48 03  .H.T$8H..$....H.
	0x0150 94 24 10 01 00 00 48 03 94 24 e8 00 00 00 48 89  .$....H..$....H.
	0x0160 54 24 30 48 8b 94 24 18 01 00 00 48 03 94 24 20  T$0H..$....H..$ 
	0x0170 01 00 00 48 03 94 24 e8 00 00 00 48 89 54 24 28  ...H..$....H.T$(
	0x0180 48 8b 94 24 28 01 00 00 48 03 54 24 58 48 03 94  H..$(...H.T$XH..
	0x0190 24 e8 00 00 00 48 89 54 24 20 48 8b 54 24 60 48  $....H.T$ H.T$`H
	0x01a0 03 54 24 68 48 03 94 24 e8 00 00 00 48 03 94 24  .T$hH..$....H..$
	0x01b0 f0 00 00 00 48 89 54 24 18 48 8b 54 24 70 48 03  ....H.T$.H.T$pH.
	0x01c0 54 24 78 48 03 94 24 f8 00 00 00 48 89 54 24 10  T$xH..$....H.T$.
	0x01d0 48 8b 94 24 80 00 00 00 48 03 94 24 88 00 00 00  H..$....H..$....
	0x01e0 48 89 54 24 08 48 8b 94 24 90 00 00 00 48 03 94  H.T$.H..$....H..
	0x01f0 24 e8 00 00 00 48 89 14 24 48 8b 94 24 e8 00 00  $....H..$H..$...
	0x0200 00 48 03 94 24 f0 00 00 00 48 03 94 24 f8 00 00  .H..$....H..$...
	0x0210 00 48 89 94 24 a0 00 00 00 48 8b 94 24 f8 00 00  .H..$....H..$...
	0x0220 00 48 03 94 24 00 01 00 00 48 03 94 24 98 00 00  .H..$....H..$...
	0x0230 00 48 89 94 24 a8 00 00 00 48 8b 94 24 08 01 00  .H..$....H..$...
	0x0240 00 48 03 94 24 10 01 00 00 48 03 94 24 e8 00 00  .H..$....H..$...
	0x0250 00 48 89 94 24 b0 00 00 00 48 8b 94 24 18 01 00  .H..$....H..$...
	0x0260 00 48 03 94 24 20 01 00 00 48 03 94 24 e8 00 00  .H..$ ...H..$...
	0x0270 00 48 89 94 24 b8 00 00 00 48 8b 94 24 28 01 00  .H..$....H..$(..
	0x0280 00 48 03 54 24 58 48 03 94 24 e8 00 00 00 48 89  .H.T$XH..$....H.
	0x0290 94 24 c0 00 00 00 48 8b 54 24 60 48 03 54 24 68  .$....H.T$`H.T$h
	0x02a0 48 03 94 24 e8 00 00 00 48 03 94 24 f0 00 00 00  H..$....H..$....
	0x02b0 48 89 94 24 c8 00 00 00 48 8b 54 24 70 48 03 54  H..$....H.T$pH.T
	0x02c0 24 78 48 03 94 24 f8 00 00 00 48 89 94 24 d0 00  $xH..$....H..$..
	0x02d0 00 00 48 8b 94 24 80 00 00 00 48 03 94 24 88 00  ..H..$....H..$..
	0x02e0 00 00 48 89 94 24 d8 00 00 00 48 8b 94 24 90 00  ..H..$....H..$..
	0x02f0 00 00 48 03 94 24 e8 00 00 00 48 89 94 24 e0 00  ..H..$....H..$..
	0x0300 00 00 48 8b 44 24 40 48 8b 5c 24 38 48 8b 4c 24  ..H.D$@H.\$8H.L$
	0x0310 30 48 8b 7c 24 28 48 8b 74 24 20 4c 8b 44 24 18  0H.|$(H.t$ L.D$.
	0x0320 4c 8b 4c 24 10 4c 8b 54 24 08 4c 8b 1c 24 48 83  L.L$.L.T$.L..$H.
	0x0330 c4 48 5d c3                                      .H].
main.main STEXT size=1674 args=0x0 locals=0x280 funcid=0x0 align=0x0
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:15)	TEXT	main.main(SB), ABIInternal, $640-0
	0x0000 00000 (D:/code/study/golang/demo/stack/fun.go:15)	LEAQ	-512(SP), R12
	0x0008 00008 (D:/code/study/golang/demo/stack/fun.go:15)	CMPQ	R12, 16(R14)
	0x000c 00012 (D:/code/study/golang/demo/stack/fun.go:15)	PCDATA	$0, $-2
	0x000c 00012 (D:/code/study/golang/demo/stack/fun.go:15)	JLS	1660
	0x0012 00018 (D:/code/study/golang/demo/stack/fun.go:15)	PCDATA	$0, $-1
	0x0012 00018 (D:/code/study/golang/demo/stack/fun.go:15)	PUSHQ	BP
	0x0013 00019 (D:/code/study/golang/demo/stack/fun.go:15)	MOVQ	SP, BP
	0x0016 00022 (D:/code/study/golang/demo/stack/fun.go:15)	SUBQ	$632, SP
	0x001d 00029 (D:/code/study/golang/demo/stack/fun.go:15)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x001d 00029 (D:/code/study/golang/demo/stack/fun.go:15)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x001d 00029 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$10, (SP)
	0x0025 00037 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$11, 8(SP)
	0x002e 00046 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$12, 16(SP)
	0x0037 00055 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$13, 24(SP)
	0x0040 00064 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$14, 32(SP)
	0x0049 00073 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$15, 40(SP)
	0x0052 00082 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$16, 48(SP)
	0x005b 00091 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$17, 56(SP)
	0x0064 00100 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	$18, 64(SP)
	0x006d 00109 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$1, AX
	0x0072 00114 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$2, BX
	0x0077 00119 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$3, CX
	0x007c 00124 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$4, DI
	0x0081 00129 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$5, SI
	0x0086 00134 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$6, R8
	0x008c 00140 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$7, R9
	0x0092 00146 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$8, R10
	0x0098 00152 (D:/code/study/golang/demo/stack/fun.go:16)	MOVL	$9, R11
	0x009e 00158 (D:/code/study/golang/demo/stack/fun.go:16)	PCDATA	$1, $0
	0x009e 00158 (D:/code/study/golang/demo/stack/fun.go:16)	NOP
	0x00a0 00160 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	main.add2(SB)
	0x00a5 00165 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	AX, main..autotmp_27+464(SP)
	0x00ad 00173 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	BX, main..autotmp_28+456(SP)
	0x00b5 00181 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	CX, main..autotmp_29+448(SP)
	0x00bd 00189 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DI, main..autotmp_30+432(SP)
	0x00c5 00197 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	SI, main..autotmp_31+424(SP)
	0x00cd 00205 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	R8, main..autotmp_32+416(SP)
	0x00d5 00213 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	R9, main..autotmp_33+408(SP)
	0x00dd 00221 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	R10, main..autotmp_34+400(SP)
	0x00e5 00229 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	R11, main..autotmp_35+392(SP)
	0x00ed 00237 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_27+464(SP), DX
	0x00f5 00245 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_0+624(SP)
	0x00fd 00253 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_28+456(SP), DX
	0x0105 00261 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_1+616(SP)
	0x010d 00269 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_29+448(SP), DX
	0x0115 00277 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_2+528(SP)
	0x011d 00285 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_30+432(SP), DX
	0x0125 00293 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_3+440(SP)
	0x012d 00301 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_31+424(SP), DX
	0x0135 00309 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_4+352(SP)
	0x013d 00317 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_32+416(SP), DX
	0x0145 00325 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_5+264(SP)
	0x014d 00333 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_33+408(SP), DX
	0x0155 00341 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_6+240(SP)
	0x015d 00349 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_34+400(SP), DX
	0x0165 00357 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_7+232(SP)
	0x016d 00365 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_35+392(SP), DX
	0x0175 00373 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_8+224(SP)
	0x017d 00381 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_0+624(SP), DX
	0x0185 00389 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	DX, main..autotmp_45+304(SP)
	0x018d 00397 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printlock(SB)
	0x0192 00402 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_45+304(SP), AX
	0x019a 00410 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x019f 00415 (D:/code/study/golang/demo/stack/fun.go:16)	NOP
	0x01a0 00416 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printsp(SB)
	0x01a5 00421 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_1+616(SP), AX
	0x01ad 00429 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x01b2 00434 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printsp(SB)
	0x01b7 00439 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_2+528(SP), AX
	0x01bf 00447 (D:/code/study/golang/demo/stack/fun.go:16)	NOP
	0x01c0 00448 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x01c5 00453 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printsp(SB)
	0x01ca 00458 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_3+440(SP), AX
	0x01d2 00466 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x01d7 00471 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printsp(SB)
	0x01dc 00476 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_4+352(SP), AX
	0x01e4 00484 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x01e9 00489 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printsp(SB)
	0x01ee 00494 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_5+264(SP), AX
	0x01f6 00502 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x01fb 00507 (D:/code/study/golang/demo/stack/fun.go:16)	NOP
	0x0200 00512 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printsp(SB)
	0x0205 00517 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_6+240(SP), AX
	0x020d 00525 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x0212 00530 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printsp(SB)
	0x0217 00535 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_7+232(SP), AX
	0x021f 00543 (D:/code/study/golang/demo/stack/fun.go:16)	NOP
	0x0220 00544 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x0225 00549 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printsp(SB)
	0x022a 00554 (D:/code/study/golang/demo/stack/fun.go:16)	MOVQ	main..autotmp_8+224(SP), AX
	0x0232 00562 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printint(SB)
	0x0237 00567 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printnl(SB)
	0x023c 00572 (D:/code/study/golang/demo/stack/fun.go:16)	NOP
	0x0240 00576 (D:/code/study/golang/demo/stack/fun.go:16)	CALL	runtime.printunlock(SB)
	0x0245 00581 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$10, (SP)
	0x024d 00589 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$11, 8(SP)
	0x0256 00598 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$12, 16(SP)
	0x025f 00607 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$13, 24(SP)
	0x0268 00616 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$14, 32(SP)
	0x0271 00625 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$15, 40(SP)
	0x027a 00634 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$16, 48(SP)
	0x0283 00643 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$17, 56(SP)
	0x028c 00652 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	$18, 64(SP)
	0x0295 00661 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$1, AX
	0x029a 00666 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$2, BX
	0x029f 00671 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$3, CX
	0x02a4 00676 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$4, DI
	0x02a9 00681 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$5, SI
	0x02ae 00686 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$6, R8
	0x02b4 00692 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$7, R9
	0x02ba 00698 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$8, R10
	0x02c0 00704 (D:/code/study/golang/demo/stack/fun.go:17)	MOVL	$9, R11
	0x02c6 00710 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	main.add3(SB)
	0x02cb 00715 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	72(SP), DX
	0x02d0 00720 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	80(SP), R12
	0x02d5 00725 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	88(SP), R13
	0x02da 00730 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	96(SP), R15
	0x02df 00735 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R15, main..autotmp_47+288(SP)
	0x02e7 00743 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	104(SP), R15
	0x02ec 00748 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R15, main..autotmp_48+280(SP)
	0x02f4 00756 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	112(SP), R15
	0x02f9 00761 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R15, main..autotmp_49+272(SP)
	0x0301 00769 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	120(SP), R15
	0x0306 00774 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R15, main..autotmp_50+256(SP)
	0x030e 00782 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	128(SP), R15
	0x0316 00790 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R15, main..autotmp_51+248(SP)
	0x031e 00798 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	136(SP), R15
	0x0326 00806 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	AX, main..autotmp_35+392(SP)
	0x032e 00814 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	BX, main..autotmp_34+400(SP)
	0x0336 00822 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	CX, main..autotmp_33+408(SP)
	0x033e 00830 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DI, main..autotmp_32+416(SP)
	0x0346 00838 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	SI, main..autotmp_31+424(SP)
	0x034e 00846 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R8, main..autotmp_30+432(SP)
	0x0356 00854 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R9, main..autotmp_29+448(SP)
	0x035e 00862 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R10, main..autotmp_28+456(SP)
	0x0366 00870 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R11, main..autotmp_27+464(SP)
	0x036e 00878 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_36+384(SP)
	0x0376 00886 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R12, main..autotmp_37+376(SP)
	0x037e 00894 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R13, main..autotmp_38+368(SP)
	0x0386 00902 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_47+288(SP), DX
	0x038e 00910 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_39+360(SP)
	0x0396 00918 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_48+280(SP), DX
	0x039e 00926 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_40+344(SP)
	0x03a6 00934 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_49+272(SP), DX
	0x03ae 00942 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_41+336(SP)
	0x03b6 00950 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_50+256(SP), DX
	0x03be 00958 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_42+328(SP)
	0x03c6 00966 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_51+248(SP), DX
	0x03ce 00974 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_43+320(SP)
	0x03d6 00982 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	R15, main..autotmp_44+312(SP)
	0x03de 00990 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_35+392(SP), DX
	0x03e6 00998 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_9+216(SP)
	0x03ee 01006 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_34+400(SP), DX
	0x03f6 01014 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_10+608(SP)
	0x03fe 01022 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_33+408(SP), DX
	0x0406 01030 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_11+600(SP)
	0x040e 01038 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_32+416(SP), DX
	0x0416 01046 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_12+592(SP)
	0x041e 01054 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_31+424(SP), DX
	0x0426 01062 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_13+584(SP)
	0x042e 01070 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_30+432(SP), DX
	0x0436 01078 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_14+576(SP)
	0x043e 01086 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_29+448(SP), DX
	0x0446 01094 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_15+568(SP)
	0x044e 01102 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_28+456(SP), DX
	0x0456 01110 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_16+560(SP)
	0x045e 01118 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_27+464(SP), DX
	0x0466 01126 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_17+552(SP)
	0x046e 01134 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_36+384(SP), DX
	0x0476 01142 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_18+544(SP)
	0x047e 01150 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_37+376(SP), DX
	0x0486 01158 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_19+536(SP)
	0x048e 01166 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_38+368(SP), DX
	0x0496 01174 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_20+520(SP)
	0x049e 01182 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_39+360(SP), DX
	0x04a6 01190 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_21+512(SP)
	0x04ae 01198 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_40+344(SP), DX
	0x04b6 01206 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_22+504(SP)
	0x04be 01214 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_41+336(SP), DX
	0x04c6 01222 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_23+496(SP)
	0x04ce 01230 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_42+328(SP), DX
	0x04d6 01238 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_24+488(SP)
	0x04de 01246 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_43+320(SP), DX
	0x04e6 01254 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_25+480(SP)
	0x04ee 01262 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_44+312(SP), DX
	0x04f6 01270 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_26+472(SP)
	0x04fe 01278 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_9+216(SP), DX
	0x0506 01286 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	DX, main..autotmp_46+296(SP)
	0x050e 01294 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printlock(SB)
	0x0513 01299 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_46+296(SP), AX
	0x051b 01307 (D:/code/study/golang/demo/stack/fun.go:17)	NOP
	0x0520 01312 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0525 01317 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x052a 01322 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_10+608(SP), AX
	0x0532 01330 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0537 01335 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x053c 01340 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_11+600(SP), AX
	0x0544 01348 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0549 01353 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x054e 01358 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_12+592(SP), AX
	0x0556 01366 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x055b 01371 (D:/code/study/golang/demo/stack/fun.go:17)	NOP
	0x0560 01376 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x0565 01381 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_13+584(SP), AX
	0x056d 01389 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0572 01394 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x0577 01399 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_14+576(SP), AX
	0x057f 01407 (D:/code/study/golang/demo/stack/fun.go:17)	NOP
	0x0580 01408 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0585 01413 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x058a 01418 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_15+568(SP), AX
	0x0592 01426 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0597 01431 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x059c 01436 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_16+560(SP), AX
	0x05a4 01444 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x05a9 01449 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x05ae 01454 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_17+552(SP), AX
	0x05b6 01462 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x05bb 01467 (D:/code/study/golang/demo/stack/fun.go:17)	NOP
	0x05c0 01472 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x05c5 01477 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_18+544(SP), AX
	0x05cd 01485 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x05d2 01490 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x05d7 01495 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_19+536(SP), AX
	0x05df 01503 (D:/code/study/golang/demo/stack/fun.go:17)	NOP
	0x05e0 01504 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x05e5 01509 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x05ea 01514 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_20+520(SP), AX
	0x05f2 01522 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x05f7 01527 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x05fc 01532 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_21+512(SP), AX
	0x0604 01540 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0609 01545 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x060e 01550 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_22+504(SP), AX
	0x0616 01558 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x061b 01563 (D:/code/study/golang/demo/stack/fun.go:17)	NOP
	0x0620 01568 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x0625 01573 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_23+496(SP), AX
	0x062d 01581 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0632 01586 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x0637 01591 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_24+488(SP), AX
	0x063f 01599 (D:/code/study/golang/demo/stack/fun.go:17)	NOP
	0x0640 01600 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0645 01605 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x064a 01610 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_25+480(SP), AX
	0x0652 01618 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0657 01623 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printsp(SB)
	0x065c 01628 (D:/code/study/golang/demo/stack/fun.go:17)	MOVQ	main..autotmp_26+472(SP), AX
	0x0664 01636 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printint(SB)
	0x0669 01641 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printnl(SB)
	0x066e 01646 (D:/code/study/golang/demo/stack/fun.go:17)	CALL	runtime.printunlock(SB)
	0x0673 01651 (D:/code/study/golang/demo/stack/fun.go:18)	ADDQ	$632, SP
	0x067a 01658 (D:/code/study/golang/demo/stack/fun.go:18)	POPQ	BP
	0x067b 01659 (D:/code/study/golang/demo/stack/fun.go:18)	RET
	0x067c 01660 (D:/code/study/golang/demo/stack/fun.go:18)	NOP
	0x067c 01660 (D:/code/study/golang/demo/stack/fun.go:15)	PCDATA	$1, $-1
	0x067c 01660 (D:/code/study/golang/demo/stack/fun.go:15)	PCDATA	$0, $-2
	0x067c 01660 (D:/code/study/golang/demo/stack/fun.go:15)	NOP
	0x0680 01664 (D:/code/study/golang/demo/stack/fun.go:15)	CALL	runtime.morestack_noctxt(SB)
	0x0685 01669 (D:/code/study/golang/demo/stack/fun.go:15)	PCDATA	$0, $-1
	0x0685 01669 (D:/code/study/golang/demo/stack/fun.go:15)	JMP	0
	0x0000 4c 8d a4 24 00 fe ff ff 4d 3b 66 10 0f 86 6a 06  L..$....M;f...j.
	0x0010 00 00 55 48 89 e5 48 81 ec 78 02 00 00 48 c7 04  ..UH..H..x...H..
	0x0020 24 0a 00 00 00 48 c7 44 24 08 0b 00 00 00 48 c7  $....H.D$.....H.
	0x0030 44 24 10 0c 00 00 00 48 c7 44 24 18 0d 00 00 00  D$.....H.D$.....
	0x0040 48 c7 44 24 20 0e 00 00 00 48 c7 44 24 28 0f 00  H.D$ ....H.D$(..
	0x0050 00 00 48 c7 44 24 30 10 00 00 00 48 c7 44 24 38  ..H.D$0....H.D$8
	0x0060 11 00 00 00 48 c7 44 24 40 12 00 00 00 b8 01 00  ....H.D$@.......
	0x0070 00 00 bb 02 00 00 00 b9 03 00 00 00 bf 04 00 00  ................
	0x0080 00 be 05 00 00 00 41 b8 06 00 00 00 41 b9 07 00  ......A.....A...
	0x0090 00 00 41 ba 08 00 00 00 41 bb 09 00 00 00 66 90  ..A.....A.....f.
	0x00a0 e8 00 00 00 00 48 89 84 24 d0 01 00 00 48 89 9c  .....H..$....H..
	0x00b0 24 c8 01 00 00 48 89 8c 24 c0 01 00 00 48 89 bc  $....H..$....H..
	0x00c0 24 b0 01 00 00 48 89 b4 24 a8 01 00 00 4c 89 84  $....H..$....L..
	0x00d0 24 a0 01 00 00 4c 89 8c 24 98 01 00 00 4c 89 94  $....L..$....L..
	0x00e0 24 90 01 00 00 4c 89 9c 24 88 01 00 00 48 8b 94  $....L..$....H..
	0x00f0 24 d0 01 00 00 48 89 94 24 70 02 00 00 48 8b 94  $....H..$p...H..
	0x0100 24 c8 01 00 00 48 89 94 24 68 02 00 00 48 8b 94  $....H..$h...H..
	0x0110 24 c0 01 00 00 48 89 94 24 10 02 00 00 48 8b 94  $....H..$....H..
	0x0120 24 b0 01 00 00 48 89 94 24 b8 01 00 00 48 8b 94  $....H..$....H..
	0x0130 24 a8 01 00 00 48 89 94 24 60 01 00 00 48 8b 94  $....H..$`...H..
	0x0140 24 a0 01 00 00 48 89 94 24 08 01 00 00 48 8b 94  $....H..$....H..
	0x0150 24 98 01 00 00 48 89 94 24 f0 00 00 00 48 8b 94  $....H..$....H..
	0x0160 24 90 01 00 00 48 89 94 24 e8 00 00 00 48 8b 94  $....H..$....H..
	0x0170 24 88 01 00 00 48 89 94 24 e0 00 00 00 48 8b 94  $....H..$....H..
	0x0180 24 70 02 00 00 48 89 94 24 30 01 00 00 e8 00 00  $p...H..$0......
	0x0190 00 00 48 8b 84 24 30 01 00 00 e8 00 00 00 00 90  ..H..$0.........
	0x01a0 e8 00 00 00 00 48 8b 84 24 68 02 00 00 e8 00 00  .....H..$h......
	0x01b0 00 00 e8 00 00 00 00 48 8b 84 24 10 02 00 00 90  .......H..$.....
	0x01c0 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24 b8 01  ..........H..$..
	0x01d0 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24  ............H..$
	0x01e0 60 01 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b  `.............H.
	0x01f0 84 24 08 01 00 00 e8 00 00 00 00 0f 1f 44 00 00  .$...........D..
	0x0200 e8 00 00 00 00 48 8b 84 24 f0 00 00 00 e8 00 00  .....H..$.......
	0x0210 00 00 e8 00 00 00 00 48 8b 84 24 e8 00 00 00 90  .......H..$.....
	0x0220 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24 e0 00  ..........H..$..
	0x0230 00 00 e8 00 00 00 00 e8 00 00 00 00 0f 1f 40 00  ..............@.
	0x0240 e8 00 00 00 00 48 c7 04 24 0a 00 00 00 48 c7 44  .....H..$....H.D
	0x0250 24 08 0b 00 00 00 48 c7 44 24 10 0c 00 00 00 48  $.....H.D$.....H
	0x0260 c7 44 24 18 0d 00 00 00 48 c7 44 24 20 0e 00 00  .D$.....H.D$ ...
	0x0270 00 48 c7 44 24 28 0f 00 00 00 48 c7 44 24 30 10  .H.D$(....H.D$0.
	0x0280 00 00 00 48 c7 44 24 38 11 00 00 00 48 c7 44 24  ...H.D$8....H.D$
	0x0290 40 12 00 00 00 b8 01 00 00 00 bb 02 00 00 00 b9  @...............
	0x02a0 03 00 00 00 bf 04 00 00 00 be 05 00 00 00 41 b8  ..............A.
	0x02b0 06 00 00 00 41 b9 07 00 00 00 41 ba 08 00 00 00  ....A.....A.....
	0x02c0 41 bb 09 00 00 00 e8 00 00 00 00 48 8b 54 24 48  A..........H.T$H
	0x02d0 4c 8b 64 24 50 4c 8b 6c 24 58 4c 8b 7c 24 60 4c  L.d$PL.l$XL.|$`L
	0x02e0 89 bc 24 20 01 00 00 4c 8b 7c 24 68 4c 89 bc 24  ..$ ...L.|$hL..$
	0x02f0 18 01 00 00 4c 8b 7c 24 70 4c 89 bc 24 10 01 00  ....L.|$pL..$...
	0x0300 00 4c 8b 7c 24 78 4c 89 bc 24 00 01 00 00 4c 8b  .L.|$xL..$....L.
	0x0310 bc 24 80 00 00 00 4c 89 bc 24 f8 00 00 00 4c 8b  .$....L..$....L.
	0x0320 bc 24 88 00 00 00 48 89 84 24 88 01 00 00 48 89  .$....H..$....H.
	0x0330 9c 24 90 01 00 00 48 89 8c 24 98 01 00 00 48 89  .$....H..$....H.
	0x0340 bc 24 a0 01 00 00 48 89 b4 24 a8 01 00 00 4c 89  .$....H..$....L.
	0x0350 84 24 b0 01 00 00 4c 89 8c 24 c0 01 00 00 4c 89  .$....L..$....L.
	0x0360 94 24 c8 01 00 00 4c 89 9c 24 d0 01 00 00 48 89  .$....L..$....H.
	0x0370 94 24 80 01 00 00 4c 89 a4 24 78 01 00 00 4c 89  .$....L..$x...L.
	0x0380 ac 24 70 01 00 00 48 8b 94 24 20 01 00 00 48 89  .$p...H..$ ...H.
	0x0390 94 24 68 01 00 00 48 8b 94 24 18 01 00 00 48 89  .$h...H..$....H.
	0x03a0 94 24 58 01 00 00 48 8b 94 24 10 01 00 00 48 89  .$X...H..$....H.
	0x03b0 94 24 50 01 00 00 48 8b 94 24 00 01 00 00 48 89  .$P...H..$....H.
	0x03c0 94 24 48 01 00 00 48 8b 94 24 f8 00 00 00 48 89  .$H...H..$....H.
	0x03d0 94 24 40 01 00 00 4c 89 bc 24 38 01 00 00 48 8b  .$@...L..$8...H.
	0x03e0 94 24 88 01 00 00 48 89 94 24 d8 00 00 00 48 8b  .$....H..$....H.
	0x03f0 94 24 90 01 00 00 48 89 94 24 60 02 00 00 48 8b  .$....H..$`...H.
	0x0400 94 24 98 01 00 00 48 89 94 24 58 02 00 00 48 8b  .$....H..$X...H.
	0x0410 94 24 a0 01 00 00 48 89 94 24 50 02 00 00 48 8b  .$....H..$P...H.
	0x0420 94 24 a8 01 00 00 48 89 94 24 48 02 00 00 48 8b  .$....H..$H...H.
	0x0430 94 24 b0 01 00 00 48 89 94 24 40 02 00 00 48 8b  .$....H..$@...H.
	0x0440 94 24 c0 01 00 00 48 89 94 24 38 02 00 00 48 8b  .$....H..$8...H.
	0x0450 94 24 c8 01 00 00 48 89 94 24 30 02 00 00 48 8b  .$....H..$0...H.
	0x0460 94 24 d0 01 00 00 48 89 94 24 28 02 00 00 48 8b  .$....H..$(...H.
	0x0470 94 24 80 01 00 00 48 89 94 24 20 02 00 00 48 8b  .$....H..$ ...H.
	0x0480 94 24 78 01 00 00 48 89 94 24 18 02 00 00 48 8b  .$x...H..$....H.
	0x0490 94 24 70 01 00 00 48 89 94 24 08 02 00 00 48 8b  .$p...H..$....H.
	0x04a0 94 24 68 01 00 00 48 89 94 24 00 02 00 00 48 8b  .$h...H..$....H.
	0x04b0 94 24 58 01 00 00 48 89 94 24 f8 01 00 00 48 8b  .$X...H..$....H.
	0x04c0 94 24 50 01 00 00 48 89 94 24 f0 01 00 00 48 8b  .$P...H..$....H.
	0x04d0 94 24 48 01 00 00 48 89 94 24 e8 01 00 00 48 8b  .$H...H..$....H.
	0x04e0 94 24 40 01 00 00 48 89 94 24 e0 01 00 00 48 8b  .$@...H..$....H.
	0x04f0 94 24 38 01 00 00 48 89 94 24 d8 01 00 00 48 8b  .$8...H..$....H.
	0x0500 94 24 d8 00 00 00 48 89 94 24 28 01 00 00 e8 00  .$....H..$(.....
	0x0510 00 00 00 48 8b 84 24 28 01 00 00 0f 1f 44 00 00  ...H..$(.....D..
	0x0520 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24 60 02  ..........H..$`.
	0x0530 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24  ............H..$
	0x0540 58 02 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b  X.............H.
	0x0550 84 24 50 02 00 00 e8 00 00 00 00 0f 1f 44 00 00  .$P..........D..
	0x0560 e8 00 00 00 00 48 8b 84 24 48 02 00 00 e8 00 00  .....H..$H......
	0x0570 00 00 e8 00 00 00 00 48 8b 84 24 40 02 00 00 90  .......H..$@....
	0x0580 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24 38 02  ..........H..$8.
	0x0590 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24  ............H..$
	0x05a0 30 02 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b  0.............H.
	0x05b0 84 24 28 02 00 00 e8 00 00 00 00 0f 1f 44 00 00  .$(..........D..
	0x05c0 e8 00 00 00 00 48 8b 84 24 20 02 00 00 e8 00 00  .....H..$ ......
	0x05d0 00 00 e8 00 00 00 00 48 8b 84 24 18 02 00 00 90  .......H..$.....
	0x05e0 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24 08 02  ..........H..$..
	0x05f0 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24  ............H..$
	0x0600 00 02 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b  ..............H.
	0x0610 84 24 f8 01 00 00 e8 00 00 00 00 0f 1f 44 00 00  .$...........D..
	0x0620 e8 00 00 00 00 48 8b 84 24 f0 01 00 00 e8 00 00  .....H..$.......
	0x0630 00 00 e8 00 00 00 00 48 8b 84 24 e8 01 00 00 90  .......H..$.....
	0x0640 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24 e0 01  ..........H..$..
	0x0650 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b 84 24  ............H..$
	0x0660 d8 01 00 00 e8 00 00 00 00 e8 00 00 00 00 e8 00  ................
	0x0670 00 00 00 48 81 c4 78 02 00 00 5d c3 0f 1f 40 00  ...H..x...]...@.
	0x0680 e8 00 00 00 00 e9 76 f9 ff ff                    ......v...
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
	rel 711+4 t=R_CALL main.add3+0
	rel 1295+4 t=R_CALL runtime.printlock+0
	rel 1313+4 t=R_CALL runtime.printint+0
	rel 1318+4 t=R_CALL runtime.printsp+0
	rel 1331+4 t=R_CALL runtime.printint+0
	rel 1336+4 t=R_CALL runtime.printsp+0
	rel 1349+4 t=R_CALL runtime.printint+0
	rel 1354+4 t=R_CALL runtime.printsp+0
	rel 1367+4 t=R_CALL runtime.printint+0
	rel 1377+4 t=R_CALL runtime.printsp+0
	rel 1390+4 t=R_CALL runtime.printint+0
	rel 1395+4 t=R_CALL runtime.printsp+0
	rel 1409+4 t=R_CALL runtime.printint+0
	rel 1414+4 t=R_CALL runtime.printsp+0
	rel 1427+4 t=R_CALL runtime.printint+0
	rel 1432+4 t=R_CALL runtime.printsp+0
	rel 1445+4 t=R_CALL runtime.printint+0
	rel 1450+4 t=R_CALL runtime.printsp+0
	rel 1463+4 t=R_CALL runtime.printint+0
	rel 1473+4 t=R_CALL runtime.printsp+0
	rel 1486+4 t=R_CALL runtime.printint+0
	rel 1491+4 t=R_CALL runtime.printsp+0
	rel 1505+4 t=R_CALL runtime.printint+0
	rel 1510+4 t=R_CALL runtime.printsp+0
	rel 1523+4 t=R_CALL runtime.printint+0
	rel 1528+4 t=R_CALL runtime.printsp+0
	rel 1541+4 t=R_CALL runtime.printint+0
	rel 1546+4 t=R_CALL runtime.printsp+0
	rel 1559+4 t=R_CALL runtime.printint+0
	rel 1569+4 t=R_CALL runtime.printsp+0
	rel 1582+4 t=R_CALL runtime.printint+0
	rel 1587+4 t=R_CALL runtime.printsp+0
	rel 1601+4 t=R_CALL runtime.printint+0
	rel 1606+4 t=R_CALL runtime.printsp+0
	rel 1619+4 t=R_CALL runtime.printint+0
	rel 1624+4 t=R_CALL runtime.printsp+0
	rel 1637+4 t=R_CALL runtime.printint+0
	rel 1642+4 t=R_CALL runtime.printnl+0
	rel 1647+4 t=R_CALL runtime.printunlock+0
	rel 1665+4 t=R_CALL runtime.morestack_noctxt+0
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
main.add3.arginfo1 SRODATA static dupok size=22
	0x0000 90 08 98 08 a0 08 a8 08 b0 08 b8 08 c0 08 c8 08  ................
	0x0010 d0 08 00 08 fc ff                                ......
