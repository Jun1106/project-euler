#! ruby -E Windows-31J:utf-8

class Primenumbers
  def initialize()
    @cache = []
  end

  public def Primenumbers?(num)
    @cache.each {|v|
      break if v > Math.sqrt(num)

      return false if num % v == 0
    }

    @cache.push(num)

    true
  end
end

def euler010
  prime = Primenumbers.new

  (2..2000000).select { |v| prime.Primenumbers?(v) }.reduce { |sum, v|sum + v }
end
