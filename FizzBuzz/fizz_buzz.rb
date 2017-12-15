class FizzBuzz
  def self.output(from, to)
    (from..to)
      .map { |num| self.for(num) }
      .join("\n")
  end

  def self.for(number)
    if number.modulo(3).zero? && number.modulo(5).zero?
      'FizzBuzz'
    elsif number.modulo(3).zero?
      'Fizz'
    elsif number.modulo(5).zero?
      'Buzz'
    else
      number.to_s
    end
  end
end
