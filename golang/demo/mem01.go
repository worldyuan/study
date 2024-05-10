package main

type People struct {
	Name string
	Age  int
}

func NewPeople(name string, age int) *People {
	p := new(People)
	p.Name = name
	p.Age = age
	return p
}

func main() {
	NewPeople("jack", 18)
}
