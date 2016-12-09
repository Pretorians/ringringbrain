require 'sinatra'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
<<<<<<< HEAD
	erb:index
=======
	erb :inicio
>>>>>>> d92d2ebb0cd95f8ac23a51ffc4e1305af99cdbc7
end

