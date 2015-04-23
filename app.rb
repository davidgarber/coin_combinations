require('pry')
require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get('/change') do
  @coins = params.fetch('coins').to_i()
  @change = @coins.coin_combination()
  erb(:change)
end
