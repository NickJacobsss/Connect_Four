require './lib/board'

board = Board.new
board.intro


  # if user_input == a
  #   player_selection_a
  # elsif user_input == b
  #   player_selection_b
  #
  #
  # def player_selection_a
  #   if @board[:a1] == ". "
  #     @board[:a1] = "x"
  #   elsif @board[:a2] == ". "
  #     @board[:a2] = "x"
  #   else
  #     puts "try again, column A is full"
  #     check_winner
  #     start_turn
  #
  #    def computer_turn
  #     options = [1,2,3,4,5,6,7](argument to randomize)