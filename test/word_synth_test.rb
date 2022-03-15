require 'minitest/autorun'
require_relative '../lib/word_synth'
require_relative '../lib/effects'

class EffectsTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end

  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effects(Effects.reverse)
    assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
  end

  def test_play_with_man_effects
    synth = WordSynth.new
    synth.add_effects(Effects.echo(2))
    synth.add_effects(Effects.loud(3))
#    synth.add_effects(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!')
  end
end
