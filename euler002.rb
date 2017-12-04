
def euler002
  n = 0
  x = 0
  y = 1
  z = 0

  while z <= 4000000
    z = x + y
    n += z if z % 2 == 0

    x = y
    y = z
  end

  z
end
