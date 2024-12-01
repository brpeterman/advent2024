module Advent
  class Day1
    def self.distance(input_list)
      list1, list2 = input_list.map { |line| line.split(/\s+/) }
        .transpose
        .map { |list| list.map(&:to_i).sort }
      list1.zip(list2)
        .map { |pair| (pair[0] - pair[1]).abs }
        .reduce(0, :+)
    end

    def self.similarity(input_list)
      list1, list2 = input_list.map { |line| line.split(/\s+/) }
        .transpose
      counts = list2.reduce(Hash.new(0)) { |hash, num| hash[num.to_i] += 1; hash }
      list1.reduce(0) { |out, num| out + num.to_i * counts[num.to_i] }
    end
  end
end
