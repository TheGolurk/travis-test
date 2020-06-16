package main

import (
	"fmt"
	"log"
	"net/http"
	"io"
)

func main() {
	fmt.Println("App running")
	http.HandleFunc("/", sayHello)

	log.Fatal(http.ListenAndServe(":80", nil))
}

func sayHello(w http.ResponseWriter, r *http.Request) {
	name := r.FormValue("name")
	if name == "" {
		name = "uknow"
	}
	switch name {
	case "":
		name = "uknow"
	case "andrea":
		name = "Girlfriend, i love you"
	case "yiro":
		name = "YIRO, quedate en tu puta casa"
	case "miguel":
		name = "Miguel, que sad que provoca sed.."
	case "javier":
		name = "Javier, ola k ase"
	default:
		io.WriteString(w, "Introduce algo marico")
		return
	}
	io.WriteString(w, fmt.Sprintf("Hello %s", name))
}
