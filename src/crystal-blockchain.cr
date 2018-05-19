require "./crystal-blockchain/*"
require "kemal"
require "openssl"
require "./Block"

module Crystal::Blockchain
  logger = Kemal::LogHandler.new

  blockchain = [] of NamedTuple(
    index: Int32,
    timestamp: String,
    data: String,
    hash: String,
    prev_hash: String
  )

  # create genesis block
  blockchain << Block.create(0, Time.now.to_s, "Gensis block's data!", "")

  get "/" do
    blockchain.to_json
  end

  post "/new-block" do |env|
    data = env.params.json["data"].as(String)

    new_block = Block.generate(blockchain[blockchain.size - 1], data)

    if Block.is_valid?(new_block, blockchain[blockchain.size - 1])
      blockchain << new_block
      logger.write("\n#{new_block}\n\n")
    end

    new_block.to_json
  end

  Kemal.run
end