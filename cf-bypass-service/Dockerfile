FROM node:20-slim

# Install Chromium + fonts (as root during build)
RUN apt-get update && apt-get install -y \
    chromium \
    fonts-noto-cjk \
    fonts-liberation \
    ca-certificates \
    curl \
    --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev

COPY server.js ./

# OpenShift: files must be accessible by arbitrary non-root UID (root group GID=0)
RUN chown -R 1000:0 /app \
 && chmod -R g=u /app

ENV HOME=/tmp
ENV PORT=8080
ENV CHROME_BIN=/usr/bin/chromium

# Run as non-root (required by OpenShift restricted SCC)
USER 1000

EXPOSE 8080
CMD ["node", "server.js"]
