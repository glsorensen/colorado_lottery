require "./lib/contestant"
require "./lib/game"
require 'pry'

RSpec.describe  Game do
  before(:each) do
    @pick_4 = Game.new('Pick 4', 2)
    @mega_millions = Game.new('Mega Millions', 5, true)

  end

  it 'exists' do

    expect(@pick_4).to be_a(Game)
  end

  it 'has a name' do

    expect(@mega_millions.name).to eq('Mega Millions')
  end

  it 'has a cost' do

    expect(@mega_millions.cost).to eq(5)
  end

  it 'is a national drawing?' do

    expect(@mega_millions.national_drawing?).to eq(true)
  end

  it 'is a national drawing?' do

    expect(@pick_4.national_drawing?).to eq(false)
  end
end
