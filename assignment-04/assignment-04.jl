function counting_sort_letters(A, pos) # A:Array, p:position
    n = length(A)
    k = 26 # number of letters in alphabet
    start_ascii = Int('a'[1]) # Ascii decimal of a
    C = fill(0,k) # initialize counter array to 0
    # Storing count for each letter
    for i = 1:n
        if (length(A[i]) < pos) return A end
        counterIdx = Int(A[i][pos])-start_ascii+1 # -a_ascii+1 to start from 1
        C[counterIdx] = C[counterIdx] + 1
    end
    # Changing C[j] so it contains actual position of all each element
    for j = 2:(k)
        C[j] = C[j] + C[j-1]
    end
    B = fill("z",n) # initialize return array
    for i = n:-1:1
        counterIdx = Int(A[i][pos])-start_ascii+1
        B[C[counterIdx]] = A[i] # Always adds next string to first element of B
        C[counterIdx] = C[counterIdx] - 1 # Reduce the count of current element by 1
    end
    return B
end

function counting_sort_length(A)
    n = length(A)
    k = 0 # Max string length in array A
    for i = 1:n # find the longest string
        if (length(A[i]) > k) k = length(A[i]) end
    end
    C = fill(0,k) # initialize counter array to 0
    for i = 1:n # counter
        counterIdx = length(A[i])
        C[counterIdx] = C[counterIdx] + 1
    end
    # Changing C[j] so it contains actual position of all each element
    for j = 2:(k)
        C[j] = C[j] + C[j-1]
    end
    B = fill("z",n) # initialize return array
    for i = n:-1:1
        counterIdx = length(A[i])
        B[C[counterIdx]] = A[i]  # Always adds next string to first element of B
        C[counterIdx] = C[counterIdx] - 1 # Reduce the count of current element by 1
    end
    return B
end

function flexradix(A, max_length)
    A = counting_sort_length(A)

    # SPLIT UP ARRAY AND RETURN ONLY THE SIDE WHERE EVERY ELEMENT HAS
    # STRING SIZE BIGGER THAN P??

    for p = 1:max_length # p: position
        A = counting_sort_letters(A, p)
    end
    return A

    #=
    n = length(A)
    C = fill(0,max_length) # initialize counter array to 0
    for i = 1:n # counter
        counterIdx = length(A[i])
        C[counterIdx] = C[counterIdx] + 1
    end
    # Now we have a sorted list by length, and the number of lengths. We can then
    # iterate through the lengths and ommit the previous smaller arrays as
    # the problem developes
    for i = 1:max_length
        A =
        C = fill(0,n) # Counter for strings with different sizes
        A = counting_sort_letters(A, i)
        C[counterIdx] = C[counterIdx] - 1 # Reduce the count of current element by 1
    end
    =#
end
