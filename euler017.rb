#! ruby -E Windows-31J:utf-8

def euler017
    num_to_word_count = {
        0 => 0,
        1 => 3,
        2 => 3,
        3 => 5,
        4 => 4,
        5 => 4,
        6 => 3,
        7 => 5,
        8 => 5,
        9 => 4,
        10 => 3,
        11 => 6,
        12 => 6,
        13 => 8,
        14 => 8,
        15 => 7,
        16 => 7,
        17 => 9,
        18 => 8,
        19 => 8,
        20 => 6,
        30 => 6,
        40 => 5,
        50 => 5,
        60 => 5,
        70 => 7,
        80 => 6,
        90 => 6,
        100 => 7,
        1000 => 8
    }

    word_count = 0
    (1..1000).each do |v|
#        p "target is #{v}"
        num_s = v.to_s

        # 4桁の計算
        if num_s.length == 4
            word_count += num_to_word_count[v / 1000] + num_to_word_count[1000] 
            
            word_count += 3 if num_s[1] != '0' || num_s[2] != '0' || num_s[3] != '0'

            v -= (v / 1000 * 1000)
        end

        # 3桁の計算
        if num_s.length == 3
            word_count += num_to_word_count[v / 100] + num_to_word_count[100] 
            
            word_count += 3 if num_s[1] != '0' || num_s[2] != '0'

            v -= (v / 100 * 100)
        end

        # 2桁以下の計算
        if v <= 20
            word_count += num_to_word_count[v] if v <= 20
        else
            word_count += num_to_word_count[v / 10 * 10]
            
            num_2d = v.to_s # 2桁の数字
            word_count += num_to_word_count[num_2d[1].to_i] if num_2d != '0'
        end
    end

    word_count
end
