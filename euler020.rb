#! ruby -E Windows-31J:utf-8

def euler020
    n = 1
    (2..100).each do |v|
        n *= v
    end
    n = n.to_s

    x = 0
    (0..n.length).each do |i|
        x += n[i].to_i
    end
   
    x
end

