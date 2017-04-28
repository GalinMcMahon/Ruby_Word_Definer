require 'sinatra'
require 'sinatra/reloader'
require './lib/definitions'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
