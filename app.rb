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
  session["telefono"]=params["telefono"]
  session["picas"]=Picas.new
  erb :juego
end 

post '/resultado' do
  input=params["numeroingresado"]
  telefono=session["telefono"]
  session["resultado"]= session["picas"].comparar input, telefono
  erb :resultado
end 