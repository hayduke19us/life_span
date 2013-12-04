module Life
  class Subject
    attr_reader :age, :name, :sex, :span

    def initialize(args)
      @age = args[:age]
      @name = args[:name]
      @sex = args[:sex]
      @span = Life::Span.new(sex: sex).habits
    end

    def message
     "yor life span is #{span}"
    end  
  end
end

