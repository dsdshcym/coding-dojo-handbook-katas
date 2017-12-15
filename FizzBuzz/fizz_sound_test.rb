require 'minitest/autorun'

require_relative 'fizz_sound'

class FizzSoundTest < Minitest::Test
  def test_assert_convertable_for_number_contains_digit
    sound = FizzSound.new(3)

    assert sound.convertable?(345)
  end

  def test_refute_convertable_for_number_does_not_contain_digit
    sound = FizzSound.new(3)

    refute sound.convertable?(5)
  end

  def test_for_number_contains_digit_returns_Fizz
    sound = FizzSound.new(3)

    sound_for = sound.for(345)

    assert_equal 'Fizz', sound_for
  end

  def test_for_number_does_not_contain_digit_returns_empty
    sound = FizzSound.new(3)

    sound_for = sound.for(245)

    assert_equal '', sound_for
  end
end
