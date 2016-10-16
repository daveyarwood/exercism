#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'raindrops'

# Test data version:
# 5b5e807
class RaindropsTest < Minitest::Test
  def test_1
    assert_equal '1', Raindrops.convert(1)
  end

  def test_3
    assert_equal 'Pling', Raindrops.convert(3)
  end

  def test_5
    assert_equal 'Plang', Raindrops.convert(5)
  end

  def test_7
    assert_equal 'Plong', Raindrops.convert(7)
  end

  def test_6
    assert_equal 'Pling', Raindrops.convert(6)
  end

  def test_8
    assert_equal '8', Raindrops.convert(8)
  end

  def test_9
    assert_equal 'Pling', Raindrops.convert(9)
  end

  def test_10
    assert_equal 'Plang', Raindrops.convert(10)
  end

  def test_14
    assert_equal 'Plong', Raindrops.convert(14)
  end

  def test_15
    assert_equal 'PlingPlang', Raindrops.convert(15)
  end

  def test_21
    assert_equal 'PlingPlong', Raindrops.convert(21)
  end

  def test_25
    assert_equal 'Plang', Raindrops.convert(25)
  end

  def test_27
    assert_equal 'Pling', Raindrops.convert(27)
  end

  def test_35
    assert_equal 'PlangPlong', Raindrops.convert(35)
  end

  def test_49
    assert_equal 'Plong', Raindrops.convert(49)
  end

  def test_52
    assert_equal '52', Raindrops.convert(52)
  end

  def test_105
    assert_equal 'PlingPlangPlong', Raindrops.convert(105)
  end

  def test_3125
    assert_equal 'Plang', Raindrops.convert(3125)
  end

  # Problems in exercism evolve over time, as we find better ways to ask
  # questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of the top level BookKeeping
  # module, which may be placed near the end of your file.
  #
  # In your file, it will look like this:
  #
  # module BookKeeping
  #   VERSION = 1 # Where the version number matches the one in the test.
  # end
  #
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html

  def test_bookkeeping
    assert_equal 3, BookKeeping::VERSION
  end
end
