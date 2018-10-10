require 'json'

class Data

  DATA_FILE_PATH = File.join(File.dirname(__FILE__), './../data.json')

  private

  def self.file
    @file ||= File.read(DATA_FILE_PATH)
  end

  def self.data_hash
    @data_hash ||= JSON.parse(file)
  end

  def self.all
    data_hash[node_name]
  end

  def self.node_name
    "#{self.name.downcase}s"
  end

  def self.find(id)
    all.select{ |hash, key| hash['id'] == id }.first
  end
end

