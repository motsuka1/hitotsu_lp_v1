FROM node:alpine3.13
RUN mkdir app
WORKDIR /app
RUN apk update && \
    apk add git && \
    npm install -g gatsby-cli
EXPOSE 8000
