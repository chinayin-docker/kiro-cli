FROM alpine:3.23 AS builder

RUN set -eux; \
    apk add --no-cache bash curl unzip jq ca-certificates; \
    curl -fsSL https://cli.kiro.dev/install | bash; \
    install -m 0755 /root/.local/bin/kiro-cli /usr/local/bin/kiro-cli; \
    kiro-cli --version

FROM alpine:3.23
RUN apk add --no-cache ca-certificates
COPY --from=builder /usr/local/bin/kiro-cli /usr/local/bin/kiro-cli
RUN kiro-cli --version
