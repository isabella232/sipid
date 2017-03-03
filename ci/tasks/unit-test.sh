#!/usr/bin/env bash

set -e

export GOPATH="${PWD}/gopath"
export PATH="${GOPATH}/bin:${PATH}"
go get github.com/onsi/ginkgo/ginkgo
go get github.com/onsi/ginkgo/gomega

cd gopath/src/github.com/cloudfoundry/sipid

ginkgo -r -race -p -randomizeAllSpecs -randomizeSuites -failOnPending .