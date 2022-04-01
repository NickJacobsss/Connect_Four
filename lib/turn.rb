# require './lib/board'
require 'pry'

class Turn

  attr_reader :board

  def initialize
    @board = Board.new
    # binding.pry
  end

  def start_turn
    puts "Please pick and enter a letter A - G"
    puts "===================================="
    get_input = "A"
  end

  # def player_column_selection
  #   # binding.pry
  #   if @player_select == "A"
  #     column_a_selected
  #   elsif @player_select == "B"
  #     column_b_selected
  #   elsif @player_select == "C"
  #     column_c_selected
  #   elsif @player_select == "D"
  #     column_d_selected
  #   elsif @player_select == "E"
  #     column_e_selected
  #   elsif @player_select == "F"
  #     column_f_selected
  #   elsif @player_select == "G"
  #     column_g_selected
  #   else
  #     puts "Try again, please pick a letter between A - G"
  #     # start_turn
  #   end
  #   end

    def piece_placement(get_input)
      if get_input == "A"
        # binding.pry
        if @board.board[:A1] == ". "
          @board.board[:A1] = "X "
        elsif @board.board[:A2] == ". "
          @board.board[:A2] = "X "
        elsif @board.board[:A3] == ". "
          @board.board[:A3] = "X "
        elsif @board.board[:A4] == ". "
          @board.board[:A4] = "X "
        elsif @board.board[:A5] == ". "
          @board.board[:A5] = "X "
        elsif @board.board[:A6] == ". "
          @board.board[:A6] = "X "
        else
          puts "Column A is full, please select another column."
        end
      end
    #   elsif @player_selection == "B"
    #     if board[:B1] == ". "
    #       board[:B1] = "X "
    #     elsif board[:B2] == ". "
    #       board[:B2] = "X "
    #     elsif board[:B3] == ". "
    #       board[:B3] = "X "
    #     elsif board[:B4] == ". "
    #       board[:B4] = "X "
    #     elsif board[:B5] == ". "
    #       board[:B5] = "X "
    #     elsif board[:B6] == ". "
    #       board[:B6] = "X "
    #     else
    #       puts "Column B is full, please select another column."
    #
    #     end
    #   end
    #
    # # def column_c_selected
    #   if @board[:C1] == ". "
    #     @board[:C1] = "X "
    #   elsif @board[:C2] == ". "
    #     @board[:C2] = "X "
    #   elsif @board[:C3] == ". "
    #     @board[:C3] = "X "
    #   elsif @board[:C4] == ". "
    #     @board[:C4] = "X "
    #   elsif @board[:C5] == ". "
    #     @board[:C5] = "X "
    #   elsif @board[:C6] == ". "
    #     @board[:C6] = "X "
    #   else
    #     puts "Column C is full, please select another column."
    #
    #   end
    # end
    #
    # def column_d_selected
    #   if @board[:D1] == ". "
    #     @board[:D1] = "X "
    #   elsif @board[:D2] == ". "
    #     @board[:D2] = "X "
    #   elsif @board[:D3] == ". "
    #     @board[:D3] = "X "
    #   elsif @board[:D4] == ". "
    #     @board[:D4] = "X "
    #   elsif @board[:D5] == ". "
    #     @board[:D5] = "X "
    #   elsif @board[:D6] == ". "
    #     @board[:D6] = "X "
    #   else
    #     puts "Column D is full, please select another column."
    #
    #   end
    # end
    #
    # def column_e_selected
    #   if @board[:E1] == ". "
    #     @board[:E1] = "X "
    #   elsif @board[:E2] == ". "
    #     @board[:E2] = "X "
    #   elsif @board[:E3] == ". "
    #     @board[:E3] = "X "
    #   elsif @board[:E4] == ". "
    #     @board[:E4] = "X "
    #   elsif @board[:E5] == ". "
    #     @board[:E5] = "X "
    #   elsif @board[:E6] == ". "
    #     @board[:E6] = "X "
    #   else
    #     puts "Column E is full, please select another column."
    #     star_turn
    #   end
    # end
    #
    # def column_f_selected
    #   if @board[:F1] == ". "
    #     @board[:F1] = "X "
    #   elsif @board[:F2] == ". "
    #     @board[:F2] = "X "
    #   elsif @board[:F3] == ". "
    #     @board[:F3] = "X "
    #   elsif @board[:F4] == ". "
    #     @board[:F4] = "X "
    #   elsif @board[:F5] == ". "
    #     @board[:F5] = "X "
    #   elsif @board[:F6] == ". "
    #     @board[:F6] = "X "
    #   else
    #     puts "Column F is full, please select another column."
    #     star_turn
    #   end
    # end
    #
    # def column_g_selected
    #   if @board[:G1] == ". "
    #     @board[:G1] = "X "
    #   elsif @board[:G2] == ". "
    #     @board[:G2] = "X "
    #   elsif @board[:G3] == ". "
    #     @board[:G3] = "X "
    #   elsif @board[:G4] == ". "
    #     @board[:G4] = "X "
    #   elsif @board[:G5] == ". "
    #     @board[:G5] = "X "
    #   elsif @board[:G6] == ". "
    #     @board[:G6] = "X "
    #   else
    #     puts "Column G is full, please select another column."
    #     star_turn
    #   end
    # end

    # def randomizer
    # array_possible = ["a", "b"].random
  end
end
