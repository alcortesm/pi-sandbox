BINARY := pi-sandbox

.PHONY: build test vet clean

build:
	go build -o bin/$(BINARY) ./cmd/pi-sandbox

test:
	go test ./...

vet:
	go vet ./...
	go tool staticcheck ./...

clean:
	- rm -rf bin
