class Vampire

  attr_reader :name, :pet, :thirstiness

  def initialize(name, pet="bat")
    @name = name
    @pet = pet
    @thirstiness = true
  end

  def thirsty?
    @thirstiness
  end

  def drink
    @thirstiness = false
  end

end