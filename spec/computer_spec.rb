require './lib/board'
require './lib/player'
require './lib/game'
require './lib/computer'
require 'pry'

RSpec.describe Computer do

  it "exists" do
    board = Board.new
    computer = Computer.new(board)
    expect(computer).to be_an_instance_of(Computer)
  end

  it "picks random input & places O in the correct spot" do
    board = Board.new
    computer = Computer.new(board)
    expect(computer.board.board.values.include?("O ")).to eq(false)
    computer.computer_turn
    # computer.board.make_board
    expect(computer.board.board.values.include?("O ")).to eq(true)
  end
end

# expect only 1 O after computer turn.
