package main

import (
	"fmt"
	"unsafe"
)

type testData struct {
	a int
	b string
}

func swap(ptr unsafe.Pointer, size uintptr, a, b int) {
	p1 := add(ptr, uintptr(size)*uintptr(a))
	p2 := add(ptr, uintptr(size)*uintptr(b))
	bs1 := (*[]byte)(p1)
	bs2 := (*[]byte)(p2)
	for ; size > 0; size-- {
		(*bs1)[size-1] = (*bs1)[size-1] ^ (*bs2)[size-1]
		(*bs2)[size-1] = (*bs1)[size-1] ^ (*bs2)[size-1]
	}

}

// go:nosplit
func add(p unsafe.Pointer, x uintptr) unsafe.Pointer {
	return unsafe.Pointer(uintptr(p) + x)
}

func main() {
	a := testData{a: 1, b: "a"}
	b := testData{a: 1, b: "b"}
	arr := []testData{a, b}

	fmt.Printf("sizeof(a)=%v\n", unsafe.Sizeof(a))
	fmt.Printf("sizeof(arr)=%v\n", unsafe.Sizeof(arr))
	fmt.Printf("%v", arr)
	return
	swap(unsafe.Pointer(&arr), unsafe.Sizeof(a), 0, 1)
	fmt.Printf("%v", arr)
}
