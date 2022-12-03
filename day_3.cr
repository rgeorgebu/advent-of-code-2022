puts File.open(ARGV.first)
  .gets_to_end
  .chomp
  .split("\n")
  # .map { |rs| [rs[..(rs.size // 2 - 1)], rs[(rs.size // 2)..]] }
  .in_groups_of(3, "")
  .map { |group| group.map { |e| e.split("").to_set } }
  .map { |gos| gos.reduce { |acc, s| acc & s } }
  .map { |s| s.to_a.join }
  .map { |cmn| cmn.codepoints.sum < 97 ? cmn.codepoints.sum - 38 : cmn.codepoints.sum - 96 }
  .sum
