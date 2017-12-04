#! ruby -E Windows-31J:utf-8

def euler009
  a = 1
  b = 0
  c = 0

  # 処理
  found = false
  loop do
    b = a + 1
    
    while b < 1000 - a - (a + 2)
      c = 1000 - (a + b)

      if (a * a) + (b * b) == (c * c)
        found = true
        break
      end

      break if (a * a) + (b * b) > (c * c)

      b += 1
    end

    break if found

    a += 1
  end

  a * b * c
end
