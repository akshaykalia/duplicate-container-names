package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	log.Println("initializing service...")
	http.HandleFunc(
		"/",
		func(w http.ResponseWriter, req *http.Request) {
			fmt.Fprintf(w, "hello\n")
		},
	)

	if err := http.ListenAndServe(":8090", nil); err != nil {
		log.Panic(err)
	}
}
