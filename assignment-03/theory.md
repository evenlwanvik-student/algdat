
## Sorteringsalgoritmer

### Hva er kjøretiden til den mest effektive algoritmen som kan finne ut om alle elementene i en usortert liste med n elementer er unike?
Θ(nlogn)
Sorter listen først med en Omega(nlogn) algoritme. Søk deretter sekvensielt gjennom listen på leting etter etterfølgende elementer med same verdi

### Denne oppgaven handler om quicksort og mergesort. Med “sorteringsarbeid” menes her den faktiske flyttingen av tall som en sorteringsalgoritme gjør. Hvilket av følgende alternativ er sant?
Quicksort gjør sorteringsarbeidet før det rekursive kallet, mens mergesort gjør det etterpå

### La liste A være en liste sortert i stigende rekkefølge, og B en liste sortert i synkende rekkefølge. Hvilken påstand stemmer da om kjøretiden til Quicksort?
Begge har kjøretid Θ(n2)


The master method provides a "cookbook" method for solving recurrences of the form T(n)=aT(n/b)+f(n). 
Then we have T(n)=aT(n/b)+f(n), where f(n) is the time to create the subproblems and combine their results in the above procedure. This equation can be successively substituted into itself and expanded to obtain an expression for the total amount of work done. The master theorem allows many recurrence relations of this form to be converted to Θ-notation directly, without doing an expansion of the recursive relation. *n* is the size of an input problem, *a* is the number of subproblems in the recursion, and *b* is the factor by which the subproblem size is reduced in each recursive call. The theorem below also assumes that, as a base case for the recurrence, T(n)=Θ(1) when *n* is less than some bound k>0 (e.g. p<q), the smallest input size that will lead to a recursive call.
Recurrences of this form often satisfy one of the three following regimes, based on how the work to split/recombine the problem f(n) relates to the critical exponent (c_crit = log(subproblems)/log(relative subproblem size) = log_b(a)).

**Case 1:** 
Work to split/recombine a problem is dwarfed by subproblems, i.e. the recursion tree is leaf heavy. 
When f(n)=O(n^c), where c < c_crit = log_b(a) (upper-bounded by a lesser exponent polynomial), then T(n)=Θ(n^ccrit).
e.g. if b=a^2 and f(n)=O(n^(1/2)), then T(n)=Θ(n^(1/2))
**Case 2:** 
Work to split/recombine a problem is comparable to subproblems. 
When f(n)=O(n^ccrit log_k(n)) for any k>=0 (we'll be using k=1(leafs left at end of reccurence), e.g. ln(n)=log_2(n)), then T(n)=Θ(n^ccrit)
e.g. if b=a^2 and f(n)=Θ(n^(1/2)), then T(n)=Θ(n^(1/2))
**Case 3:** 
Work to split/recombine a problem dominates subproblems. i.e. the recursion tree is root-heavy.
when f(n)=Ω(n^c) where c > ccrit.. long story short; the total is dominated by the splitting term f(n) -> T(n) = Θ(f(n))


1+2+⋯+(n−1)+n is an arithmetic series, and it evaluates to (n+1)(n/2)+n/2. In terms of big-Θ notation, we don't care about that constant factor, nor do we care about the factor of 1/2 or the low-order term. The result is that the running time for all the calls to indexOfMinimum is Θ(n^2).
arithmetic series: (8+1)+(7+2)+(6+3)+(5+4) = 9+9+9+9 = (n+1)(n/2)
