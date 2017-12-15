class FizzBuzzSound
  def initialize(*factor_sound_rules)
    @factor_sound_rules = *factor_sound_rules
  end

  def convertable?(number)
    factors.any? { |factor| dividable?(number, factor) }
  end

  def for(number)
    factor_sound_rules.reduce('') do |result, rule|
      factor = rule[0]
      sound = rule[1]

      if dividable?(number, factor)
        result + sound
      else
        result
      end
    end
  end

  private

  attr_reader :factor_sound_rules

  def dividable?(number, factor)
    number.modulo(factor).zero?
  end

  def factors
    factor_sound_rules.map { |rule| rule[0] }
  end
end
