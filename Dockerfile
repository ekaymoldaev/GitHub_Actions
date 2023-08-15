FROM golang:latest
WORKDIR /app
COPY . .
RUN go mod init webserv.go
RUN go mod tidy
RUN go build -o main Task3.go
EXPOSE 85
CMD ["./main"]
