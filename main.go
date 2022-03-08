package main

import (
	"fmt"
	"os"
	"time"
)

func main() {

	//Simple Batch Job
	fmt.Println("=== Start Simple Batch Job ===")

	//Processing Batch
	for i := 0; i < 10; i++ {
		fmt.Printf("Processing ... (%d)\n", i)
		time.Sleep(500 * time.Millisecond)
	}

	fmt.Println("=== Job Success ===")

	//Exit Code 0 == not error
	os.Exit(0)

}
