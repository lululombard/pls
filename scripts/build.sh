#!/bin/bash

set -e

mkdir -p bin

echo "Compiling for linux/386"
GOOS=linux GOARCH=386 go build -o bin/pls_linux_386  main.go
echo "Compiling for linux/amd64"
GOOS=linux GOARCH=amd64 go build -o bin/pls_linux_amd64  main.go
echo "Compiling for linux/arm"
GOOS=linux GOARCH=arm go build -o bin/pls_linux_arm  main.go
echo "Compiling for linux/arm64"
GOOS=linux GOARCH=arm64 go build -o bin/pls_linux_arm64  main.go
