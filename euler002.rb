
def euler002
  x = 0
  y = 1
  z = 0
  n = 0

  while z <= 4_000_000
    z = x + y
    n += z if z.even?

    x = y
    y = z
  end
  n
end
