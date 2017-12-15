class FactorSoundRule < Struct.new(:factor, :sound)
  def sound_for(number)
    if convertable?(number)
      sound
    else
      ''
    end
  end

  def convertable?(number)
    dividable?(number, factor)
  end

  private

  def dividable?(number, factor)
    number.modulo(factor).zero?
  end
end
