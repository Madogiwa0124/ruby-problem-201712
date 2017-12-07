require 'minitest/autorun'
require './lib/transport'

class TransportTest < MiniTest::Test
  def test_transpose_3x3
    input = <<~TEXT.chomp
      1 2 3
      4 5 6
      7 8 9
    TEXT

    output = <<~TEXT.chomp
      1 4 7
      2 5 8
      3 6 9
    TEXT
    assert_equal output, Transpose.new(input).transpose
  end

  def test_transpose_3x4
    input = <<~TEXT.chomp
      1 2 3
      4 5 6
      7 8 9
      10 11 12
    TEXT

    output = <<~TEXT.chomp
      1 4 7 10
      2 5 8 11
      3 6 9 12
    TEXT
    assert_equal output, Transpose.new(input).transpose
  end
end