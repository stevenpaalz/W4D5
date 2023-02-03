def my_min_slow(array)
    min = array[0]
    (1...array.length).each do |i|
        (2...array.length).each do |e|
            if array[i] > array[e] && array[e] < min
                min = array[e] 
            else
                min = array[i]
            end
        end
    end
    min
end