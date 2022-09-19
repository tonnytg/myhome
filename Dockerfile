FROM node:latest AS builder
WORKDIR /app
COPY ./myhome/package.json ./package.json
COPY ./myhome/public ./public
COPY ./myhome/* ./
RUN npm install
RUN npm install react-scripts@5.0.1 -g
RUN npm run build

FROM nginx:stable-alpine AS production-stage
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]
