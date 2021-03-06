
## Sorteringsalgoritmer

### Hva er kjøretiden til den mest effektive algoritmen som kan finne ut om alle elementene i en usortert liste med n elementer er unike?
Θ(nlogn)
Sorter listen først med en Omega(nlogn) algoritme. Søk deretter sekvensielt gjennom listen på leting etter etterfølgende elementer med same verdi

### Denne oppgaven handler om quicksort og mergesort. Med “sorteringsarbeid” menes her den faktiske flyttingen av tall som en sorteringsalgoritme gjør. Hvilket av følgende alternativ er sant?
Quicksort gjør sorteringsarbeidet før det rekursive kallet, mens mergesort gjør det etterpå

### La liste A være en liste sortert i stigende rekkefølge, og B en liste sortert i synkende rekkefølge. Hvilken påstand stemmer da om kjøretiden til Quicksort?
Begge har kjøretid Θ(n2)


1+2+⋯+(n−1)+n is an arithmetic series, and it evaluates to (n+1)(n/2)+n/2. In terms of big-Θ notation, we don't care about that constant factor, nor do we care about the factor of 1/2 or the low-order term. The result is that the running time for all the calls to indexOfMinimum is Θ(n^2). 

arithmetic series: (8+1)+(7+2)+(6+3)+(5+4) = 9+9+9+9 = (n+1)(n/2)

### Hvilken av algoritmene forbruker mest ekstra minne i average case?
Quicksort
Quick sort is space constant where Merge sort depends on the structure you're sorting.

### Alle input kan gi worst-case kjøretid for randomized-quicksort
Sant
Om man har veldig uflaks kan man alltid velge største som pivot. Men ettersom det er veldig lav sannsynlighet for dette spiller det liten rolle.

### Du ønsker å teste om kjøretiden til fire ulike, rekursive algoritmer er O(n2) ved hjelp av substitusjonsmetoden. Først setter du opp rekurrenser for algoritmene, og så forutsetter du for hver av dem den induktive hypotesen at T(n)≤c⋅n2. Etter å ha gjennomført substitusjonsmetoden for hver av rekurrensene får du resultatene
T1(n)≤c⋅n2−5n

T2(n)≤c⋅n2+5n

T3(n)≤c⋅n2+1

T4(n)≤c⋅n2−1

### Hvilke(n) av algoritmene har du greid å bevise at har kjøretid O(n2)? Anta at grunntilfellene i den matematiske induksjonen også stemmer.
Alle stemmer, det lineære eller konstante leddet blir veldig raskt dominert av det eksponentielle 

### La T(n)=27⋅T(n/3)+n3. Hvilket tilfelle tilhører rekurrensen når du benytter master-teoremet?
Rekurrensen tilhører Case 3, da det kubiske leddet dominerer og tilsvarer arbeidet det tar å splitte/rekombinere problemet, i.e. det rekursive treet h

a=27, b=3, f(n)=n^3 -> c=3 

check if **case 1**: log_b(a)=log_3(27)=3 (not)> c=3 NOPE 

check if **case 2**: log_b(a)=log_3(27)=3 == c=log_b(a) YERP -> Work to split/recombine a problem is comparable to subproblems.

check if **case 1**: log_b(a)=log_3(27)=3 (not)< c=3 NOPE 

The master method provides a "cookbook" method for solving recurrences of the form T(n)=aT(n/b)+f(n). \\
Then we have T(n)=aT(n/b)+f(n), where f(n) is the time to create the subproblems and combine their results in the above procedure. This equation can be successively substituted into itself and expanded to obtain an expression for the total amount of work done. The master theorem allows many recurrence relations of this form to be converted to Θ-notation directly, without doing an expansion of the recursive relation. *n* is the size of an input problem, *a* is the number of subproblems in the recursion, and *b* is the factor by which the subproblem size is reduced in each recursive call. The theorem below also assumes that, as a base case for the recurrence, T(n)=Θ(1) when *n* is less than some bound k>0 (e.g. p<q), the smallest input size that will lead to a recursive call. \\
Recurrences of this form often satisfy one of the three following regimes, based on how the work to split/recombine the problem f(n) relates to the critical exponent (c_crit = log(subproblems)/log(relative subproblem size) = log_b(a)).

