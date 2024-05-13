package main

func add(a, b int) int {
	return a + b
}

// 参数是a1-a18，总共18个。返回值总共是9个
func add2(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17 int, a18 int) (int, int, int, int, int, int, int, int, int) {
	return (a1 + a2 + a3), (a3 + a4 + a18), (a5 + a6 + a1), (a7 + a8 + a1), (a9 + a10 + a1), (a11 + a12 + a1 + a2), (a13 + a14 + a3), (a15 + a16), (a17 + a1)
}

func add3(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17 int, a18 int) (int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int) {
	return (a1 + a2 + a3), (a3 + a4 + a18), (a5 + a6 + a1), (a7 + a8 + a1), (a9 + a10 + a1), (a11 + a12 + a1 + a2), (a13 + a14 + a3), (a15 + a16), (a17 + a1), (a1 + a2 + a3), (a3 + a4 + a18), (a5 + a6 + a1), (a7 + a8 + a1), (a9 + a10 + a1), (a11 + a12 + a1 + a2), (a13 + a14 + a3), (a15 + a16), (a17 + a1)
}

func main() {
	println(add2(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18))
	println(add3(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18))
}
