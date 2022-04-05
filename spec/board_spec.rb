require './lib/board'
require './lib/player'
require './lib/computer'

RSpec.describe Board do

  it "exists" do
    board = Board.new
    expect(board).to be_an_instance_of(Board)
  end

  it "makes blank version of board" do
    board = Board.new
    printed_board = {
      A6: ". ", B6: ". ", C6: ". ", D6: ". ", E6: ". ", F6: ". ", G6: ". ",
      A5: ". ", B5: ". ", C5: ". ", D5: ". ", E5: ". ", F5: ". ", G5: ". ",
      A4: ". ", B4: ". ", C4: ". ", D4: ". ", E4: ". ", F4: ". ", G4: ". ",
      A3: ". ", B3: ". ", C3: ". ", D3: ". ", E3: ". ", F3: ". ", G3: ". ",
      A2: ". ", B2: ". ", C2: ". ", D2: ". ", E2: ". ", F2: ". ", G2: ". ",
      A1: ". ", B1: ". ", C1: ". ", D1: ". ", E1: ". ", F1: ". ", G1: ". "
    }
    expect(board.board).to eq(printed_board)
  end

    it "prints board after player places one piece" do
      board = Board.new
      player = Player.new(board)
      get_input = "A"
      player.piece_placement(get_input)
      printed_board = {
        A6: ". ", B6: ". ", C6: ". ", D6: ". ", E6: ". ", F6: ". ", G6: ". ",
        A5: ". ", B5: ". ", C5: ". ", D5: ". ", E5: ". ", F5: ". ", G5: ". ",
        A4: ". ", B4: ". ", C4: ". ", D4: ". ", E4: ". ", F4: ". ", G4: ". ",
        A3: ". ", B3: ". ", C3: ". ", D3: ". ", E3: ". ", F3: ". ", G3: ". ",
        A2: ". ", B2: ". ", C2: ". ", D2: ". ", E2: ". ", F2: ". ", G2: ". ",
        A1: "X ", B1: ". ", C1: ". ", D1: ". ", E1: ". ", F1: ". ", G1: ". "
      }
      expect(board.board).to eq(printed_board)
    end

    it "prints board after computer places one piece" do
      board = Board.new
      computer = Computer.new(board)
      computer_input = "A"
      computer.piece_placement(computer_input)
      printed_board = printed_board = {
        A6: ". ", B6: ". ", C6: ". ", D6: ". ", E6: ". ", F6: ". ", G6: ". ",
        A5: ". ", B5: ". ", C5: ". ", D5: ". ", E5: ". ", F5: ". ", G5: ". ",
        A4: ". ", B4: ". ", C4: ". ", D4: ". ", E4: ". ", F4: ". ", G4: ". ",
        A3: ". ", B3: ". ", C3: ". ", D3: ". ", E3: ". ", F3: ". ", G3: ". ",
        A2: ". ", B2: ". ", C2: ". ", D2: ". ", E2: ". ", F2: ". ", G2: ". ",
        A1: "O ", B1: ". ", C1: ". ", D1: ". ", E1: ". ", F1: ". ", G1: ". "
      }
      expect(board.board).to eq(printed_board)
    end

end
