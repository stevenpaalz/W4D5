def my_min_slow(array)
  min = array[0]
  (0...array.length).each do |i|
    (i + 1...array.length).each do |e|
      if (array[i] > array[e] && array[e] < min)
        min = array[e]
      elsif (array[i] < array[e] && array[i] < min)
        min = array[i]
      end
    end
  end
  min
end
# O(n^2)

def my_min_fast(array)
  min = array[0]
  (1...array.length).each do |i|
    if min > array[i]
      min = array[i]
    end
  end
  min
end
# O(n)


