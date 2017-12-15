require 'minitest/autorun'

require_relative 'fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_output_from_1_to_20_is_correct
    assert_equal expected_1_to_20, FizzBuzz.output(1, 20)
  end

  def test_sound_for_1_is_1
    assert_equal '1', FizzBuzz.for(1)
  end

  def test_sound_for_2_is_2
    assert_equal '2', FizzBuzz.for(2)
  end

  def test_sound_for_3_is_Fizz
    assert_equal 'Fizz', FizzBuzz.for(3)
  end

  def test_sound_for_4_is_4
    assert_equal '4', FizzBuzz.for(4)
  end

  def test_sound_for_5_is_Buzz
    assert_equal 'Buzz', FizzBuzz.for(5)
  end

  def test_sound_for_6_is_Fizz
    assert_equal 'Fizz', FizzBuzz.for(6)
  end

  def test_sound_for_7_is_7
    assert_equal '7', FizzBuzz.for(7)
  end

  def test_sound_for_9_is_Fizz
    assert_equal 'Fizz', FizzBuzz.for(9)
  end

  def test_sound_for_10_is_Buzz
    assert_equal 'Buzz', FizzBuzz.for(10)
  end

  def test_sound_for_11_is_11
    assert_equal '11', FizzBuzz.for(11)
  end

  def test_sound_for_15_is_FizzBuzz
    assert_equal 'FizzBuzz', FizzBuzz.for(15)
  end

  private

  def expected_1_to_20
    expected =
      <<~EXPECTED
        1
        2
        Fizz
        4
        Buzz
        Fizz
        7
        8
        Fizz
        Buzz
        11
        Fizz
        13
        14
        FizzBuzz
        16
        17
        Fizz
        19
        Buzz
      EXPECTED

    expected.strip
  end
end
