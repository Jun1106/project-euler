#! ruby -E Windows-31J:utf-8

def Primenumbers?(num)
  return false if num.abs <= 1

  return true if num.abs == 2

  return false if num.even?

  (3..Math.sqrt(num.abs)).each do |v|
    next if v.even?

    return false if num % v == 0
  end

  true
end

def euler007
  n = 0
  x = 0
  max_prime = 0
  while n < 10_001
    max_prime = x
    n += 1 if Primenumbers?(max_prime)
    x += 1
  end

  p "#{n}番目の素数は、#{max_prime}"
end
