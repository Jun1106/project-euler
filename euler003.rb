
def Primenumbers?(num)
    return false if num.even?
    
    return true if num.abs <= 2

  (3..Math.sqrt(num.abs)).each do |v|
    next if v.even?

    return false if num % v == 0
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

  p num
end

euler003
