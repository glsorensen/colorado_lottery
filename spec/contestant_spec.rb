require "./lib/contestant"
require "./lib/game"
require 'pry'

RSpec.describe  Contestant do
  before(:each) do
    @alexander = Contestant.new({first_name: 'Alexander',
                                last_name: 'Aigiades',
                                age: 28,
                                state_of_residence: 'CO',
                                spending_money: 10})
  end

  it 'exists' do

    expect(@alexander).to be_a(Contestant)
  end

  it 'it has a name' do

    expect(@alexander.full_name).to eq("Alexander Aigiades")
  end

  it 'it has an age' do

    expect(@alexander.age).to eq(28)
  end

  it 'it has a state of state_of_residence' do

    expect(@alexander.state_of_residence).to eq('CO')
  end

  it 'has spending_money' do

    expect(@alexander.spending_money).to eq(10)
  end

  it 'has game_interests' do

    expect(@alexander.game_interests).to eq([])
  end

  it 'can add interests' do
    @alexander.add_game_interest('Mega Millions')
    @alexander.add_game_interest('Pick 4')

    expect(@alexander.game_interests).to eq(["Mega Millions", "Pick 4"])
  end
end
