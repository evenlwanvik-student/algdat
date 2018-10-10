# Traversering av grafer

## Representasjon av grafer

### Hvilke(n) påstand(er) stemmer om følgende figurer? Anta at grafen som beskrives kalles G=(V,E). (se bildet på INGInious)

Alle er rett???

### Gitt at |V|=|E|2, hvordan kan grafen G lagres mest plasseffektivt i denne situasjonen?

Aner ikke.. tenker de kanskje er like plasseffektive?

### Anta at du har to noder, u,v∈V. Hvor lang tid vil det ta å sjekke om det finnes en kant, e∈E, som går fra u til v gitt at grafen G er representert ved hjelp en nabomatrise? Anta at du ikke vet noe om hvor mange kanter eller hvor mange noder det finnes i G.

O(1) (raskt oppslag M[i][j] direkte)

### Hvor lang til vil tilsvarende oppslag ta hvis G er en naboliste-representasjon og det går minst én kant ut fra hver node?

In an adjacency list each vertex u∈V is associated with a list of adjacent vertices.
Given a graph G=(V,E), in order to check if the edge (u,v)∈E you need to check whether v∈adjacent[u].
A node can have at most O(|V|) neighbors, from here the complexity follows.

## Bredde-først-søk

### Anta at alle konflikter løses ved hjelp av leksikografisk ordning (ved eventuelle konflikter velges den noden med bokstav tidligst i alfabetet, altså A før B, B før C osv.)

A,B,C,D

### Hvilke(n) påstand(er) stemmer om BFS?

Implementeres vanligvis med en kø

### For hvilket av alternativene under er vi garantert at bredde-først-søk finner korteste vei i en vilkårlig sammenhengende graf?

As pointed above, BFS can only be used to find shortest path in a graph if:

There are no loops

All edges have same weight or no weight.

Alle kantene har lik ikke-negativ vekt.

## Dybde-først-søk

### DFS blir kjørt med påfølgende graf med A som rotnode. I hvilken rekkefølge blir de fire første nodene farget svart?

G,F,B,H

### Hvilke(n) påstand(er) stemmer om DFS?

Det er svært unaturlig å implementere DFS med heap ??

Det er svært unaturlig å implementere DFS med kø

### Et dypde-først-søk kan brukes til å klassifisere kantene i en graf. Hvilken av følgende kanttyper betegner en kant som går fra en forgjenger (ancestor) til en etterkommer (descendant)?

Tree edge

### Hva slags type kant kan vi ha kommet til når vi kommer til en node som allerede er farget svart i et dypde-først-søk?

Forward edge or cross-edge (begge)

## Topologisk sortering

### Hvilke(n) av følgende alternativ er en gyldig topologisk sortering?

A,E,D,C,I,H,B,F,G

### Du ønsker å lage en topologisk sortering av en graf G=(V,E). Hvilke av følgende kriterier må være sanne (for grafen G) for at det skal finnes en topologisk sortering?

Den må være rettet og asyklisk (en DAG)

## Tidligere eksamensoppgave

### Du prøver å implementere BFS for urettede grafer, men på grunn av en kodefeil, er rekkefølgen på nodene i køen din ikke lenger FIFO, men helt vilkårlig. Kan du nå være sikker på å besøke alle nodene?

Ja, dersom grafen er sammenhengende (syklisk?)

## Best-case-kjøretid for BFS og DFS

### Hva er best-case-kjøretid for BFS og DFS gitt implementasjonen i læreboken?

O(1) for BFS og O(|V|+|E|) for DFS




