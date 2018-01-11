#! ruby -E Windows-31J:utf-8

def Abundant_Number?(x)
    sum = 1

    n = (x / 2).to_i
    #p "#{x}は過剰数か？？"
    while n > 1
        if x % n == 0  
            sum += n 
            #p "約数#{n}を足して#{sum}"
        end
        if sum > x
            #puts "#{x}は過剰数である\n\n"
            return true 
        end
        n -= 1
=begin        
        sum += n if x % n == 0  
        return true if sum > x
        n -= 1
=end
    end
    #puts "#{x}は過剰数ではない\n\n"

    false
end

def euler023
    # 過剰数のリストを作って 過剰数の和で表せる値を消していく
    cache = []
    x = 0
    i = 0

    abundant_numbers = []
    (12..28122).each do |n|
    #(12..50).each do |n|
            abundant_numbers.push(n) if Abundant_Number?(n)
    end
    
    
    #p "過剰数:#{abundant_numbers}"
    #p "過剰数:#{abundant_numbers.length}個"
    x = 0
    abundant_numbers.each do |n|
        doubule_abundant_numbers = false
        abundant_numbers.each do |m|
            if abundant_numbers.include?(n - m)
                #p "#{n}を除外:#{n} #{-m} = #{n-m}は過剰数"
                doubule_abundant_numbers = true
                break
            end
        end
        x += n unless doubule_abundant_numbers
    end
    #p x
=begin
=end
=begin
    delete = []
    abundant_numbers.each do |n|
        #p "n:#{n}"
        abundant_numbers.each do |m|
            #p "m:#{m}"

                delete.push(n+m) 
        end
    end
    #p delete.length
    #p "削除リスト:#{delete}"
    p "過剰数の和:#{delete.length}"

    after = abundant_numbers - delete
    p "削除後:#{after.reduce{|sum, n| sum += n}}"

=begin
    #(12..20).each do |n|
            #    ((x+1)..x + 10).each do |n|
        next if cache.include?(n)

        if Abundant_Number?(n) then
            # p "#{n}は過剰数"
            i += 1

            x += n
            
            c = [n, n * 2]
            cache.each do |v|
                c.push(v + n)
            end
            #p c
            cache.push(c)
            cache.flatten!
        end
    end
    p i 
    p x
    p cache
=end            

    x
end

