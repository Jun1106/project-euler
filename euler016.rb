#! ruby -E Windows-31J:utf-8
# 全然わからん

def euler016
    n = (2**1000).to_s

    x = 0
    (0..n.length).each do |i|
        x += n[i].to_i
    end
   
    x
end

