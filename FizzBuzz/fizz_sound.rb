class FizzSound
  def initialize(digit)
    @digit = digit.to_s
  end

  def convertable?(number)
    number.to_s.include?(digit)
  end

  def for(number)
    if convertable?(number)
      'Fizz'
    else
      ''
    end
  end

  private

  attr_reader :digit
end
