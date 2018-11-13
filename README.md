# Write your own blockchain and PoW algorithm using Crystal

Source code for a [tutorial on Medium](https://medium.com/@bradford_hamilton/write-your-own-blockchain-and-pow-algorithm-using-crystal-d53d5d9d0c52) I published.

## Installation

Run `shards` to get the dependencies

## Run Locally

  - Run `crystal src/blockchain.cr`
  - Go to `http://localhost:3000` in your browser.

## Run with Docker

  - Run `docker build -t image_name_of_your_choosing:latest .`
  - Run `docker container run -d -p 3000:3000 image_name_of_your_choosing`
  - Go to `http://localhost:3000` in your browser.

Clean up:
  - Run `docker container ls`
  - Copy the CONTAINER ID from your running process
  - Run `docker container rm -f <CONTAINER ID>`
  - Run `docker image rm image_name_of_your_choosing`

## Usage

- GET full blockchain
- POST new blocks to chain

## Contributing

1. Fork it ( https://github.com/bradford-hamilton/crystal-blockchain/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [Bradford-Hamilton](https://github.com/bradford-hamilton) Bradford Lamson-Scribner - creator, maintainer
