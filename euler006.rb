#! ruby -E Windows-31J:utf-8

def euler006
  x = (1..100).reduce { |sum, n| sum + n }
  x *= x

  y = 0
  (1..100).each do |v|
    y += v * v
  end

  p "#{x} - #{y} = #{x - y}"
end
