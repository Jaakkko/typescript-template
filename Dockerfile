FROM node:14.15-buster AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --no-optional
COPY src src
COPY @types @types
COPY tsconfig.compile.json ./
RUN npm run build
RUN npm prune --production

FROM node:14.15-buster
ENV NODE_ENV=production
WORKDIR /app
COPY --from=builder /app/node_modules node_modules
COPY --from=builder /app/dist src
CMD ["node", "./src/main.js"]
