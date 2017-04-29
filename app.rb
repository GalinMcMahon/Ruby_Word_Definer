require 'sinatra'
require 'sinatra/reloader'
require './lib/definitions'
require './lib/words'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
# click on 'Add a new word to route to word form'
get('/word/new') do
  erb(:word_form)
end
# # click on 'Add Word' in word form to route to list of all words (words.erb)
get('/words') do
  @words = Words.all()
  erb(:words)
end
# # push word form "form action" to word array
get ('/word/:id') do
  @word = Words.find(params.fetch('id').to_i())
  erb(:word)
end
# enables 'add new album' to route to album form
get('/definition_form') do
  erb(:definition_form)
end
# # click on 'Add Album' in album form to route to artist page (artist.erb)
get('/definition_form') do
  @definition = Definitions.all()
  erb(:word)
end

get('/words/:id/definition/new') do
  @word = Words.find(params.fetch('id').to_i())
  erb(:definition_form)
end

post('/words') do
  word_new = params.fetch('inputted_word')
  Words.new(word_new).save()
  @words = Words.all()
  erb(:words)
end

post('/definitions') do
  definition = params.fetch('inputted_definition')
  @definition = Definitions.new('inputted_definition')
  @definition.save()
  @word = Words.find(params.fetch('word_id').to_i())
  @word.add_definition(@definition)
  @words = Words.all()
  erb(:words)





end
