require './lib/turn.rb'

class Board
attr_reader :board

  def initialize
    @board = {
      A6: ". ", B6: ". ", C6: ". ", D6: ". ", E6: ". ", F6: ". ", G6: ". ",
      A5: ". ", B5: ". ", C5: ". ", D5: ". ", E5: ". ", F5: ". ", G5: ". ",
      A4: ". ", B4: ". ", C4: ". ", D4: ". ", E4: ". ", F4: ". ", G4: ". ",
      A3: ". ", B3: ". ", C3: ". ", D3: ". ", E3: ". ", F3: ". ", G3: ". ",
      A2: ". ", B2: ". ", C2: ". ", D2: ". ", E2: ". ", F2: ". ", G2: ". ",
      A1: ". ", B1: ". ", C1: ". ", D1: ". ", E1: ". ", F1: ". ", G1: ". "
    }
  end

  def make_board
    rows = ["1","2","3","4","5","6"]
    puts
    puts "A B C D E F G"
    rows.each do |row|
      current_row = {}
      @board.each do |key, val|
        if key.to_s.include?row
          current_row[key] = val
        end
      end
      puts current_row.values.join
    end
  end

  def intro
      puts ""
      puts "Welcome to Connect Four!"
      puts "To win: Line up 4 Pieces in any Direction!"
      puts "Press Enter to Begin:"
      puts "------------------------------------------"
      gets.chomp
      make_board
      start_turn
  end
end
