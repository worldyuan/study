package main

func slice_append(s []int) {
	s = append(s, 1)
}

func main() {
	aa := make([]int, 1)
	slice_append(aa)
}
