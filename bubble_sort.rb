class Array
  def bubble_sort!()
  
  memb = self.length

for j in (0..memb-2)
  for i in (0..memb-2)
    m = self[i]
    n = self[i + 1]
    case self[i] <=> self[i+1]
    when 1 
      self[i+1] = m
      self[i] = n
    end
  end
end

  end
end

start_time = Time.now

#array_A = [5,4,3,2,1,0,11,23,13]
array_A = Array(5..3000).map{|i| i*3}.reverse
array_A.bubble_sort!
end_time = Time.now
puts end_time - start_time
