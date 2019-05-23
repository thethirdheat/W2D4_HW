ar=['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
def find_n(ar)
    longest=""
    ar.each do |el|
        if el.length > longest.length
            longest=el
        end
    end
    longest
end

def find_n_squared2(ar)
    return ar.sort{|a,b|a.length-b.length}[-1]
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir,ar)
    ar.each_with_index do |el,ind|
        return ind if el==dir
    end
end


new_tiles_array = Hash[["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ].map.with_index{|el,ind|[el,ind]}]
def fast_dance(dir, new_tiles_data_structure)
    return new_tiles_data_structure[dir] 
end

p fast_dance("up",new_tiles_array)
p fast_dance("right-down",new_tiles_array)