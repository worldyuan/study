package main

import "fmt"

func MakeString(name string, n int) {
	fmt.Sprintf("%s%d", name, n)
}

func MakeString2() {
	// 应该这个"hi"和3是在静态区的，可能操作系统加载的时候，静态区也算在堆上么？
	fmt.Sprintf("%s%d", "hi", 3)
}

func main() {
	MakeString("name", 2)
	MakeString2()
}
