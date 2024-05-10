package main

func MakeSlice() {
	s := make([]int, 10000, 100000)

	for index := range s {
		s[index] = index
	}
}

func main() {
	MakeSlice()
}
