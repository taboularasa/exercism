#!/usr/bin/env ruby
# encoding: utf-8
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require 'minitest/focus'
require 'pry'
require_relative 'run_length_encoding'

# Test data version:
# deb225e Implement canonical dataset for scrabble-score problem (#255)

class RunLengthEncodingTest < Minitest::Test
  def test_encode_simple
    input = 'AABBBCCCC'
    output = '2A3B4C'
    assert_equal output, RunLengthEncoding.encode(input)
  end

  def test_decode_simple
    input = '2A3B4C'
    output = 'AABBBCCCC'
    assert_equal output, RunLengthEncoding.decode(input)
  end

  def test_encode_with_single_values
    input = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
    output = '12WB12W3B24WB'
    assert_equal output, RunLengthEncoding.encode(input)
  end

  def test_decode_with_single_values
    input = '12WB12W3B24WB'
    output = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
    assert_equal output, RunLengthEncoding.decode(input)
  end

  def test_decode_encode_combination
    input = 'zzz ZZ  zZ'
    output = 'zzz ZZ  zZ'
    assert_equal output,
                 RunLengthEncoding.decode(RunLengthEncoding.encode(input))
  end

  def test_encode_unicode
    input = '⏰⚽⚽⚽⭐⭐⏰'
    output = '⏰3⚽2⭐⏰'
    assert_equal output, RunLengthEncoding.encode(input)
  end

  def test_decode_unicode
    input = '⏰3⚽2⭐⏰'
    output = '⏰⚽⚽⚽⭐⭐⏰'
    assert_equal output, RunLengthEncoding.decode(input)
  end

  # Problems in exercism evolve over time, as we find better ways to ask
  # questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of the top level BookKeeping
  # module.
  #  In your file, it will look like this:
  #
  # module BookKeeping
  #   VERSION = 1 # Where the version number matches the one in the test.
  # end
  #
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html

  def test_bookkeeping
    assert_equal 2, BookKeeping::VERSION
  end
end
