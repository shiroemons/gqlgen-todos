FROM golang:1.19

WORKDIR /app
COPY ./ /app

EXPOSE 8080

CMD ["go", "run", "server.go"]
