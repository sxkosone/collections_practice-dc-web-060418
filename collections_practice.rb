def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort.reverse
end

def sort_array_char_count(array)
    array.sort! do |x, y|
        x.size <=> y.size
    end
end

def swap_elements(array)
    swap_elements_from_to(array, 1, 2) #look at "helper method" below
end

def swap_elements_from_to(array, first, second)
    storage = array[first]
    array[first] = array[second]
    array[second] = storage
    array
end

def reverse_array(array)
    array.reverse!
end

def kesha_maker(array)
    array.each do |word|
        word[2] = "$"
    end
end

def find_a(array)
    a_array = array.collect do |word|
        if word.start_with?("a")
            word
        end
    end.compact
    a_array
end

def sum_array(array)
    array.inject do |sum, int|
        sum + int
    end
end

def add_s(array)
    array.each_with_index.collect do |word, index|
        if index != 1
            word << "s"
        else
            word
        end
    end.compact
end

