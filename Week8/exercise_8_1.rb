class Poker
  def initialize(players)
    @players = players
    @hands = []
    players.length().times { |x| @hands.append(nil) }
  end

  def play()
    puts "Players in the poker game:"
    @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are poker results]"
  end

  def get_player_name(i)
    return @players[i]
  end

  def get_player_hand(i)
    return @hands[i]
  end
end

class ChessPlayer
  attr_reader :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end
end

class Chess
  def initialize(player1, player2)
    @player1= player1
    @player2 = player2
  end

  def play()
    puts "Players in the chess game:"
    puts "#{@player1.name}: #{@player1.color}"
    puts "#{@player2.name}: #{@player2.color}"
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end
end

class GoPlayer
  attr_reader :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end
end

class Go
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play()
    puts "Players in the go game:"
    puts "#{@player1.name}: #{@player1.color}"
    puts "#{@player2.name}: #{@player2.color}"
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are go results]"
  end
end

class PlayGames

  def initialize(game)
    @game = game
  end

  def play()
    @game.play
    puts @game.get_results
  end

end


poker = Poker.new(["alice", "bob", "chris", "dave"])
pg1 = PlayGames.new(poker)
pg1.play

chess_p1 = ChessPlayer.new("alice", "white")
chess_p2 = ChessPlayer.new("bob", "black")
chess = Chess.new(chess_p1, chess_p2)
pg2 = PlayGames.new(chess)
pg2.play

go_p1 = GoPlayer.new("alice", "white")
go_p2 = GoPlayer.new("bob", "black")
go = Go.new(go_p1, go_p2)
pg3 = PlayGames.new(go)
pg3.play

# When refactoring this code, I was focusing on defining a clear interface for all the games so that they could be
# played using one consistent block of code in the PlayGames class. I did this by renaming the functions to be consistent and by
# using dependency injection in PlayGames so we can pass a specific game into it. 

# The way poker was implemented made sense to me considering its a game that can be played with many people

# I updated both the chess and go code by adding and using a player class to chess. Then, I injected two players into both of
# the games, and just printed their name and color. It made sense to me to have the players as objects.

# I think the code is much better now because each game implements a similar public interface, making communication with the
# PlayGames class more clear and consistent.