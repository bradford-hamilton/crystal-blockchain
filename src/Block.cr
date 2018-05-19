class Block
  def self.create(index, timestamp, data, prev_hash)
    block = {
      index: index,
      timestamp: timestamp,
      data: data,
      prev_hash: prev_hash
    }

    block.merge({ hash: self.calculate_hash(block) })
  end

  def self.calculate_hash(string)
    sha256 = OpenSSL::Digest.new("SHA256")
    sha256.update(string)
    sha256.to_s
  end

  def self.calculate_hash(block)
    plain_text = "
      #{block[:index]}
      #{block[:timestamp]}
      #{block[:data]}
      #{block[:prev_hash]}
    "
    sha256 = OpenSSL::Digest.new("SHA256")
    sha256.update(plain_text)
    sha256.to_s
  end

  def self.generate(last_block, data)
    self.create(
      last_block[:index] + 1,
      Time.now.to_s,
      data,
      last_block[:hash]
    )
  end

  def self.is_valid?(new_block, old_block)
    if old_block[:index] + 1 != new_block[:index]
      return false 
    elsif old_block[:hash] != new_block[:prev_hash]
      return false 
    elsif self.calculate_hash(new_block) != new_block[:hash]
      return false 
    end

    true
  end
end