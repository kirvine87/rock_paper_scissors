require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')

class GameTest < MiniTest::Test

  def setup()
    @game = Game.new()
  end

  def test_game_outcome__rock_paper
    result = @game.play("Rock", "Paper")
    assert_equal("player2 who wins with Paper", result)
  end

  def test_game_outcome__rock_scissors
    result = @game.play("Rock", "Scissors")
    assert_equal("player1 who wins with Rock", result)
  end

  def test_game_outcome__draw
    result = @game.play("Rock", "Rock")
    assert_equal("Oh! it's a draw", result)
  end

  def test_game_outcome__paper_rock
    result = @game.play("Paper", "Rock")
    assert_equal("player1 who wins with Paper", result)
  end

  def test_game_outcome__scissors_rock
    result = @game.play("Scissors", "Rock")
    assert_equal("player2 who wins with Rock", result)
  end

  def test_game_outcome__scissors_paper
    result = @game.play("Scissors", "Paper")
    assert_equal("player1 who wins with Scissors", result)
  end

  def test_game_outcome__paper_scissors
    result = @game.play("Paper", "Scissors")
    assert_equal("player2 who wins with Scissors", result)
  end

  def test_game_outcome__invalid
    result = @game.play("Bat", "Rock")
    assert_equal("Oh no! invalid input, try again.", result)
  end



end
