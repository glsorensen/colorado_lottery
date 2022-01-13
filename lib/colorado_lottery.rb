class ColoradoLottery

  attr_reader :registered_contestants,
              :winners,
              :current_contestants



  def initialize
    @registered_contestants = Hash.new(0)
    @winners = []
    @current_contestants = Hash.new(0)
  end

  def interested_and_18(name, game)

  end

  def can_register?(name, game)

  end

end
