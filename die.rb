class Die

  def initialize
  	roll
  end

  def roll
    @numberShowing = 1 + rand(6)

  end

  def showing
    return @numberShowing
  end

end