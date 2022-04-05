require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/winner'

class Game
  attr_reader :board

  def initialize
    @board = Board.new
    @player = Player.new(@board)
    @computer = Computer.new(@board)
    @winner = Winner.new(@board)
  end

  def intro
      puts `clear`
      puts "Welcome to Connect Four:"
      puts "Enter p to play. Enter q to quit"
      puts "--------------------------------"
      play_input = gets.chomp
      if play_input.downcase == "p"
        puts `clear`
        @board.make_board
        turn_loop
      elsif play_input.downcase == "q"
        exit
      else
        puts ""
        puts "Invalid input, press any key to continue"
        puts ""
        gets.chomp
        intro
      end
  end

  def turn_loop
    loop {
    @player.player_turn
    @computer.computer_turn
    @board.make_board
    if !@board.board.values.include?(". ")
      puts ""
      puts "The game is a draw"
      break
    elsif @winner.column_winner == :player
      puts ""
      puts "You win!"
      @board.refresh_board
      intro
      break
    elsif @winner.column_winner == :computer
      puts ""
      puts "You lose! AI is undefeatable"
      @board.refresh_board
      intro
      break
    elsif @winner.row_winner == :player
      puts ""
      puts "You win!"
      @board.refresh_board
      intro
      break
    elsif @winner.row_winner == :computer
      puts ""
      puts "You lose! AI is undefeatable"
      @board.refresh_board
      intro
      break
    elsif @winner.diagonal_winner == :player
      puts ""
      puts "You win!"
      @board.refresh_board
      intro
      break
    elsif @winner.diagonal_winner == :computer
      puts ""
      puts "You lose! AI is undefeatable"
      @board.refresh_board
      intro
      break
    end
  }
  end
end
