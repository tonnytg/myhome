FROM node:latest AS builder
WORKDIR /app/myhome
COPY ./myhome .
RUN npm install
RUN npm install react-scripts@5.0.1 -g
RUN npm run build

FROM nginx:latest AS production-stage
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/myhome/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]
