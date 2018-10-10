require 'bundler/setup'
require 'sinatra/base'
require_relative './movie.rb'
require_relative './director.rb'
require 'json'

class Api < Sinatra::Base


	get '/hello' do
		'Hello world!'
	end
	get '/movies' do
		Movie.all.to_json
	end

	get '/movies/:id' do
		id = params[:id].to_i
		Movie.find(id).to_json
	end

	get '/directors' do
		Director.all.to_json
	end

	get '/directors/:id' do
		id = params[:id].to_i
		Director.find(id).to_json
	end
	
end
