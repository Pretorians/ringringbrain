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
  session["historial"]=""
  session["intentos"]=0
	erb:index
end

post '/juego' do
  session["telefono"]=params["telefono"]
  session["self"]=params["self"]
  session["picas"]=Picas.new
  session["fin"]=false
  if(session["self"]=="true")
    session["intentos"]=session["intentos"]+1
    input=params["numeroingresado"]
    telefono=session["telefono"]
    intentos=session["intentos"]
    session["resultado"]= session["picas"].comparar input, telefono, intentos
    #session["fin"]= session["picas"].validar intentos
    session["historial"]=session["historial"] + "<table style='border:1px;font-size:20px;'><tr><td>" + input + "</td><td>" + session["resultado"] + "</td></tr></table>"
  end

  erb :juego
end 

post '/resultado' do
  input=params["numeroingresado"]
  telefono=session["telefono"]
  session["resultado"]= session["picas"].comparar input, telefono
  session["historial"]=session["historial"] + input + " - " + session["resultado"] + "<br> "
  erb :resultado
end 