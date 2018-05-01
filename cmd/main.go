package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	fmt.Println("starting http server testing...")

	http.HandleFunc("/", WelcomeHandler)
	log.Printf("Starting server on %s\n", os.Getenv("ADDR"))
	log.Fatal(http.ListenAndServe(os.Getenv("ADDR"), nil))
}

// WelcomeHandler ...
func WelcomeHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Welcome!")
}
