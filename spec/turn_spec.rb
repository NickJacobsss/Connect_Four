require './lib/board'
require './lib/turn'
require 'pry'

RSpec.describe Turn do

  xit "exists" do
    board = Board.new.board
    turn = Turn.new(board)
    expect(turn).to be_an_instance_of(Turn)
  end

  it "test player column selection" do
    board = Board.new
    turn = Turn.new
    # turn.start_turn
    turn.piece_placement("A")

    expect(turn.board.board[:A1]).to eq("X ")

    # binding.pry
    # @player_selection = "A"
    # turn.piece_placement
    # turn.column_a_selected
    # expect(board[:A1]).to eq("X ")
  end
end
