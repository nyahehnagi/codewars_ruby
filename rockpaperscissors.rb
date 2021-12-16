SCISSORS = "scissors"
PAPER = "paper"
ROCK = "rock"

def rps(p1, p2)

    if p1 == p2
        return "Draw!"
    elsif (p1 == SCISSORS && p2 == PAPER) || (p1 == PAPER && p2 == ROCK) || (p1 == ROCK && p2 == SCISSORS)
        return "Player 1 won!"
    else
        return "Player 2 won!"
    end
  end

  puts rps("scissors", "rock")