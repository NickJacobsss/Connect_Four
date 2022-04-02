require './lib/board'
require './lib/turn'
require './lib/game'
require './lib/computer'
require 'pry'

RSpec.describe Turn do

  it "exists" do
    board = Board.new
    computer = Computer.new
    expect(computer).to be_an_instance_of(Computer)
  end

  it "places pieces in the correct spot" do
    board = Board.new
    computer = Computer.new
    # computer_input = "D"
    computer_input = ["A","B","C","D","E","F","G"].sample
    computer.piece_placement(computer_input)
    computer.piece_placement(computer_input)
    computer.piece_placement(computer_input)
    computer.board.make_board


    # expect(computer.board.board[:A1]).to eq(". ")
    # expect(computer.board.board[:A2]).to eq(". ")
    # expect(computer.board.board[:A6]).to eq(". ")
  end
end
