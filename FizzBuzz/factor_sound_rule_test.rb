require 'minitest/autorun'

require_relative 'factor_sound_rule'

class FactorSoundRuleTest < Minitest::Test
  def test_for_number_undividable_is_empty_string
    rule = FactorSoundRule.new(3, 'Fizz')

    sound = rule.for(2)

    assert_equal '', sound
  end

  def test_for_number_dividable_by_factor_is_sound
    rule = FactorSoundRule.new(3, 'Fizz')

    sound = rule.for(3)

    assert_equal 'Fizz', sound
  end
end
