function inser-sort!(A)
    if length(A) < 1 # check if A is empty
        return "A < 1"
    end
    for i in 2:length(A) # Julia uses 1 based indexing, no point at starting at 1 wchich has 1 element
        key = A[i] # Set key equal to the element we're currently checking
        j = i-1 # j will be the index checking the elements before i
        while j > 0 && key < A[j] # loop until value is less than the current element
            A[j+1] = A[j]
            j = j - 1
        end
        A[j+1] = key # set equal to the last index that was bigger than current
    end
end

A = [0,1,2,4,2]
#test push
