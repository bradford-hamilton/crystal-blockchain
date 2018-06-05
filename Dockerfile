FROM crystallang/crystal
MAINTAINER Bradford Lamson-Scribner <brad.lamson@gmail.com>

RUN mkdir -p /app
WORKDIR /app
COPY . .

EXPOSE 3000