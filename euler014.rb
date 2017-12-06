#! ruby -E Windows-31J:utf-8

def euler014
  cache = {} # 値と桁数のキャッシュ
  digits = 0 # 桁数の保存
  x = 0 # 最長の数列が生成される値
  
  (2..1000000).each do |v|
    n = v # 計算結果を保存する一時変数
    d = 0 # vの桁数
    n_digits = {} # 値と桁数のリスト

    while n != 1
      d += 1

      if n.even?
        n /= 2
      else
        n = 3 * n + 1
      end

      if cache.key?(n)
        d += cache[n]
        break
      else
        n_digits.store(n, d)
      end
    end

    value =  n_digits.values.reverse
    n_digits.keys.each_with_index {|key, i|
      cache[key] = value[i]
      cache[key] += cache[n] unless cache[n].nil?
    }

    cache.store(v, d)
    if digits < d
      digits = d
      x = v
    end
  end
  x
end
