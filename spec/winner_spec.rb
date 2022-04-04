require './lib/board'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/winner'
require 'pry'

RSpec.describe Winner do

  it "exists" do
    board = Board.new
    winner = Winner.new(board)
    expect(winner).to be_an_instance_of(Winner)
  end

  it 'determines vertical winner for player' do
    board = Board.new
    winner = Winner.new(board)
    player = Player.new(board)
    player.piece_placement("A") # simulates player choosing column A
    player.piece_placement("A")
    player.piece_placement("A")
    player.piece_placement("A")
    expect(winner.column_winner).to eq(:player)
  end

  it 'determines vertical winner for computer' do
    board = Board.new
    winner = Winner.new(board)
    computer = Computer.new(board)
    computer.piece_placement("C") # simulates player choosing column C
    computer.piece_placement("C")
    computer.piece_placement("C")
    computer.piece_placement("C")
    expect(winner.column_winner).to eq(:computer)
  end

  it 'determines horizontal winner for player' do
    board = Board.new
    winner = Winner.new(board)
    player = Player.new(board)
    player.piece_placement("A")
    player.piece_placement("B")
    player.piece_placement("C")
    player.piece_placement("D")
    expect(winner.row_winner).to eq(:player)
  end

  it 'determines horizontal winner for computer' do
    board = Board.new
    winner = Winner.new(board)
    computer = Computer.new(board)
    computer.piece_placement("A")
    computer.piece_placement("B")
    computer.piece_placement("C")
    computer.piece_placement("D")
    expect(winner.row_winner).to eq(:computer)
  end

  it 'determines diagonal winner for computer' do
    board = Board.new
    winner = Winner.new(board)
    computer = Computer.new(board)
    player = Player.new(board)
    computer.piece_placement("A")
    player.piece_placement("B")
    computer.piece_placement("B")
    player.piece_placement("C")
    player.piece_placement("C")
    computer.piece_placement("C")
    player.piece_placement("D")
    player.piece_placement("D")
    player.piece_placement("D")
    computer.piece_placement("D")
    expect(winner.diagonal_winner).to eq(:computer)
  end

  it 'determines diagonal winner for player' do
    board = Board.new
    winner = Winner.new(board)
    computer = Computer.new(board)
    player = Player.new(board)
    player.piece_placement("G")
    computer.piece_placement("F")
    player.piece_placement("F")
    computer.piece_placement("E")
    computer.piece_placement("E")
    player.piece_placement("E")
    computer.piece_placement("D")
    computer.piece_placement("D")
    computer.piece_placement("D")
    player.piece_placement("D")
    expect(winner.diagonal_winner).to eq(:player)
  end


end
