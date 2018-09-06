function bisect_left(A, p, r, v)
    i = p
    if p < r
       q = floor(Int, (p+r)/2)  # floor() er en innebygd funksjon som runder ned. ceil() runder opp.
       if v <= A[q]
           i = bisect_left(A, p, q, v)
       else
           i = bisect_left(A, q+1, r, v)
       end
    end
    return i
end
function bisect_right(A, p, r, v)
    i = r
    if p < r
       q = floor(Int, (p+r)/2)  # floor() er en innebygd funksjon som runder ned. ceil() runder opp.
       if v <= A[q]
           i = bisect_right(A, p, q, v)
       else
           i = bisect_right(A, q+1, r, v)
       end
    end
    return i
end
function main()
    A = [0,1,2,3,9,9,10,15,16,19]
    v = 9
    x = bisect_left(A, 1, length(A)+ 1, v)
    y = bisect_right(A, 1, length(A) + 1, v)
    println(x)
    println(y)
end

main()
