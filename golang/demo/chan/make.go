package main

func main() {
	ch := make(chan int, 0)
	ch <- 1
	i := <-ch
	i++
}
