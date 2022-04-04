require './lib/game'
require 'pry'
class Winner

  attr_reader :board

  def initialize(board)
    @board = board
  end

  def column_winner #vertical scan
    a_column = @board.board[:A1], @board.board[:A2], @board.board[:A3], @board.board[:A4], @board.board[:A5], @board.board[:A6]
    b_column = @board.board[:B1], @board.board[:B2], @board.board[:B3], @board.board[:B4], @board.board[:B5], @board.board[:B6]
    c_column = @board.board[:C1], @board.board[:C2], @board.board[:C3], @board.board[:C4], @board.board[:C5], @board.board[:C6]
    d_column = @board.board[:D1], @board.board[:D2], @board.board[:D3], @board.board[:D4], @board.board[:D5], @board.board[:D6]
    e_column = @board.board[:E1], @board.board[:E2], @board.board[:E3], @board.board[:E4], @board.board[:E5], @board.board[:E6]
    f_column = @board.board[:F1], @board.board[:F2], @board.board[:F3], @board.board[:F4], @board.board[:F5], @board.board[:F6]
    g_column = @board.board[:G1], @board.board[:G2], @board.board[:G3], @board.board[:G4], @board.board[:G5], @board.board[:G6]
    if a_column.join.include?("X X X X")
      return :player
    elsif a_column.join.include?("O O O O")
      return :computer
    elsif b_column.join.include?("X X X X")
      return :player
    elsif b_column.join.include?("O O O O")
      return :computer
    elsif c_column.join.include?("X X X X")
      return :player
    elsif c_column.join.include?("O O O O")
      return :computer
    elsif d_column.join.include?("X X X X")
      return :player
    elsif d_column.join.include?("O O O O")
      return :computer
    elsif e_column.join.include?("X X X X")
      return :player
    elsif e_column.join.include?("O O O O")
      return :computer
    elsif f_column.join.include?("X X X X")
      return :player
    elsif f_column.join.include?("O O O O")
      return :computer
    elsif g_column.join.include?("X X X X")
      return :player
    elsif g_column.join.include?("O O O O")
      return :computer
    end
  end

  def row_winner
    one_row = @board.board[:A1], @board.board[:B1], @board.board[:C1], @board.board[:D1], @board.board[:E1], @board.board[:F1], @board.board[:G1]
    two_row = @board.board[:A2], @board.board[:B2], @board.board[:C2], @board.board[:D2], @board.board[:E2], @board.board[:F2], @board.board[:G2]
    three_row = @board.board[:A3], @board.board[:B3], @board.board[:C3], @board.board[:D3], @board.board[:E3], @board.board[:F3], @board.board[:G3]
    four_row = @board.board[:A4], @board.board[:B4], @board.board[:C4], @board.board[:D4], @board.board[:E4], @board.board[:F4], @board.board[:G4]
    five_row = @board.board[:A5], @board.board[:B5], @board.board[:C5], @board.board[:D5], @board.board[:E5], @board.board[:F5], @board.board[:G5]
    six_row = @board.board[:A6], @board.board[:B6], @board.board[:C6], @board.board[:D6], @board.board[:E6], @board.board[:F6], @board.board[:G6]
    if one_row.join.include?("X X X X")
      return :player
    elsif one_row.join.include?("O O O O")
      return :computer
    elsif two_row.join.include?("X X X X")
      return :player
    elsif two_row.join.include?("O O O O")
      return :computer
    elsif three_row.join.include?("X X X X")
      return :player
    elsif three_row.join.include?("O O O O")
      return :computer
    elsif four_row.join.include?("X X X X")
      return :player
    elsif four_row.join.include?("O O O O")
      return :computer
    elsif five_row.join.include?("X X X X")
      return :player
    elsif five_row.join.include?("O O O O")
      return :computer
    elsif six_row.join.include?("X X X X")
      return :player
    elsif six_row.join.include?("O O O O")
      return :computer
    end
  end

  def diagonal_winner
    one_diagonal = @board.board[:A1], @board.board[:B2], @board.board[:C3], @board.board[:D4], @board.board[:E5], @board.board[:F6]
    two_diagonal = @board.board[:B1], @board.board[:C2], @board.board[:D3], @board.board[:E4], @board.board[:F5], @board.board[:G6]
    three_diagonal = @board.board[:C1],@board.board[:D2], @board.board[:E3], @board.board[:F4] , @board.board[:G5]
    four_diagonal = @board.board[:D1],@board.board[:E2], @board.board[:F3], @board.board[:G4]
    five_diagonal = @board.board[:D1],@board.board[:C2], @board.board[:B3], @board.board[:A4]
    six_diagonal = @board.board[:E1],@board.board[:D2], @board.board[:C3], @board.board[:B4] , @board.board[:A5]
    seven_diagonal = @board.board[:F1],@board.board[:E2], @board.board[:D3], @board.board[:C4] , @board.board[:B5], @board.board[:A6]
    eight_diagonal = @board.board[:G1],@board.board[:F2], @board.board[:E3], @board.board[:D4] , @board.board[:C5], @board.board[:B6]
    nine_diagonal = @board.board[:A2],@board.board[:B3], @board.board[:C4], @board.board[:D5] , @board.board[:E6]
    ten_diagonal = @board.board[:A3],@board.board[:B4], @board.board[:C5], @board.board[:D6]
    eleven_diagonal = @board.board[:G2],@board.board[:F3], @board.board[:E4], @board.board[:D5] , @board.board[:C6]
    twelve_diagonal = @board.board[:G3],@board.board[:F4], @board.board[:E5], @board.board[:D6]
    if one_diagonal.join.include?("X X X X")
      return :player
    elsif one_diagonal.join.include?("O O O O")
      return :computer
    elsif two_diagonal.join.include?("X X X X")
      return :player
    elsif two_diagonal.join.include?("O O O O")
      return :computer
    elsif three_diagonal.join.include?("X X X X")
      return :player
    elsif three_diagonal.join.include?("O O O O")
      return :computer
    elsif four_diagonal.join.include?("X X X X")
      return :player
    elsif four_diagonal.join.include?("O O O O")
      return :computer
    elsif five_diagonal.join.include?("X X X X")
      return :player
    elsif five_diagonal.join.include?("O O O O")
      return :computer
    elsif six_diagonal.join.include?("X X X X")
      return :player
    elsif six_diagonal.join.include?("O O O O")
      return :computer
    elsif seven_diagonal.join.include?("X X X X")
      return :player
    elsif seven_diagonal.join.include?("O O O O")
      return :computer
    elsif eight_diagonal.join.include?("X X X X")
      return :player
    elsif eight_diagonal.join.include?("O O O O")
      return :computer
    elsif nine_diagonal.join.include?("X X X X")
      return :player
    elsif nine_diagonal.join.include?("O O O O")
      return :computer
    elsif ten_diagonal.join.include?("X X X X")
      return :player
    elsif ten_diagonal.join.include?("O O O O")
      return :computer
    elsif eleven_diagonal.join.include?("X X X X")
      return :player
    elsif eleven_diagonal.join.include?("O O O O")
      return :computer
    elsif twelve_diagonal.join.include?("X X X X")
      return :player
    elsif twelve_diagonal.join.include?("O O O O")
      return :computer
    end
  end
end
