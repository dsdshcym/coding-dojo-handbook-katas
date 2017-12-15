require_relative 'fizz_sound'
require_relative 'fizz_buzz_sound_chain'
require_relative 'fallback_sound'

class FizzBuzz
  def self.output(from, to)
    new.output(from, to)
  end

  def initialize
    @sounds = init_sounds
  end

  def output(from, to)
    (from..to)
      .map { |num| self.for(num) }
      .join("\n")
  end

  def for(number)
    sounds
      .detect { |sound| sound.convertable?(number) }
      .for(number)
  end

  private

  attr_reader :sounds

  def init_sounds
    @sounds = [
      init_fizz_buzz_sound_chain,
      init_fizz_sound,
      init_fallback_sound
    ]
  end

  def init_fizz_sound
    FizzSound.new(3)
  end

  def init_fizz_buzz_sound_chain
    FizzBuzzSoundChain.new(
      [3, 'Fizz'],
      [5, 'Buzz'],
      [7, 'Whizz']
    )
  end

  def init_fallback_sound
    FallbackSound.new
  end
end
