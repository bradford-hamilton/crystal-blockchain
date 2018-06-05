FROM crystallang/crystal

RUN mkdir -p /app
WORKDIR /app
COPY . .

EXPOSE 3000