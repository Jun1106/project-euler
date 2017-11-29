
def euler001
  puts (0..999).select { |v| v % 3 == 0 || v % 5 == 0 }.reduce { |sum, n| sum + n }
 end
