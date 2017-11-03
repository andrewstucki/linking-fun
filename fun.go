// package name: fun
package main

import "C"
import "fmt"

//export GoHello
func GoHello(name *C.char) {
	fmt.Printf("Hello \"%s\" from Go!\n", C.GoString(name))
}

func main() {} // ignored.
