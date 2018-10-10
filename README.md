# algdat
TDT4120 - Algorithms and data structures

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

## substitution method for solving recurrences
The substitution method for solving recurrences comprises two steps: \\
1. Guess the form of the sollution. \\
2. Use mathematical induction to find the constants and show that the solution works. \\
We substitute the guessed solution for the function when applying the inductive hypothesis to smaller values; hence the name "substitution method". \\
As an example, let us determine an upper bound on the recurrence T(n)=2T(n/2)+n

## Master Theorem
the **master theorem for divide-and-conquer recurrences** provides an asymptotic analysis (using Big O notation) for recurrence relations of types that occur in the analysis of many divide and conquer algorithms.
The runtime of an command and conquer algorithm where the problem is divided into 'a' subproblem having half the size 'n/b', usually denoted T(n), can be expressed by the *recurrence relation* T(n)=aT(n/b)+f(n) where f(n) is the time to create the subproblems and combine their results in the above procedure. This equation can be successively substituted into itself and expanded to obtain tan expression for the total amount of work done. The master theorem allows many recurrence relations of this form to be converted to Omega-notation directly, without doing an expansion of the recursive relation.

## Sorting algorithms
Merge sort and heapsort achieve a upper bound of O(nlg(n)) in the worst case; quicksort however achieves it on average. Moreover, for each of these algorithms, we can produce a sequence of n input numbers that causes the algorithm to run in Omega(nlgn). These algorithms are sorted based on comparisons between input elements, and we call them **comparison sorts**.

Any comparison sort must make Omega(nlgn) comparisons in the worst case to sort n elements, thus merge sort and heapsort are asymptotically optimal, and no comparison sort exists that is faster by more than a constant factor.

### Lower bounds for sorting
In a comparison sort, we use only comparisons to gain information about an inputn sequence, i.e. given the two elements a___i and a___j, we perform the following tests a___i$<$a___j, a___i$\leq$a___j, a___i$=$a___j, a___i$\geq$a___j, or a___i$>$a___j 


# Weak points to analyse further from assignments

## Assignment 4
### Theory
#### why Quicksort has a worst case is Omega(n^2) when the array is sorted in both increasing and decreasing order
The worst case for Quicksort occurs when the partition process always picks greatest or smalles element as pivot. If we then consider an array of rising order picking the last element as its pivot element, figure out ..
### Practical

