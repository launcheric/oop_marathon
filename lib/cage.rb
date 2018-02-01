class Cage
  attr_accessor :animal
  def initialize
    @animal = nil
  end

  def empty?
    if animal == nil
      return true
    else
      return false
    end
  end

end
