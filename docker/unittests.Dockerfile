FROM golang:1.18

WORKDIR $GOPATH/src/github.com/qtumproject/janus
COPY . $GOPATH/src/github.com/qtumproject/janus
RUN go get -d ./...

CMD [ "go", "test", "-v", "./..."]