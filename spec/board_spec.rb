require './lib/board'

RSpec.describe Board do

  it "exists" do
    board = Board.new
    expect(board).to be_an_instance_of(Board)
  end

  it "tests make_board" do
    board = Board.new
    board.make_board
  end
  
end
