class FallbackSound
  def convertable?(_number)
    true
  end

  def for(number)
    number.to_s
  end
end
