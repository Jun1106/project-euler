#! ruby -E Windows-31J:utf-8

def euler022
  File.open('names.txt').read.split(',').map! { |v| v.delete('"') }.sort { |a, b| a <=> b }.map.with_index { |v, i| v.unpack('c*').map! { |s| s - 64 }.reduce { |sum, n| sum += n } * (i + 1) }.reduce { |sum, n| sum += n }
end
