class Computer
attr_reader :board

  def initialize(board)
    @board = board
  end

  def computer_turn
    computer_input = ["A","B","C","D","E","F","G"].sample
    piece_placement(computer_input)

  end

  def piece_placement(computer_input)
    if computer_input == "A"
      # binding.pry
      if @board.board[:A1] == ". "
        @board.board[:A1] = "O "
      elsif @board.board[:A2] == ". "
        @board.board[:A2] = "O "
      elsif @board.board[:A3] == ". "
        @board.board[:A3] = "O "
      elsif @board.board[:A4] == ". "
        @board.board[:A4] = "O "
      elsif @board.board[:A5] == ". "
        @board.board[:A5] = "O "
      elsif @board.board[:A6] == ". "
        @board.board[:A6] = "O "
      else
        computer_turn
      end

    elsif computer_input == "B"
      if @board.board[:B1] == ". "
        @board.board[:B1] = "O "
      elsif @board.board[:B2] == ". "
        @board.board[:B2] = "O "
      elsif @board.board[:B3] == ". "
        @board.board[:B3] = "O "
      elsif @board.board[:B4] == ". "
        @board.board[:B4] = "O "
      elsif @board.board[:B5] == ". "
        @board.board[:B5] = "O "
      elsif @board.board[:B6] == ". "
        @board.board[:B6] = "O "
      else
        computer_turn
      end

    elsif computer_input == "C"
      if @board.board[:C1] == ". "
        @board.board[:C1] = "O "
      elsif @board.board[:C2] == ". "
        @board.board[:C2] = "O "
      elsif @board.board[:C3] == ". "
        @board.board[:C3] = "O "
      elsif @board.board[:C4] == ". "
        @board.board[:C4] = "O "
      elsif @board.board[:C5] == ". "
        @board.board[:C5] = "O "
      elsif @board.board[:C6] == ". "
        @board.board[:C6] = "O "
      else
        computer_turn
      end

    elsif computer_input == "D"
      if @board.board[:D1] == ". "
        @board.board[:D1] = "O "
      elsif @board.board[:D2] == ". "
        @board.board[:D2] = "O "
      elsif @board.board[:D3] == ". "
        @board.board[:D3] = "O "
      elsif @board.board[:D4] == ". "
        @board.board[:D4] = "O "
      elsif @board.board[:D5] == ". "
        @board.board[:D5] = "O "
      elsif @board.board[:D6] == ". "
        @board.board[:D6] = "O "
      else
        computer_turn
      end

    elsif computer_input == "E"
      if @board.board[:E1] == ". "
        @board.board[:E1] = "O "
      elsif @board.board[:E2] == ". "
        @board.board[:E2] = "O "
      elsif @board.board[:E3] == ". "
        @board.board[:E3] = "O "
      elsif @board.board[:E4] == ". "
        @board.board[:E4] = "O "
      elsif @board.board[:E5] == ". "
        @board.board[:E5] = "O "
      elsif @board.board[:E6] == ". "
        @board.board[:E6] = "O "
      else
        computer_turn
      end

    elsif computer_input == "F"
      if @board.board[:F1] == ". "
        @board.board[:F1] = "O "
      elsif @board.board[:F2] == ". "
        @board.board[:F2] = "O "
      elsif @board.board[:F3] == ". "
        @board.board[:F3] = "O "
      elsif @board.board[:F4] == ". "
        @board.board[:F4] = "O "
      elsif @board.board[:F5] == ". "
        @board.board[:F5] = "O "
      elsif @board.board[:F6] == ". "
        @board.board[:F6] = "O "
      else
        computer_turn
      end

    elsif computer_input == "G"
      if @board.board[:G1] == ". "
        @board.board[:G1] = "O "
      elsif @board.board[:G2] == ". "
        @board.board[:G2] = "O "
      elsif @board.board[:G3] == ". "
        @board.board[:G3] = "O "
      elsif @board.board[:G4] == ". "
        @board.board[:G4] = "O "
      elsif @board.board[:G5] == ". "
        @board.board[:G5] = "O "
      elsif @board.board[:G6] == ". "
        @board.board[:G6] = "O "
      else
        computer_turn
      end
    end
  end


end
