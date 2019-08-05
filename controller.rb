require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/game.rb')
also_reload('./models/*')

get '/rock/paper' do
  game = Game.new()
  @game = game.play("Rock", "Paper")
  erb(:result)
end

get '/rock/scissors' do
  game = Game.new()
  @game = game.play("Rock", "Scissors")
  erb(:result)
end

get '/rock/rock' do
  game = Game.new()
  @game = game.play("Rock", "Rock")
  erb(:result)
end

get '/scissors/scissors' do
  game = Game.new()
  @game = game.play("Scissors", "Scissors")
  erb(:result)
end

get '/paper/paper' do
  game = Game.new()
  @game = game.play("Paper", "Paper")
  erb(:result)
end

get '/paper/rock' do
  game = Game.new()
  @game = game.play("Paper", "Rock")
  erb(:result)
end

get '/scissors/rock' do
  game = Game.new()
  @game = game.play("Scissors", "Rock")
  erb(:result)
end

get '/paper/scissors' do
  game = Game.new()
  @game = game.play("Paper", "Scissors")
  erb(:result)
end

get '/scissors/paper' do
  game = Game.new()
  @game = game.play("Scissors", "Paper")
  erb(:result)
end
