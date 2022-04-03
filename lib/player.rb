require 'pry'

class Player
  attr_reader :board

  def initialize(board)
    @board = board
  end

  def player_turn
    puts ""
    puts "Please pick & enter a letter A - G"
    puts "----------------------------------"
    get_input = gets.chomp
    piece_placement(get_input)
  end

  def piece_placement(get_input)
    if get_input.upcase == "A"
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
        player_turn
      end

    elsif get_input.upcase == "B"
      if @board.board[:B1] == ". "
        @board.board[:B1] = "X "
      elsif @board.board[:B2] == ". "
        @board.board[:B2] = "X "
      elsif @board.board[:B3] == ". "
        @board.board[:B3] = "X "
      elsif @board.board[:B4] == ". "
        @board.board[:B4] = "X "
      elsif @board.board[:B5] == ". "
        @board.board[:B5] = "X "
      elsif @board.board[:B6] == ". "
        @board.board[:B6] = "X "
      else
        puts "Column B is full, please select another column."
        player_turn
      end

    elsif get_input.upcase == "C"
      if @board.board[:C1] == ". "
        @board.board[:C1] = "X "
      elsif @board.board[:C2] == ". "
        @board.board[:C2] = "X "
      elsif @board.board[:C3] == ". "
        @board.board[:C3] = "X "
      elsif @board.board[:C4] == ". "
        @board.board[:C4] = "X "
      elsif @board.board[:C5] == ". "
        @board.board[:C5] = "X "
      elsif @board.board[:C6] == ". "
        @board.board[:C6] = "X "
      else
        puts "Column C is full, please select another column."
        player_turn
      end

    elsif get_input.upcase == "D"
      if @board.board[:D1] == ". "
        @board.board[:D1] = "X "
      elsif @board.board[:D2] == ". "
        @board.board[:D2] = "X "
      elsif @board.board[:D3] == ". "
        @board.board[:D3] = "X "
      elsif @board.board[:D4] == ". "
        @board.board[:D4] = "X "
      elsif @board.board[:D5] == ". "
        @board.board[:D5] = "X "
      elsif @board.board[:D6] == ". "
        @board.board[:D6] = "X "
      else
        puts "Column D is full, please select another column."
        player_turn
      end

    elsif get_input.upcase == "E"
      if @board.board[:E1] == ". "
        @board.board[:E1] = "X "
      elsif @board.board[:E2] == ". "
        @board.board[:E2] = "X "
      elsif @board.board[:E3] == ". "
        @board.board[:E3] = "X "
      elsif @board.board[:E4] == ". "
        @board.board[:E4] = "X "
      elsif @board.board[:E5] == ". "
        @board.board[:E5] = "X "
      elsif @board.board[:E6] == ". "
        @board.board[:E6] = "X "
      else
        puts "Column E is full, please select another column."
        player_turn
      end

    elsif get_input.upcase == "F"
      if @board.board[:F1] == ". "
        @board.board[:F1] = "X "
      elsif @board.board[:F2] == ". "
        @board.board[:F2] = "X "
      elsif @board.board[:F3] == ". "
        @board.board[:F3] = "X "
      elsif @board.board[:F4] == ". "
        @board.board[:F4] = "X "
      elsif @board.board[:F5] == ". "
        @board.board[:F5] = "X "
      elsif @board.board[:F6] == ". "
        @board.board[:F6] = "X "
      else
        puts "Column F is full, please select another column."
        player_turn
      end

    elsif get_input.upcase == "G"
      if @board.board[:G1] == ". "
        @board.board[:G1] = "X "
      elsif @board.board[:G2] == ". "
        @board.board[:G2] = "X "
      elsif @board.board[:G3] == ". "
        @board.board[:G3] = "X "
      elsif @board.board[:G4] == ". "
        @board.board[:G4] = "X "
      elsif @board.board[:G5] == ". "
        @board.board[:G5] = "X "
      elsif @board.board[:G6] == ". "
        @board.board[:G6] = "X "
      else
        puts "Column G is full, please select another column."
        player_turn
      end
    else
      puts "Invalid letter, Try again"
      player_turn
    end
  end
end
