            #1             #2

def range(start_range, end_range)

    return start_range if start_range == end_range
    
    new_arr = []

    new_arr << range(start_range, end_range - 1)

    return new_arr

end

# range(1, 5)
puts range(1, 4)
# range(1, 3)