puts File.open(ARGV.first).gets_to_end.chomp.split("\n\n").map { |elve|
  elve.split("\n").map { |calories|
    calories.to_i
  }.sum
}.sort.reverse[0..(ARGV.last.to_i - 1)].sum
