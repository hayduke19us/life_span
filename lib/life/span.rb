module Life
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
      sex == 'male' ? 75 : 81
    end

    def habits
      life = Array.new
      drink == true ? life << -0.5 : 0
      smoke == true ? life << -11 : 0
      hanky == true ? life << 2 : -2
      boy? + life.inject {|x, y| x.to_i + y.to_i}
    end
  end
end
