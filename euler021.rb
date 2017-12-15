#! ruby -E Windows-31J:utf-8

# 真の約数の和を返す
# 1以上にのみ対応
def true_divisor_sum(n)
    d = 0

    v = (n / 2).to_i
    while v >= 1
        d += v if n % v == 0
        v -= 1
    end

    d
end

def euler021
    true_divisor_sum = {}
    
    (1..9999).each do |n|
        true_divisor_sum.store(n, true_divisor_sum(n))
    end

    true_divisor_sum.select{|v| n = true_divisor_sum[v]; m = true_divisor_sum[n]; v == m && n != v}.values.reduce{|sum, v| sum += v}
end

