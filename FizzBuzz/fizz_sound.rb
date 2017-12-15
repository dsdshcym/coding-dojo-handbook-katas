require_relative 'number_sound_converter'

class FizzSound < NumberSoundConverter
  def initialize(digit)
    super('Fizz') do |number|
      number.to_s.include?(digit.to_s)
    end
  end
end
