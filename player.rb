class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3  # Each player starts with 3 lives
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end
end
