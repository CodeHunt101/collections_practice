def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort.reverse
end

def sort_array_char_count(arr)
  arr.sort do |a,b|
    a.length <=> b.length
  end
end

def swap_elements(arr)
  arr[1],arr[2] = arr[2],arr[1]
  arr
end

def swap_elements_from_to(arr,initial,final)
  arr[initial],arr[final] = arr[final],arr[initial]
  arr
end

def reverse_array(arr)
  arr.reverse
end

def kesha_maker(arr)
  new_arr = []
  arr.each do |string|
    chars_arr = string.split("")
    chars_arr[2] = '$'
    new_arr.push(chars_arr.join())
  end
  new_arr
end

def find_a(arr)
  arr.select{|string| string[0]==="a"}
end

def sum_array(arr)
  arr.reduce{|acc,curr| acc+curr}
end

# def add_s(arr)
#   array_without_second_item = arr.slice(0..0).concat(arr.slice(2..-1))
#   array_without_second_item_plurals = array_without_second_item .map{|word| word + "s"}
#   full_array = array_without_second_item_plurals.insert(1,arr[1])
# end

def add_s(arr)
  arr.each_with_index.collect{|element, index| index==1 ? element : element + "s"}
end