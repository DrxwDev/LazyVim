#!/bin/bash

# create Module
go mod init "$1"

# create the cmd folder
mkdir cmd

# create the main.go file
touch cmd/main.go
