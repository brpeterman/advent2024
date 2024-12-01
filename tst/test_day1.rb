require_relative "../lib/day1"
require_relative "../lib/input"
require "test/unit"

class Day1Test < Test::Unit::TestCase
  def test_example1
    input = <<~EOF
      3   4
      4   3
      2   5
      1   3
      3   9
      3   3
      EOF
      .split("\n")
      .reject { |l| l.empty? }

    distance = Advent::Day1.distance(input)

    assert_equal(11, distance)
  end

  def test_part1
    input = Advent::Input.read_to_lines("day1.txt")

    distance = Advent::Day1.distance(input)

    assert_equal(1222801, distance)
  end

  def test_example2
    input = <<~EOF
      3   4
      4   3
      2   5
      1   3
      3   9
      3   3
      EOF
      .split("\n")
      .reject { |l| l.empty? }

    similarity = Advent::Day1.similarity(input)

    assert_equal(31, similarity)
  end

  def test_part2
    input = Advent::Input.read_to_lines("day1.txt")

    similarity = Advent::Day1.similarity(input)

    assert_equal(0, similarity)
  end
end