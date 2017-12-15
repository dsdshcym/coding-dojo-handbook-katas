require_relative 'fizz_buzz_sound'
require_relative 'fallback_sound'

class FizzBuzz
  def self.output(from, to)
    new.output(from, to)
  end

  def initialize
    @fizz_buzz_sound = init_fizz_buzz_sound
    @fallback_sound = init_fallback_sound
  end

  def output(from, to)
    (from..to)
      .map { |num| self.for(num) }
      .join("\n")
  end

  def for(number)
    if fizz_buzz_sound.convertable?(number)
      fizz_buzz_sound.for(number)
    else
      fallback_sound.for(number)
    end
  end

  private

  attr_reader :fizz_buzz_sound, :fallback_sound

  def init_fizz_buzz_sound
    FizzBuzzSound.new(
      [3, 'Fizz'],
      [5, 'Buzz'],
      [7, 'Whizz']
    )
  end

  def init_fallback_sound
    FallbackSound.new
  end
end
