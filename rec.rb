            #1             #2

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