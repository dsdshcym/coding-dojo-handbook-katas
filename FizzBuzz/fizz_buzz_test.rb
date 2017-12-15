require 'minitest/autorun'

require_relative 'fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_output_from_1_to_20_is_correct
    assert_equal expected_1_to_20, FizzBuzz.output(1, 20)
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
        Whizz
        8
        Fizz
        Buzz
        11
        Fizz
        13
        Whizz
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
