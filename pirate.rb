class Pirate

  attr_reader :name, :job, :cursed, :heinous_act

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = false
    @heinous_act = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @heinous_act = @heinous_act + 1
    if @heinous_act > 2
      @cursed = true
    else
      @cursed = false
    end
  end

end