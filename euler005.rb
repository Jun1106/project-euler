#! ruby -E Windows-31J:utf-8

def euler005
    n = 19 * 20
    while true do
        i = 20
        while i != 0 do
            break if n % i != 0
            i -= 1
        end

        break if i == 0
        n += 1
    end
  p n
end

euler005
