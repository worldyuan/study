main.main STEXT size=40 args=0x0 locals=0x10 funcid=0x0 align=0x0
	0x0000 00000 (D:/code/study/golang/demo/gmp/gmp01.go:3)	TEXT	main.main(SB), ABIInternal, $16-0
	0x0000 00000 (D:/code/study/golang/demo/gmp/gmp01.go:3)	CMPQ	SP, 16(R14)
	0x0004 00004 (D:/code/study/golang/demo/gmp/gmp01.go:3)	PCDATA	$0, $-2
	0x0004 00004 (D:/code/study/golang/demo/gmp/gmp01.go:3)	JLS	33
	0x0006 00006 (D:/code/study/golang/demo/gmp/gmp01.go:3)	PCDATA	$0, $-1
	0x0006 00006 (D:/code/study/golang/demo/gmp/gmp01.go:3)	PUSHQ	BP
	0x0007 00007 (D:/code/study/golang/demo/gmp/gmp01.go:3)	MOVQ	SP, BP
	0x000a 00010 (D:/code/study/golang/demo/gmp/gmp01.go:3)	SUBQ	$8, SP
	0x000e 00014 (D:/code/study/golang/demo/gmp/gmp01.go:3)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (D:/code/study/golang/demo/gmp/gmp01.go:3)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x000e 00014 (D:/code/study/golang/demo/gmp/gmp01.go:4)	LEAQ	main.main.func1·f(SB), AX
	0x0015 00021 (D:/code/study/golang/demo/gmp/gmp01.go:4)	PCDATA	$1, $0
	0x0015 00021 (D:/code/study/golang/demo/gmp/gmp01.go:4)	CALL	runtime.newproc(SB)
	0x001a 00026 (D:/code/study/golang/demo/gmp/gmp01.go:7)	ADDQ	$8, SP
	0x001e 00030 (D:/code/study/golang/demo/gmp/gmp01.go:7)	POPQ	BP
	0x001f 00031 (D:/code/study/golang/demo/gmp/gmp01.go:7)	NOP
	0x0020 00032 (D:/code/study/golang/demo/gmp/gmp01.go:7)	RET
	0x0021 00033 (D:/code/study/golang/demo/gmp/gmp01.go:7)	NOP
	0x0021 00033 (D:/code/study/golang/demo/gmp/gmp01.go:3)	PCDATA	$1, $-1
	0x0021 00033 (D:/code/study/golang/demo/gmp/gmp01.go:3)	PCDATA	$0, $-2
	0x0021 00033 (D:/code/study/golang/demo/gmp/gmp01.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0026 00038 (D:/code/study/golang/demo/gmp/gmp01.go:3)	PCDATA	$0, $-1
	0x0026 00038 (D:/code/study/golang/demo/gmp/gmp01.go:3)	JMP	0
	0x0000 49 3b 66 10 76 1b 55 48 89 e5 48 83 ec 08 48 8d  I;f.v.UH..H...H.
	0x0010 05 00 00 00 00 e8 00 00 00 00 48 83 c4 08 5d 90  ..........H...].
	0x0020 c3 e8 00 00 00 00 eb d8                          ........
	rel 17+4 t=R_PCREL main.main.func1·f+0
	rel 22+4 t=R_CALL runtime.newproc+0
	rel 34+4 t=R_CALL runtime.morestack_noctxt+0
main.main.func1 STEXT nosplit size=1 args=0x0 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (D:/code/study/golang/demo/gmp/gmp01.go:4)	TEXT	main.main.func1(SB), NOSPLIT|NOFRAME|ABIInternal, $0-0
	0x0000 00000 (D:/code/study/golang/demo/gmp/gmp01.go:4)	FUNCDATA	$0, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (D:/code/study/golang/demo/gmp/gmp01.go:4)	FUNCDATA	$1, gclocals·g2BeySu+wFnoycgXfElmcg==(SB)
	0x0000 00000 (D:/code/study/golang/demo/gmp/gmp01.go:6)	RET
	0x0000 c3                                               .
go:cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
main.main.func1·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=R_ADDR main.main.func1+0
gclocals·g2BeySu+wFnoycgXfElmcg== SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
