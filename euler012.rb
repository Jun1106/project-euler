#! ruby -E Windows-31J:utf-8

def divisor_count(num)
    count = 2

    (2..num / 2).each do |v|
        count += 1 if num % v == 0
    end

    count
end
    
def euler012
    return 0
    
    x = 0
    n = x
    while true
        n += x
#        p "対象：#{n}"
        break if divisor_count(n) > 500
        x = x + 1
    end

  p n
end
