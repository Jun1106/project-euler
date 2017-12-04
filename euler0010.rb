#! ruby -E Windows-31J:utf-8

def Primenumbers?(num)
  return false if num.abs <= 1

  return true if num.abs == 2

  return false if num.even?

  (2..Math.sqrt(num.abs)).each do |v|
    next if v.even?

    return false if num % v == 0
  end

  true
  end

def euler010
  p (1..2_000_000).select { |v| Primenumbers?(v) }.reduce { |sum, v| sum + v }
end
