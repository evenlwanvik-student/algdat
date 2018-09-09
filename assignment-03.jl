##################### Question 1 #####################

function bisect_left(A, p, r, v)
    i = p
    if p < r
       q = floor(Int, (p+r)/2)
       if v <= A[q]
           i = bisect_left(A, p, q, v)
       else
           i = bisect_left(A, q+1, r, v)
       end
    end
    return i
end

function bisect_right(A, p, r, v)
    i = p
    if p < r
       q = floor(Int, (p+r)/2)
       if v < A[q]
           i = bisect_right(A, p, q, v)
       else
           i = bisect_right(A, q+1, r, v)
       end
    end
    return i
end

##################### Question 2 #####################

function bisect(A, p, r, v)
    while (p <= r)
        q = floor(Int, (p+r/2))
        if (v == A[q]) return q
        elseif (v < A[q]) r = q-1
        else p = q+1
        end
    end
    return nothing
end

function qsort!(A, lo, hi) # lo - low, hi - high
    i, j = lo, hi
    while i < hi # iterate from "low" to "high" in relevant partition
        pivot = A[(lo+hi)>>>1] # logical shift (low+high) bits right to divide them by 2
        while i <= j
            while A[i] < pivot; i = i+1; end # find index less than pivot
            while A[j] > pivot; j = j-1; end # find index bigger than pivot
            if i <= j
                A[i], A[j] = A[j], A[i] # change places of the lesser and bigger element
                i, j = i+1, j-1 # next index towards middle
            end
        end
        if lo < j; qsort!(A,lo,j); end # call qsort on bottom partition
        lo, j = i, hi # start over again with the top partition
    end
    return A
end

function algdat_sort!(A) # quicksort
    p = 1
    r = length(A)
    qsort!(A, p, r)
end

function find_median(A, lower, upper)
    lo = bisect_left(A, 1, length(A)+1, lower) # lower index of interval
    hi = bisect_right(A, 1, length(A)+1, upper) - 1 # upper index of interval (-1 to return the actual last idx containing this value, not to the next)

    ctr = (lo+hi)/2 # float or integer if size of array is even or odd
    ctrLeft = (floor(Int, ctr))

    if (ctrLeft == ctr) # if array is odd, ctr index is an integer and its value the median (comparing floats)
        return A[Int(ctr)]
    else # else find median of the values to the left and right of the floating idx value
        return (A[ctrLeft] + A[ctrLeft+1]) / 2
    end
end
