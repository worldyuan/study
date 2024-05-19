Slice
===
Slice是golang的一个list。

## 申明
### 底层源码
#### 汇编
- 糟糕的感觉
```go
func main() {
    a := make([]int, 1, 10)
    println(a)
}
```
```assembly
	0x0055 00085 (D:/code/study/golang/demo/slice/new.go:5)	PCDATA	$1, $1
	0x0055 00085 (D:/code/study/golang/demo/slice/new.go:5)	CALL	runtime.printlock(SB)
	0x005a 00090 (D:/code/study/golang/demo/slice/new.go:5)	MOVQ	main.a+104(SP), AX
	0x005f 00095 (D:/code/study/golang/demo/slice/new.go:5)	MOVQ	main.a+112(SP), BX
	0x0064 00100 (D:/code/study/golang/demo/slice/new.go:5)	MOVQ	main.a+120(SP), CX
	0x0069 00105 (D:/code/study/golang/demo/slice/new.go:5)	PCDATA	$1, $0
	0x0069 00105 (D:/code/study/golang/demo/slice/new.go:5)	CALL	runtime.printslice(SB)
	0x006e 00110 (D:/code/study/golang/demo/slice/new.go:5)	CALL	runtime.printnl(SB)
	0x0073 00115 (D:/code/study/golang/demo/slice/new.go:5)	CALL	runtime.printunlock(SB)
```
这是一个糟糕的感觉，并没有看到slice相关的东西

- 添加append
```go
package main

func slice_append(s []int) {
	s = append(s, 1)
}

func main() {
	aa := make([]int, 1)
	slice_append(aa)
}
```
只是发现了`growalice`，并没有声明，应该是在静态数据区了，所以在编译优化的时候，会尽量使用一些基础的数据（如数组或者静态数据区的数据，可以满足需求的情况下，可以不使用slice，或者有slice，尽量使用静态区的slice，只要cap够用就行，猜想）
- 变量申明（可用）
```go
package main

func slice_append(s []int) {
	s = append(s, 1)
}

func main() {
	a := 1
	b := 10
	aa := make([]int, a, b)
	slice_append(aa)
}

```
查看汇编代码
···assembly
	0x0020 00032 (D:/code/study/golang/demo/slice/new.go:10)	LEAQ	type:int(SB), AX
	0x0027 00039 (D:/code/study/golang/demo/slice/new.go:10)	MOVL	$1, BX
	0x002c 00044 (D:/code/study/golang/demo/slice/new.go:10)	MOVL	$10, CX
	0x0031 00049 (D:/code/study/golang/demo/slice/new.go:10)	PCDATA	$1, $0
	0x0031 00049 (D:/code/study/golang/demo/slice/new.go:10)	CALL	runtime.makeslice(SB)
	0x0036 00054 (D:/code/study/golang/demo/slice/new.go:10)	MOVQ	main.a+32(SP), BX
	0x003b 00059 (D:/code/study/golang/demo/slice/new.go:10)	MOVQ	main.b+24(SP), CX
	0x0040 00064 (D:/code/study/golang/demo/slice/new.go:10)	MOVQ	AX, main.aa+40(SP)
	0x0045 00069 (D:/code/study/golang/demo/slice/new.go:10)	MOVQ	BX, main.aa+48(SP)
	0x004a 00074 (D:/code/study/golang/demo/slice/new.go:10)	MOVQ	CX, main.aa+56(SP)
	0x004f 00079 (D:/code/study/golang/demo/slice/new.go:11)	CALL	main.slice_append(SB)
```
    - LEAQ	type:int(SB), AX
    `type:int`是申明一个int类型，`SB`表示静态区。这个意思是将SB区域的一个int类型加载到`AX`中。
    - MOVL	$1, BX
    将`1`放到`BX`寄存器中
    - MOVL	$10, CX
    将`10`放到`BX`寄存器中
    - PCDATA	$1, $0
    这个暂时不是很懂，应该是指在堆栈地区，申明了一个空间，指明了类型和地址，主要用于GC回收
    - runtime.makeslice(SB)
    这里就是申明`slice`的主要代码
