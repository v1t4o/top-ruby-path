def bubble_sort(arr)
  count = arr.length - 1
  (0..count).each do |actual|
    aux = nil
  
    (actual+1..count).each do |next_number|
      if next_number <= count && arr[actual] > arr[next_number]
        aux = arr[actual]
        arr[actual] = arr[next_number]
        arr[next_number] = aux
      end
    end

    break if aux.nil?
  end

  return arr
end

p bubble_sort([4,3,78,2,0,2])

p bubble_sort([6, 5, 3, 1, 8, 7, 2, 4])

