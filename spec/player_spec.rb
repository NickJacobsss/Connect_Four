require './lib/board'
require './lib/player'
require 'pry'

RSpec.describe Player do

  it "exists" do
    board = Board.new
    player = Player.new
    expect(player).to be_an_instance_of(Player)
  end

  it "places pieces in the correct spot" do
    board = Board.new
    player = Player.new
    player.player_turn
    expect(player.board.board[:A1]).to eq("X ")
    expect(player.board.board[:A2]).to eq(". ")
  end
end
