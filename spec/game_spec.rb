require './lib/board'
require './lib/player'
require './lib/game'
require './lib/computer'
require 'pry'

RSpec.describe Game do

  it "exists" do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end



end
