class Array
  def merge_sort!(s = 0,e = size - 1,inf = max + 1)
  @inf = inf
  return if s >= e

  c = (s + e) / 2

  self.merge_sort!(s , c , inf)
  self.merge_sort!(c+1 ,e , inf)

  @c = c
  @s = s
  @e = e

  self.merges()
  end

  def merges()

  l = 0
  r = 0

  left = self[@s..@c] << @inf
  right = self[@c+1..@e] << @inf

  for i in (@s..@e)
    case left[l] <=> right[r]
    when 1
      self[i] = right[r]
      r = r + 1
    else
      self[i] = left[l]
      l = l + 1
    end
  end

  end

end


a = Array.new(100){|i| 300 - i}
b = Array.new(100){|i| i*2}
a = a + b
a.merge_sort!
print a
  
