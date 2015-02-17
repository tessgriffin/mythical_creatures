class Dragon

  attr_reader :name, :color, :rider, :hunger, :food_consumed

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger = true
    @food_consumed = 0
  end

  def hungry?
    @hunger
  end

  def eat
    @food_consumed = @food_consumed + 1
    if @food_consumed > 2
      @hunger = false
    else
      @hunger = true
    end
  end

end