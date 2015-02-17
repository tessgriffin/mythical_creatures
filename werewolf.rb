class Werewolf

  attr_reader :name, :location, :is_human, :is_werewolf

  def initialize(name, location="London")

    @name = name
    @location = location
    @is_human = true
    @is_werewolf = false

  end

  def human?
    @is_human
  end

  def change!
    if @is_human == true
      @is_werewolf = true
      @is_human = false
    elsif @is_werewolf == true
      @is_human = true
      @is_werewolf = false
    end
  end

  def werewolf?
    @is_werewolf
  end

end