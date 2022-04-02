require './lib/board'
require './lib/player'
require './lib/game'
require './lib/computer'
require 'pry'

RSpec.describe Computer do

  it "exists" do
    board = Board.new
    computer = Computer.new
    expect(computer).to be_an_instance_of(Computer)
  end

  it "places pieces in the correct spot" do
    board = Board.new
    computer = Computer.new
    expect(computer.board.board.values.include?("O ")).to eq(false)
    computer.computer_turn
    # computer.board.make_board
    expect(computer.board.board.values.include?("O ")).to eq(true)
  end
end
