class Zoo
  attr_reader :cages, :employees
  def initialize(name, season_opening_date, season_closing_date)
    i = 0
    @cages = []
    while (i < 10) do
      i += 1
      @cages << Cage.new
    end
    @employees = []
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
  end

  def add_employee(name)
    @employees << name
  end
  def open?(date)
    if date >= @season_opening_date && date <= @season_closing_date
      return true
    else
      false
    end
  end


  def add_animal(animal_given)
    cages.each do |cage|
      if cage.empty?
        cage.animal = animal_given
        return
      end
    end
    return "Your zoo is already at capacity!"
  end
  def visit
    greeting = ""
    employees.each do |employee|
      greeting+="#{employee.greet}\n"
    end

    cages.each do |cage|
      if !cage.empty?
        greeting += "#{cage.animal.speak}\n"
      end 
    end
    return greeting
  end


end
