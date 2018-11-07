# Maks flyt

## Maks flyt

### Hva er maks-flyt problemet?

Å finne flyt av maksimal verdi gjennom et nettverk.

### Hva betyr notasjonen 13/14 på den rettede kanten fra node u til v?

c(u,v)=14 og f(u,v)=13

### Du har en kant fra u til v med flyt 3 og kapasitet 5. Hva blir residualkapasiteten fra u til v?

cf(u,v)=2

### Du har en kant fra u til v med flyt 9 og kapasitet 10. Hva blir residualkapasiteten fra v til u?

cf(v,u)=9

## Ford-Fulkerson

### Hva er kjøretiden til Ford-Fulkerson?

O(E|f∗|)

##  Edmonds-Karp

### Hva er sammenhengen mellom Ford-Fulkerson og Edmonds-Karp?

Edmonds-Karp er Ford-Fulkerson med BFS for å finne flytforøkende stier.

### Hva er kjøretiden til Edmonds-Karp?

O(VE2)

## Maks flyt i graf (bilde fra øving brukes i oppgaver fremover)

### Hva er flyten i dette nettverket?

20

### Du skal finne en flytforøkende sti i nettverket fra oppgave 8 vha. BFS. Hvilken rute velges?

S→v1→v2→T (den vil alltid gå den retning den kan endre (augmente) verdiene?)

### Hvor mye flyt kan sendes gjennom den flytforøkende stien fra oppgave 9?

6

### Hva er den maksimale flyten i nettverket fra oppgave 8?

32

## Minimalt snitt i graf

### Gitt snittet ({S,v1},{v2,v3,v4,T}) i nettverket fra oppgave 8. Hva er flyten på tvers av snittet?

59

### Hva er det minimale snittet i nettverket fra oppgave 8?

({S,v1,v3},{v2,v4,T}) = 34


({S,v1,v2,v3},{v4,T}) = 26, korrekt..


({S,v1,v2,v4},{v3,T}) ikke mulig


({S,v1,v2},{v3,v4,T}) 58

## Maksimum bipartitt matching

### Hva er en matching?

En delmengde av alle kanter, der hver node er tilknyttet maks en kant fra delmengden.

