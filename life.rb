class Life
  attr_reader :age, :name, :span

  def initialize(args)
    @age = args[:age]
    @name = args[:name]
    @span = args[:span]
  end
end

class Joy
  attr_reader :days
  def initialize(days)
    @days = days
  end

  def yearly
    weeks = 365/7
    days * weeks     
  end  
end

module Utilities
  def self.years_to_minutes(years)
    years * 365 * 24 * 60
  end

  def self.months_to_minutes(months)
    months * 30 * 24 * 60
  end
end



class Span
  extend Utilities
  attr_reader :sex, :drink, :smoke, :hanky
  def initialize(args)
    @sex   = args[:sex]
    @drink = args.fetch(:drink, false)
    @smoke = args.fetch(:smoke, false)
    @hanky = args.fetch(:hanky, true)
  end
  
  def boy?
    sex == 'male' ? Utilities.years_to_minutes(75) : 
                    Utilities.years_to_minutes(81)
  end

  def habits
    life = []
    drink == true ? life << Utilities.months_to_minutes(-6) : 0
    smoke == true ? life << Utilities.years_to_minutes(-11) : 0
    hanky == true ? life << Utilities.years_to_minutes(2) : life << -2
    boy? - life.inject {|x, y| x.to_i + y.to_i}
  end
end


good = Span.new(sex: 'male', 
                drink: true, 
                smoke: true, 
                hanky: true).habits
good = Span.new(sex: 'male', drink: true, smoke: true, hanky: true).habits
puts good
bad = Span.new(sex: 'male').habits
puts bad

