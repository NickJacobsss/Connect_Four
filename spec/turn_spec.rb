require './lib/board'
require './lib/turn'
require 'pry'

RSpec.describe Turn do

  it "exists" do
    board = Board.new
    turn = Turn.new
    expect(turn).to be_an_instance_of(Turn)
  end

  it "places pieces in the correct spot" do
    board = Board.new
    turn = Turn.new
    get_input = "A"
    turn.piece_placement(get_input)

    expect(turn.board.board[:A1]).to eq("X ")
    expect(turn.board.board[:A2]).to eq(". ")
    # expect(turn.piece_placement(get_input)).to eq("Column A is full, please select another column.")
    # binding.pry
  end
end
