FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod .

RUN go mod download

COPY . ./

RUN go build -mod=mod -o /helloworld

CMD [ "/helloworld" ]
