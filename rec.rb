            #1             #2
require "byebug"

def range(start, end_number)
    
    return [] if end_number < start
    return [start] if start == end_number - 1

    new_arr = []
    new_arr << start 
    
    add_arr = range(start + 1, end_number)
    add_arr.each do |num|
        new_arr << num 
    end
    
    return new_arr

    # range(start, end_number - 1) << end_number
    # new_arr.concat(add_arr)

    # return new_arr  
end


p range(1, 5) 
p range(1, 4) 
# range(1, 3)




    def rec_1(base,exp)

      if exp == 0 
        return 1
      end
    
      if exp == 1 
        return base
      end
    
      base * rec_1(base,exp - 1)

    end

    p rec_1(3,4)


  def rec_2(base,exp)
    if exp == 0 
        return 1
    end
    
    if exp == 1 
        return base
    end
  
    if exp % 2 == 0
      previous = rec_2(base,exp * 0.5)
      previous * previous
    else
      previous = rec_2(base,(exp - 1) * 0.5)
      base *  previous * previous
    end

  end

  p rec_2(3,4)
 

  def deep_dup(arr)
    return arr.dup if arr.all? { |ele| !ele.is_a?(Array) }  
    
    new_arr = []

    arr.each do |ele|
      if ele.is_a?(Array) 
        new_arr << deep_dup(ele) 
      
      else
        new_arr << ele.dup
      end
    end

    return new_arr

  end

#   robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]
#   robot_parts_copy = deep_dup(robot_parts)

#   robot_parts_copy[1] << "LEDs"

#   p robot_parts[1]

#   p robot_parts_copy[1]

  

def fibonacci(n)

  if n == 0
    return []
  end

  if n == 1
    return [0]
  end

  if n == 2
    return [0, 1]
  end

  previous_seq = fibonacci(n - 1)

  new_seq = previous_seq + [previous_seq[-2..-1].sum]

  return new_seq

end

p fibonacci(4)



def bsearch(array, target)

  debugger

  return nil if array.length == 0

  if array.length % 2 == 0
    mid_point = (array.length / 2) - 1
  end

  if array.length % 2 != 0
    mid_point = (array.length / 2) 
  end

  if array[mid_point] == target
    return mid_point 
  end

  if array[mid_point] > target
    first_half = bsearch(array[0..mid_point],target)
    if first_half == nil 
      return nil
    else
      return mid_point - first_half
    end
  
  elsif array[mid_point] < target
    second_half = bsearch(array[mid_point..-1],target)
      if second_half == nil  
        return nil
      else 
        return mid_point + first_half
      end
  end
      


end


# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil
