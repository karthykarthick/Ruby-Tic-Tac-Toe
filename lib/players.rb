class Player
  attr_reader :player_name, :player_symbol
  def initialize(name, symbol)
    @player_name = name
    @player_symbol = symbol
  end
end