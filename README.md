# algdat
Algorithms and data structures exercises

# notes
## asymptotic notations
Big-O (e.g. O(n)) is a measure of the longest amount of time it could possibly take for
the algorithm to complete. f(n) <= c*g(n), where f(n) and g(n) are non-negative fucntions,
g(n) is the upper bound, then f(n) is Big O of g(n). This is denoted as "f(n) = O(g(n))".

Big Omega dscribes the best that can happen for a given data size, i.e. the smallest 
amount of time any input produces. "f(n)>=c*g(n)" -> f(n)=Omega(g(n))

Theta is basically saying that the function, f(n) is bounded both from the top and bottom
by the same function, g(n). f(n) is theta if and only if f(n)=O(g(n)) and f(n)=Omega(g(n)).
This is denoted as f(n)=theta(g(n))

## Sorting algorithms
Merge sort and heapsort achieve a upper bound of O(nlg(n)) in the worst case; quicksort however achieves it on average. Moreover, for each of these algorithms, we can produce a sequence of n input numbers that causes the algorithm to run in Omega(nlgn). These algorithms are sorted based on comparisons between input elements, and we call them **comparison sorts**.
Any comparison sort must make Omega(nlgn) comparisons in the worst case to sort n elements, thus merge sort and heapsort are asymptotically optimal, and no comparison sort exists that is faster by more than a constant factor.

