FROM golang:1.25-alpine
WORKDIR /app

ARG DERP_VERSION=latest
# 设置环境变量进行静态编译
ENV CGO_ENABLED=0
ENV GOOS=linux
RUN go install -ldflags="-s -w" tailscale.com/cmd/derper@${DERP_VERSION}