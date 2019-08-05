class Game

  def initialize()

  end

def play(hand1, hand2)
  player1_wins = "player1 wins with #{hand1}"
  player2_wins = "player2 wins with #{hand2}"
  case
  when hand1 == "Rock" && hand2 == "Paper"
    return player2_wins
  when hand1 == "Rock" && hand2 == "Scissors"
    return player1_wins
  when hand1 == hand2
    return "It's a draw"
  when hand1 == "Paper" && hand2 == "Rock"
    return player1_wins
  when hand1 == "Scissors" && hand2 == "Rock"
    return player2_wins
  else
    return "Invalid input, try again."
  end
  end

end
