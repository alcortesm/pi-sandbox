BINARY := pi-sandbox

.PHONY: build test clean

build:
	go build -o bin/$(BINARY) ./cmd

test:
	go test ./...

clean:
	- rm -rf bin
