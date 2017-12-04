#! ruby -E Windows-31J:utf-8

def Sahrzad‎?(num)
  n = num.to_s

  for i in (0..(n.length / 2).to_i - 1) do
    return false if n[i] != n[n.length - i - 1]
  end

  true
end

def euler004
  n = 0
  i = 100
  while i < 1000
    j = i
    while j < 1000
      v = i * j
      j += 1
      next unless Sahrzad‎?(v)
      next if n > v
      n = v
      log = "#{n} = #{i} * #{j - 1}"
    end
    i += 1
    end

  n
end

