FROM crystallang/crystal
MAINTAINER Bradford Lamson-Scribner <brad.lamson@gmail.com>

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY . .

EXPOSE 3000