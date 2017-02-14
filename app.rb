require 'pg'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'ffaker'

require_relative 'db/connection.rb'

# require_relative 'controllers/pokemon.rb'
# require_relative 'controllers/trainer.rb'

require_relative 'models/pokemon'
require_relative 'models/trainer'

get "/" do
  erb :home
end

get "/pokemon" do
  @pokemon = Pokemon.all
  erb :"pokemon/index"
end

get '/pokemon/new' do
  erb :"pokemon/new"
end

post '/pokemon' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

get "/pokemon/:id" do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

get "/pokemon/:id/edit" do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemon/edit")
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemon/#{@pokemon.id}")
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect("/pokemon")
end

get "/trainer" do
  @trainer = Trainer.all
  erb :"trainer/index"
end
