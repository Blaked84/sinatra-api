require 'spec_helper'
require 'rack/test'
require_relative '../app/api'

RSpec.describe Api do
 include Rack::Test::Methods

  def app
    Api.new
  end

  it 'says hello' do
    get '/hello'
    expect(last_response.body).to eq 'Hello world!'
  end

  it 'returns the list of movies' do
    get '/movies'
    expect(last_response.body).to include 'The Gold Rush'
  end

  it 'returns a specific movie' do
    get '/movies/3'
    expect(last_response.body).to include 'The General'
  end

  # it 'returns the list of director' do
  #   get '/directors'
  #   expect(last_response.body).to include 'Charlie Chaplin'
  #   expect(last_response.body).to include 'Alfred Hitchcock'
  # end

  # it 'returns a specific director' do
  #   get '/directors/3'
  #   expect(last_response.body).to include 'Charlie Chaplin'
  # end

  # Your turn to write the next spec!

end
