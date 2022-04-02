require './lib/board'
require './lib/player'
require './lib/computer'

class Game
  attr_reader :board

  def initialize
    @board = Board.new
    @player = Player.new
    @computer = Computer.new
    @turn = "player"
  end

  def intro
      puts ""
      puts "Welcome to Connect Four:"
      puts "Line Up 4 Pieces to Win!"
      puts "Press Enter to Begin:"
      puts "------------------------"
      gets.chomp
      @board.make_board
      # start_turn
  end
end
