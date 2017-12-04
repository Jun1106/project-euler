
def Primenumbers?(num)
  return false if num.even?

  return false if num.abs <= 1

  return true if num.abs == 2

  i = 3
  while i < Math.sqrt(num)
    return false if num % i == 0

    i += 2
  end

  true
end

def euler003
  n = 600_851_475_143
  num = nil
  (1..Math.sqrt(n)).each do |v|
    next if v.even?

    next if n % v != 0

    next unless Primenumbers?(v)

    num = v
  end

  num
end
