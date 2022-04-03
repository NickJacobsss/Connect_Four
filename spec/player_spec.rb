require './lib/board'
require './lib/player'
require 'pry'

RSpec.describe Player do

  it "exists" do
    board = Board.new
    player = Player.new(board)
    expect(player).to be_an_instance_of(Player)
  end

  it "places X in the correct spot" do
    board = Board.new
    player = Player.new(board)
    get_input = "A" #simulates player inputting "A"
    player.piece_placement(get_input)
    expect(player.board.board[:A1]).to eq("X ")
    expect(player.board.board[:A2]).to eq(". ")
  end
end
