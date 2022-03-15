require 'minitest/autorun'
require_relative '../lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    effects = Effects.reverse
    assert_equal 'ybuR si !nuf', effects.call('Ruby is fun!')
  end

  def test_echo
    effects = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effects.call('Ruby is fun!')

    effects = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effects.call('Ruby is fun!')
  end

  def test_loud
    effects = Effects.loud(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effects.call('Ruby is fun!')

    effects = Effects.loud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!!', effects.call('Ruby is fun!')
  end
end
