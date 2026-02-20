# --- BUILDER ---

FROM golang:1.26-alpine AS builder

WORKDIR /app

COPY main.go .

#RUN go build main.go
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -o main main.go

# --- SCRATCH ---

FROM scratch

COPY --from=builder /app/main main

CMD ["./main"]
