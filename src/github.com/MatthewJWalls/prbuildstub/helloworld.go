package main

import (
	"log"
	"os"
	"os/signal"
	"syscall"
	"fmt"
	"net/http"
)
func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w,"OK")
	})

	var gracefulStop = make(chan os.Signal)
	
	signal.Notify(gracefulStop, syscall.SIGTERM)
	signal.Notify(gracefulStop, syscall.SIGINT)
	signal.Notify(gracefulStop, syscall.SIGHUP)
	
	go func() {
		_ = <-gracefulStop
		log.Printf("Exiting")		
		os.Exit(0)
	}()
	
	http.ListenAndServe(":3000",nil)
}

