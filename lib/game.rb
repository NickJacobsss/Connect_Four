require './lib/board'
require './lib/player'
require './lib/computer'

class Game
  attr_reader :board, :player, :computer

  def initialize
    @board = Board.new
    @player = Player.new(@board)
    @computer = Computer.new(@board)
  end

  def intro
      puts ""
      puts "Welcome to Connect Four:"
      puts "Line Up 4 Pieces to Win!"
      puts "Press Enter to Begin:"
      puts "------------------------"
      gets.chomp
      @board.make_board
      turn_loop
      # start_turn
  end

  def turn_loop
    loop {
    @player.player_turn
    @computer.computer_turn
    @board.make_board
    if !@board.board.values.include?(". ")
      puts "The game is a draw"
      break
    end 
  }
  end
end
