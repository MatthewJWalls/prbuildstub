package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "OK")
	})

	log.Println("Starting server")
	http.ListenAndServe(":3000", nil)
}
