require 'json'

class Director

  DATA_FILE_PATH = File.join(File.dirname(__FILE__), './../data.json')

  def self.all
    file = File.read(DATA_FILE_PATH)
    data_hash = JSON.parse(file)
    data_hash['directors']
  end

  def self.find(id)
    all.select{ |hash, key| hash['id'] == id }.first
  end
end

