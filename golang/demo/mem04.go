package main

func MakeSlice() {
	length := 1
	a := make([]int, length, length)
	for i := 0; i < length; i++ {
		a[i] = i
	}
}

func main() {
	MakeSlice()
}
