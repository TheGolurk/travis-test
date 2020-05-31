package main

import (
	"fmt"
	"log"
	"net/http"

	"golang.org/go/src/io"
)

func main() {
	http.HandleFunc("/", sayHello)

	log.Fatal(http.ListenAndServe(":8080", nil))
}

func sayHello(w http.ResponseWriter, r *http.Request) {
	name := r.FormValue("name")
	if name == "" {
		name = "uknow"
	}
	io.WriteString(
		w,
		fmt.Sprintf("Hello %s", name))
}
