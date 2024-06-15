# Stage 1: Build Stage
FROM golang:1.21.5 AS build

WORKDIR /ping

# Copy and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the entire source code
COPY *.go ./

# Build the Go application statically
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# Stage 2: Final Stage
FROM alpine:latest

WORKDIR /app

# Copy the binary from the build stage to the final stage
COPY --from=build /ping/main .

# Set the binary as executable
RUN chmod +x main

# Command to run the executable
CMD ["./main"]
