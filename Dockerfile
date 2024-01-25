FROM --platform=linux/amd64 golang:latest AS build-env
WORKDIR /go/src

COPY go.mod ./
COPY go.sum ./
RUN go mod tidy

COPY . . 

RUN CGO_ENABLED=0 \
    GOOS=linux \
    go build \
    -trimpath \
    -o bin/main ./cmd/main.go

FROM --platform=linux/amd64 scratch
WORKDIR /
COPY --from=build-env /go/src/bin/main .

ENTRYPOINT ["./main"]