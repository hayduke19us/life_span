module Life
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
end
