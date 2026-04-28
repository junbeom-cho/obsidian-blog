FROM node:22-alpine AS builder

WORKDIR /app

RUN apk add -no-cache coreutils

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npx quartz build

FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/public /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

