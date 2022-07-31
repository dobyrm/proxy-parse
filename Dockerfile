FROM golang:1.18

WORKDIR /src

COPY go.mod ./
RUN go mod download && go mod verify

COPY . .
RUN go build -v -o src/cmd ./...

CMD ["main"]
