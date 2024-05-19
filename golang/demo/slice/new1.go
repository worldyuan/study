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
