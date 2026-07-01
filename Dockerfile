FROM node:20-slim AS builder

RUN npm install -g pnpm@10 --silent

WORKDIR /app

COPY package.json pnpm-workspace.yaml pnpm-lock.yaml .npmrc ./
COPY tsconfig.json tsconfig.base.json ./
COPY lib/                          ./lib/
COPY artifacts/api-server/         ./artifacts/api-server/
COPY artifacts/anime-scraper/      ./artifacts/anime-scraper/

RUN pnpm install --frozen-lockfile

RUN pnpm --filter @workspace/api-server run build
RUN pnpm --filter @workspace/anime-scraper run build

RUN mkdir -p /runtime-modules && \
    cd /runtime-modules && \
    npm init -y --silent && \
    npm install nodemailer handlebars --silent

FROM node:20-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install flask "curl_cffi>=0.7" --break-system-packages --quiet

WORKDIR /app

COPY --from=builder /app/artifacts/api-server/dist/    ./artifacts/api-server/dist/
COPY --from=builder /app/artifacts/anime-scraper/dist/ ./artifacts/anime-scraper/dist/
COPY --from=builder /runtime-modules/node_modules/     ./node_modules/

COPY scripts/cf_proxy.py ./scripts/cf_proxy.py
COPY artifacts/api-server/src/data/ ./artifacts/api-server/dist/data/

COPY vps-start.sh ./start.sh
RUN chmod +x ./start.sh

EXPOSE 8080
CMD ["./start.sh"]
