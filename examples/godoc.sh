#!/bin/bash

# Compiling gcvis
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
go build -o $DIR/gcvis $DIR/../*.go

/Users/nobman02/nobel-gitvis/gcvis godoc -index -http=:6060
