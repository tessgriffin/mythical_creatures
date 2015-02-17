class Hobbit

  attr_reader :name, :disposition, :age, :is_adult

  def initialize(name, disposition="homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
  end

  def celebrate_birthday
    @age = @age + 1

    if @age > 32
      @is_adult = true
    else
      @is_adult = false
    end
    
  end

  def adult?
    @is_adult
  end

end