# Grådige Algoritmer

## Grådige algoritmer

### Hvilke(n) påstand(er) er korrekt(e)? USIKKER

Dersom man kan løse et problem med dynamisk programmering kan man også løse det med en grådig algoritme.

Grådige algoritmer brukes til å løse optimaliseringsproblemer.

Grådige algoritmer trenger ikke å vite løsningen på alle mulige delproblemer før den kan gjøre det grådige valget.

### Hvilke to egenskaper må et problem ha for at vi kan bruke en grådig algoritme?

Grådighetsegenskapen og optimal substruktur

### Hvorfor kan det være ønskelig å bruke en grådig algoritme istedenfor dynamisk programmering?

Algoritmen kan være enklere å implementere og ha bedre kjøretid

### Hva har grådige algoritmer og dynamisk programmering til felles? USIKKER

Begge utnytter optimal delstruktur

### Hvilke(n) påstand(er) er korrekt(e)?

En grådig algoritme kan enkelt løse både 0-1 og fractional knapsack-problemet

## Aktivitetsutvalg 1

### Du ønsker å velge ut så mange aktiviteter som mulig fra en mengde av åtte aktivitet uten at de overlapper. Aktivitetene har følgende start og sluttidspunkter.

TASK	START	FINISH
1	      12	  14
2	      12	  17
3       6	    10
4       15	  18
5	      16	  17
6	      0	    5
7	      4	    7
8	      6	    9

Gitt at du hadde brukt RECURSIVE-ACTIVITY-SELECTOR (side 419) til å løse problemet. Hvilken aktivitet ville vært den 2. i løsningsmengden A?

6 - 8 -> 8

### Gitt at du hadde brukt GREEDY-ACTIVITY-SELECTOR (side 421) på tabellen. Hvilken aktivitet ville vært den 3. aktiviteten i løsningsmengden A? 

***MERK For at algoritmen skal fungere vil du måtte omorganisere elementene i tabellen slik at antagelsen til GREEDY-ACTIVITY-SELECTOR er oppfylt.***

6 - 8 - 1 -> 1

### Gitt at du hadde brukt RECURSIVE-ACTIVITY-SELECTOR (side 419) på tabellen. Hva blir løsningen (aktiviteter i kronologisk rekkefølge)?

6, 8, 1, 5

### Hva forteller teorem 16.1 i boka om aktivitetsutvalg-problemet?

At det har grådighetsegenskapen (denne eller at det har optimal substruktur..)

## Huffman-koder 1

### Du ønsker å finne optimal prefix-kode for en streng. Strengens alfabet representeres ved bokstavene a til g. Frekvensene er som følger:

***BOKSTAV	FREKVENS
a	50
b	2
c	20
d	25
e	200
f	80
g	60
Gitt at vi velger å kode alfabetet på følgende måte:***
***a: 00001
b: 001
c: 1
d: 00000
e: 0001
f: 010
g: 011
Hvor mange bits må vi bruke for å representere strengen?***

1621











