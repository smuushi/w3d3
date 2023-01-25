            #1             #2

def range(start, end_number)
    #[1,5]
    #[1,2,3,4,5]
    
    return [] if end_number < start
    return start if start == end_number - 1

    new_arr = []
    new_arr << start 
    # add_arr = [range(start + 1, end_number)] 
    #range[start, end_number - 1] << end_number
    new_arr.concat(add_arr)

    return new_arr

    
end


p range(1, 5) 
p range(1, 4) 
# range(1, 3)