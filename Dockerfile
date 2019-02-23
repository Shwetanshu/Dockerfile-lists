FROM alpine:latest

RUN apk update && apk add nodejs && apk add npm

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

CMD node index.js

EXPOSE 8081
