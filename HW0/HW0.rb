def sum(intarr)
    return "Parameter is not an array" unless intarr.is_a?Array
    return 0 if intarr.empty?

    sumvar = 0
    intarr.each do |item|
    	return "Non Integer Item found" unless item.is_a?Integer
    	sumvar += item
    end
    return sumvar
end


def max_2_sum(intarr)
	return "Parameter is not an array" unless intarr.is_a?Array
    return 0 if intarr.empty?
    return intarr[0] if intarr.count == 1
    largest_element = nil
    nextlargest_element = nil

    intarr.each do |element|
    	return "Non Integer Item found" unless element.is_a?Integer

        #STDERR.puts("Element is #{element}")
        #STDERR.puts("Checking if largest element defined")
        if largest_element.nil?
            largest_element = element
            #STDERR.puts("Assigned nil largest element to element")
            #STDERR.puts(largest_element)
        else
            #STDERR.puts("Largest element defined")
            if largest_element <= element
             nextlargest_element = largest_element
             largest_element = element
             #STDERR.puts("Updated new largest and 2nd largest")
         else
            if nextlargest_element.nil?
                nextlargest_element = element
                #STDERR.puts("Updated nil next largest to element")
            else
                if nextlargest_element <= element
                   nextlargest_element = element
                   #STDERR.puts("Updated next largest to larger element")
               end
           end
       end
   end
end

   return largest_element + nextlargest_element
end

def sum_to_n?(intarr, n)
    return "Parameter is not an array" unless intarr.is_a?Array
    return "Paramter is not an integer" unless n.is_a?Integer
    return false unless intarr.count > 1

    intarr.each_with_index do |element, index|
        return "Array element is not an integer" unless element.is_a?Integer

        cmparr = intarr
        cmparr.delete_at(index)
        if cmparr.include?(n - element)
            return true
        end
        #if n - element 
    end

    return false
end


puts "Sum of array: #{sum([1, 2, 3, 4])}"
puts "Sum of 2 largest: #{max_2_sum([-1, -2, -3, -1])}"
puts "Sum_to_n: #{sum_to_n?([1, 5, 10, 15, 1], 2)}"