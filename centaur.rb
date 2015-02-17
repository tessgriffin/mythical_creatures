class Centaur

  attr_reader :name, :breed, :actions, :is_cranky, :standing, :laying, :answer

  def initialize(name, breed)
    @name = name
    @breed = breed
    @actions = 0
    @is_cranky = false
    @standing = true
    @laying = false
    @answer = "NO!"
  end

  def shoot
    @actions = @actions + 1
    if laying?
      "NO!"
    elsif @actions > 2
      @is_cranky = true
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @actions = @actions + 1
    if laying?
      "NO!"
    elsif @actions > 2
      @is_cranky = true
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @is_cranky
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def sleep
#    standing? ? "NO!" : @actions = 0
    if standing?
      "NO!"
    else
      @actions = 0
      @is_cranky = false
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

end

