## Sammenlikningsbasert sortering

### Hva er worst case for sammenlikningsbasert sortering? Velg det alternativet som passer best.

comparison sorts cannot perform better than O(n log n) in the average or worst case, i.e. Ω(n log n)

### Anta at du har en sammenlikningsbasert sorteringsalgoritme som sorterer heltallene i entabell med lengde. Hvilke(t) alternativ er korrekt?

Alle er korrekt

## Stabil sortering

### Anta følgende tabell med elementer: [(x: 3, y: 5), (x: 1, y: 5), (x: 3, y: 3), (x: 3, y:4)] Dersom en stabil sorteringsalgoritme brukes for å sortere tabellen på x-verdiene, hvordan vil listen se ut sortert?

[(x: 1, y: 5), (x: 3, y: 5), (x: 3, y: 3), (x: 3, y:4)]

### Hvilke(n) av de følgende algoritmene er stabil(e), gitt implementasjonen i pensumboka?

Radix sort, Mergesort, Insertion sort, Bubblesort, Counting sort

## Counting sort

### Anta at du skal bruke counting sort for å sortere heltall, der hvert heltall er mellom 0 og k. Du vet at k er mye større enn n. Hva er den mest presise beskrivelsen av kjøretiden?

Hvis k=O(n), vil counting sort bruke Θ(n) tid. I counting sort pseudokoden er det 4 for-løkker, 2 tar tiden Θ(k) og 2 tar Θ(n), i.e. kjøretiden blir Θ(n+k)

### Hvorfor itererer counting sort bakover gjennom A når heltallene skal settes inn i B?

Fordi algoritmen skal være stabil.

At en algoritme er stabil vil si at hvis du sorterer en liste
med tall, vil alltid tallet i forekomsten som var først i den opprinnelige
listen komme først i den sorterte listen.

## Radix sort

### Radix sort sorterer på det mest signifikante sifferet først.

Usant, radix sort sorterer på det minst signifikante sifferet først.

### Hvilken av disse algoritmene ville vært den beste som en del av radix sort?

Bucket sort eller mergesort

### Du skal sortere n heltall med d siffer ved hjelp av radix sort. Du kan anta at counting sort brukes som sorteringsrutine og at k=Θ(logn). Hva er den mest presise beskrivelsen av kjøretiden til algoritmen?

Θ(d(n+k))=Θ(n+k)

### Det er mulig å sortere desimaltall med to desimaler ved hjelp av radix sort.

Sant.

## Bucket sort

### Bucket sort har en worst case-kjøretid på Θ(n).

Usant, WC = O(n^2)




















