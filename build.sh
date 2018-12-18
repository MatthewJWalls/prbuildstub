#!/bin/bash

env GOPATH=$(pwd) GOOS=linux GOARCH=amd64 go build -o bin/prbuildstub-linux github.com/MatthewJWalls/prbuildstub
env GOPATH=$(pwd) GOOS=darwin GOARCH=amd64 go build -o bin/prbuildstub-osx github.com/MatthewJWalls/prbuildstub
