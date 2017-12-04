#! ruby -E Windows-31J:utf-8

def euler005
  n = 19 * 20
  loop do
    i = 20
    while i != 0
      break if n % i != 0
      i -= 1
    end

    break if i == 0
    n += 20
  end

  n
end
