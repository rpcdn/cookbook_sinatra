require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

# le serveur est sur mon ordi en local

get '/' do
  'Hello you!'
end

# stopped at the views part on https://github.com/lewagon/sinatra-101#readme
