main.main STEXT size=103 args=0x0 locals=0x30 funcid=0x0 align=0x0
	0x0000 00000 (D:/code/study/golang/demo/chan/make.go:3)	TEXT	main.main(SB), ABIInternal, $48-0
	0x0000 00000 (D:/code/study/golang/demo/chan/make.go:3)	CMPQ	SP, 16(R14)
	0x0004 00004 (D:/code/study/golang/demo/chan/make.go:3)	PCDATA	$0, $-2
	0x0004 00004 (D:/code/study/golang/demo/chan/make.go:3)	JLS	93
	0x0006 00006 (D:/code/study/golang/demo/chan/make.go:3)	PCDATA	$0, $-1
	0x0006 00006 (D:/code/study/golang/demo/chan/make.go:3)	PUSHQ	BP
	0x0007 00007 (D:/code/study/golang/demo/chan/make.go:3)	MOVQ	SP, BP
	0x000a 00010 (D:/code/study/golang/demo/chan/make.go:3)	SUBQ	$40, SP
	0x000e 00014 (D:/code/study/golang/demo/chan/make.go:3)	FUNCDATA	$0, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x000e 00014 (D:/code/study/golang/demo/chan/make.go:3)	FUNCDATA	$1, gclocals·CnDyI2HjYXFz19SsOj98tw==(SB)
	0x000e 00014 (D:/code/study/golang/demo/chan/make.go:4)	LEAQ	type:chan int(SB), AX
	0x0015 00021 (D:/code/study/golang/demo/chan/make.go:4)	XORL	BX, BX
	0x0017 00023 (D:/code/study/golang/demo/chan/make.go:4)	PCDATA	$1, $0
	0x0017 00023 (D:/code/study/golang/demo/chan/make.go:4)	CALL	runtime.makechan(SB)
	0x001c 00028 (D:/code/study/golang/demo/chan/make.go:4)	MOVQ	AX, main.ch+32(SP)
	0x0021 00033 (D:/code/study/golang/demo/chan/make.go:5)	LEAQ	main..stmp_0(SB), BX
	0x0028 00040 (D:/code/study/golang/demo/chan/make.go:5)	PCDATA	$1, $1
	0x0028 00040 (D:/code/study/golang/demo/chan/make.go:5)	CALL	runtime.chansend1(SB)
	0x002d 00045 (D:/code/study/golang/demo/chan/make.go:6)	MOVQ	$0, main..autotmp_2+24(SP)
	0x0036 00054 (D:/code/study/golang/demo/chan/make.go:6)	MOVQ	main.ch+32(SP), AX
	0x003b 00059 (D:/code/study/golang/demo/chan/make.go:6)	LEAQ	main..autotmp_2+24(SP), BX
	0x0040 00064 (D:/code/study/golang/demo/chan/make.go:6)	PCDATA	$1, $0
	0x0040 00064 (D:/code/study/golang/demo/chan/make.go:6)	CALL	runtime.chanrecv1(SB)
	0x0045 00069 (D:/code/study/golang/demo/chan/make.go:6)	MOVQ	main..autotmp_2+24(SP), CX
	0x004a 00074 (D:/code/study/golang/demo/chan/make.go:6)	MOVQ	CX, main.i+16(SP)
	0x004f 00079 (D:/code/study/golang/demo/chan/make.go:7)	INCQ	CX
	0x0052 00082 (D:/code/study/golang/demo/chan/make.go:7)	MOVQ	CX, main.i+16(SP)
	0x0057 00087 (D:/code/study/golang/demo/chan/make.go:8)	ADDQ	$40, SP
	0x005b 00091 (D:/code/study/golang/demo/chan/make.go:8)	POPQ	BP
	0x005c 00092 (D:/code/study/golang/demo/chan/make.go:8)	RET
	0x005d 00093 (D:/code/study/golang/demo/chan/make.go:8)	NOP
	0x005d 00093 (D:/code/study/golang/demo/chan/make.go:3)	PCDATA	$1, $-1
	0x005d 00093 (D:/code/study/golang/demo/chan/make.go:3)	PCDATA	$0, $-2
	0x005d 00093 (D:/code/study/golang/demo/chan/make.go:3)	NOP
	0x0060 00096 (D:/code/study/golang/demo/chan/make.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0065 00101 (D:/code/study/golang/demo/chan/make.go:3)	PCDATA	$0, $-1
	0x0065 00101 (D:/code/study/golang/demo/chan/make.go:3)	JMP	0
	0x0000 49 3b 66 10 76 57 55 48 89 e5 48 83 ec 28 48 8d  I;f.vWUH..H..(H.
	0x0010 05 00 00 00 00 31 db e8 00 00 00 00 48 89 44 24  .....1......H.D$
	0x0020 20 48 8d 1d 00 00 00 00 e8 00 00 00 00 48 c7 44   H...........H.D
	0x0030 24 18 00 00 00 00 48 8b 44 24 20 48 8d 5c 24 18  $.....H.D$ H.\$.
	0x0040 e8 00 00 00 00 48 8b 4c 24 18 48 89 4c 24 10 48  .....H.L$.H.L$.H
	0x0050 ff c1 48 89 4c 24 10 48 83 c4 28 5d c3 0f 1f 00  ..H.L$.H..(]....
	0x0060 e8 00 00 00 00 eb 99                             .......
	rel 17+4 t=R_PCREL type:chan int+0
	rel 24+4 t=R_CALL runtime.makechan+0
	rel 36+4 t=R_PCREL main..stmp_0+0
	rel 41+4 t=R_CALL runtime.chansend1+0
	rel 65+4 t=R_CALL runtime.chanrecv1+0
	rel 97+4 t=R_CALL runtime.morestack_noctxt+0
go:cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 2d 4e 20 2d 6c 20 72 65 67 61 62 69              -N -l regabi
go:cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
main..inittask SNOPTRDATA size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=R_ADDR runtime.memequal64+0
runtime.gcbits.0100000000000000 SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
type:.namedata.*chan int- SRODATA dupok size=11
	0x0000 00 09 2a 63 68 61 6e 20 69 6e 74                 ..*chan int
type:*chan int SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fb 1c b8 83 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=R_ADDR runtime.memequal64·f+0
	rel 32+8 t=R_ADDR runtime.gcbits.0100000000000000+0
	rel 40+4 t=R_ADDROFF type:.namedata.*chan int-+0
	rel 48+8 t=R_ADDR type:chan int+0
type:chan int SRODATA dupok size=64
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f9 f3 92 ed 0a 08 08 32 00 00 00 00 00 00 00 00  .......2........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	rel 24+8 t=R_ADDR runtime.memequal64·f+0
	rel 32+8 t=R_ADDR runtime.gcbits.0100000000000000+0
	rel 40+4 t=R_ADDROFF type:.namedata.*chan int-+0
	rel 44+4 t=RelocType(-32763) type:*chan int+0
	rel 48+8 t=R_ADDR type:int+0
main..stmp_0 SRODATA static size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·CnDyI2HjYXFz19SsOj98tw== SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
