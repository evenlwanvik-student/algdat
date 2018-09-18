# Rotfaste Trestrukturer

### Hva er kjøretiden for å konstruere og sortere en heap av tall med Heapsort?

O(n) + O(nlgn), Build-Max-Heap bruker O(n) worst case og Heapsort bruker O(nlgn), i.e. -> O(nlg(n))

### I en heap har du en node med indeks 3. Hva er indeksen til foreldrenoden?

rotnoden 1 er foreldrenoden til 2 og 3 (forutseter at indekseringen starter på 1)

### I en heap har du en node med indeks 8. Hva er indeksen til de to barnenodene?

16 og 17

### Hvilke(t) av disse tilfredsstiller kravene til en max-heap?

A og D. En Max-heap er et komplett binærtre som har Max-heap-egenskapen, nemlig at alle barn har mindre verdi.

### Hvis vi har en heap som ser slik ut, hvordan ser da listen som representerer heapen ut etter at vi har kjørt tre (3) iterasjoner av heapsort?

11, 8, 9, 4, 12, 14, 21

### Hvilke(n) påstand(er) er korrekt?

heap-sort er ikke stabil fordi den bare setter det høyeste elementet sist i listen, uten å ta hensyn til om det eksisterer flere elementer med samme verdi.

Heap-sort er "in-place" fordi listen blir først endret til en heap uten å bruke ytterligere lister/lagringsplass en den opprinnelige listen

### Hva er den såkalte heap-egenskapen ved en max-heap?

Verdien til en node er alltid større eller lik verdiene til barnenodene

### Hvis du setter verdiene 1, 2, 3, 9, 5, 6, 7, 10, 4, og 8 inn i et tomt binærsøketre (én etter én, i oppgitt rekkefølge), hva blir høyden til treet?

7 (trikset er å tell antall kanter (streker) mellom rotnoiden og laveste barnenode)

### Hvis du setter verdiene 1, 2, 9, 5, 4, 8 og 3 inn i en tom binær min-heap(én etter én, i oppgitt rekkefølge), hva blir høyden til heapen?

2


