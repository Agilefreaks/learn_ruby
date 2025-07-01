class Temperature
  def initialize(temp = {})
    if temp[:f]
      @in_fahrenheit = temp[:f]
      @in_celsius = Temperature.ftoc(temp[:f])
    elsif temp[:c]
      @in_fahrenheit = Temperature.ctof(temp[:c])#temp[:c] * 9.0/5.0 + 32.0
      @in_celsius = temp[:c]
    end
  end

  def self.ftoc(f)
    (f - 32.0) * 5.0/9.0
  end

  def self.ctof(c)
    c * 9.0/5.0 + 32.0
  end

  def self.from_celsius(ctmp)
    Temperature.new(:c => ctmp)
  end
  def self.from_fahrenheit(ftmp)
    Temperature.new(:f => ftmp)
  end
  def in_fahrenheit()
    @in_fahrenheit ||= 0
  end

  def in_celsius()
    @in_celsius ||= 0
  end
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end