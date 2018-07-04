FROM crystallang/crystal

RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN crystal build src/crystal-blockchain.cr

EXPOSE 3000

CMD ./crystal-blockchain