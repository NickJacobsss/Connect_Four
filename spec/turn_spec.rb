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
    board = Board.new.board
    turn = Turn.new(board)
    # binding.pry
    @player_selection = "A"
    # turn.player_column_selection
    turn.column_a_selected
    expect(board[:A1]).to eq("X ")
  end
end
