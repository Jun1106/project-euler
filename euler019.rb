#! ruby -E Windows-31J:utf-8

def euler019
    days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31]

    day = 366 #1901/01/01 1900/01/01を1として365を足す

    count_sunday = 0
    (1901..2000).each do |y|
        (0..11).each do |m|
            count_sunday += 1 if day % 7 == 0
            day += days[m]
            
            # 20世紀だけでよいなら、このブロックはいらない
            if y % 4 == 0 && m == 1
                if y % 100 != 0 || y % 400 == 0
                    day += 1
                end
            end
        end
    end

    count_sunday
end
