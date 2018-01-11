
def euler025
  x = 0
  y = 1
  z = 0

  n = 1
  while
    z = x + y
    n += 1

    x = y
    y = z
    break if z.to_s.length >= 1000
  end
  n
end
