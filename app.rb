require 'sinatra'
require 'better_errors'
require './lib/picas'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
	erb:index
end

post '/juego' do
  session["picas"]=Picas.new
  session["picas"].aleatorio
  erb :juego
end 

post '/resultado' do
  erb :resultado
end 