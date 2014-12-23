def merge_sort(array_A)
  return array_A if array_A.size <= 1
  c =  (array_A.size - 1) / 2
  left = array_A[0..c]
  right = array_A[c+1..-1]
  left = merge_sort(left)
  right = merge_sort(right)
  return merge(left,right)
end

def merge(left, right)
  ans = []
  l = r = i = 0
  left
  right
  max_i = left.length + right.length
  for i in (0..max_i - 1)
    while l < left.length && r < right.length 
    if left[l] < right[r]
      ans[i] = left[l]
      l = l + 1
    else
      ans[i] = right[r]
      r = r + 1
    end
      i = i + 1
    end

    while l < left.length
      ans[i] = left[l]
      l = l + 1
      i = i + 1
    end

    while r < right.length
      ans[i] = right[r]
      r = r + 1
      i = i + 1
    end

  end
  
  return ans
end

array_A = Array.new(20){|i| i+ rand(10)}
print array_A
print merge_sort(array_A)
