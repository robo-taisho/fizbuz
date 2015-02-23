def qsort(array)
  return array if array.length <= 1

  left = []
  right = []

  for i in (1..array.length-1)
    if array[i] < array[0]
      left << array[i]
    else
      right << array[i]
    end
  end

  left = qsort(left)
  right = qsort(right)

  ans = []
  ans = left << array[0]
  ans = ans + right

  return ans

end


array = Array.new(20){|i| rand(20) + i}
print array
puts ""
print qsort(array)

