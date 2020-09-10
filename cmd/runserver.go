package cmd

import (
	"fmt"
	"net/http"

	"github.com/gorilla/mux"
)

func Execute() {
	r := mux.NewRouter()

	r.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Welcome to this test.")
	})

	fmt.Println("server listening")
	http.ListenAndServe(":80", r)
}