**Case 1:** 
Work to split/recombine a problem is dwarfed by subproblems, i.e. the recursion tree is leaf heavy. \\
When f(n)=O(n^c), where c < c_crit = log_b(a) (upper-bounded by a lesser exponent polynomial), then T(n)=Θ(n^ccrit). \\
e.g. if b=a^2 and f(n)=O(n^(1/2)), then T(n)=Θ(n^(1/2)) \\
**Case 2:** \\
Work to split/recombine a problem is comparable to subproblems. \\
When f(n)=O(n^ccrit log_k(n)) for any k>=0 (we'll be using k=1(leafs left at end of reccurence), e.g. ln(n)=log_2(n)), then T(n)=Θ(n^ccrit) \\
e.g. if b=a^2 and f(n)=Θ(n^(1/2)), then T(n)=Θ(n^(1/2)) \\
**Case 3:** \\
Work to split/recombine a problem dominates subproblems. i.e. the recursion tree is root-heavy. \\
when f(n)=Ω(n^c) where c > ccrit.. long story short; the total is dominated by the splitting term f(n) -> T(n) = Θ(f(n)) \\

### La T(n)=27⋅T(n/3)+n3. Hva blir kjøretiden?
Master theorem **Case 2**: T(n) = Θ(n^(log_b(a))log(n)) = Θ(n^3log(n))

### La T(n)=4⋅T(n/2)+n3. Hva blir kjøretiden?
c = 3 > log2(4) = 2 -> **case 3** T(n)=Θ(n^c)=Θ(n^3)

### La T(n)=T(n/3)+T(n/2)+T(n−1)+1 der T(1)=1. Hva blir høyden til rekursjonstreet?
1 < T(n/3) < T(n/2) < T(n-1) = Θ(n)

## Variabelskifte

### Løs rekurensen gitt ved T(n)=T(√n)+n ved hjelp av variabelskifte. Hva blir kjøretiden? \\ Hint: √n er det samme som n^(1/2).
In recursion like T(n) = T(n/2) + 1 you will reduce height of tree 2 times in each iteration which leads to Θ(logn) but in this case, you will reduce input number by power of two (not two times) so it will be Θ(log log n ). However, in this case the linear expression will dominate the time it takes to solve the problem, i.e. the answer is Θ(n)

## Kjøretidsanalyse

### Funksjonen gjoerNoe(n) under har kjøretid Θ(n). Hva blir kjøretiden til funksjonen f1(n)?
Hint: Sett opp to rekurrenser T1(n) og T2(n) og finn først en løsning på lukket form for T1(n).\\
function f1(n)
    gjoerNoe(n)
    if n > 1
        f1(n / 2)
        f2(n - 2)
    end
end

function f2(n)
    gjoerNoe(n)
    if n > 1
        f1(n / 2)
    end
end

T1(n)=Θ(1)+T1(n/2)+T2(n-2), T1(1)=Θ(1)
T2(n)=Θ(1)+T1(n/2), T2(1)=Θ(1)

T1(n)=Θ(1)+T1(n/2)+Θ(1)+T2((n-2)/2)=T1(n/2)+T2(n/2-1)+Θ(1) ~ 2*T1(n/2)+Θ(1)
=> 2*T(n/2)=Θ(n)

If you draw the recursion tree of 2T(n/2), you find constants at every level. Height of the tree is log n. It is easy to see that the number of constants at every level is the number of recursvie calls at that level!
Level                  Constants
n                        c
n/2,n/2                  2c
n/4,n/4,n/4,n/4          4c

Last level will have 2^(lg2(n)) terms, hence 2^(lg2(n))∗c=cn (Note - its log base 2) 

This is because for every recursion you have a constant c. (Usually the constants are ignored, but for this case it is easier to see the problem as constants)

### Hva blir kjøretiden til funksjonen f3(n)?
function f3(n)
    if n > 42
        f3(n - 42)
        f3(42)
    end
end

T(n)=T(n-42)+T(42)=T(n-42)+Θ(1)
T(n)=T(n-42) -> worst case=T(n)=O(n) ?? ***sjekk LF!***

### Hva blir kjøretiden til funksjonen f4(n)? println tar konstant tid.
function f4(n)
    for i in 1:n
        println("Algdat ruler!")
    end

    if n > 1
        f4(3/4* n)
        f4(1/4* n)
    end
end

T(n)=n+T(3n/4)+T(n/4)
n+n+3n/4+n/4.. Tipper worst case = T(n)=O(nlog(n)), ***sjekk LF!***


Funksjonen må gjøre n ganger T(n)=O(n)

### Funksjonen gjoerNoeAnnet(n) under har kjøretid Θ(n^). Hva blir kjøretiden til funksjonen f5(n)?
function f5(n)
    gjoerNoeAnnet(n/6)

    if n > 1
        f5(n/2 - 2)
        f5(n/2 - 3)
    end
end

T(n)=Θ(n^2)+T(n/2-2)+T(n/2-3)~Θ(n^2)+Θ(lg(n))+Θ(lg(n))->Θ(n^2)


