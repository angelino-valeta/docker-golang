FROM golang:1.21.2

# Set destination for COPY
WORKDIR /app

# Download Go modules
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code
COPY *.go ./

# Build
RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-golang

# To bind to a TCP port, runtime parameters must be supplied to the docjer command
EXPOSE 8080

# RUN
CMD ["/docker-golang"]