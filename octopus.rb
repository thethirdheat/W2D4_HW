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
    p ar.sort{|a,b|a.length-b.length}[-1]
end


p find_n_squared2(ar)