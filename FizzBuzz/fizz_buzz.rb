require_relative 'fizz_buzz_sound'

class FizzBuzz
  def self.output(from, to)
    new.output(from, to)
  end

  def initialize
    @sound = init_sound
  end

  def output(from, to)
    (from..to)
      .map { |num| self.for(num) }
      .join("\n")
  end

  def for(number)
    if sound.convertable?(number)
      sound.for(number)
    else
      number.to_s
    end
  end

  private

  attr_reader :sound

  def init_sound
    FizzBuzzSound.new(
      [3, 'Fizz'],
      [5, 'Buzz'],
      [7, 'Whizz']
    )
  end
end
