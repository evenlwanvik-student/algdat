# Minimale spenntrær

### Tidligere eksamensoppgave: Hva inneholder prioritetskøen som brukes i Prims algoritme?

Noder

### Disjoint Set Forest: Hvilke påstander stemmer om Disjoint Set Forest-datastrukturen (side 568 i boka)?

Etter Find-Set(x) vil alle noder i treet som x tilhører ha samme forelder x.p

## Prim og Kruskal

### Under forløpet til Prim og Kruskal kaller vi mengden med kanter som foreløpig er valgt A. For hvilke algoritmer kan A inneholde mer enn ett tre om gangen?

Bare Kruskal

### Hvilke påstander stemmer?

Feil..

## Kruskals algoritme 

### Hva skjer dersom man unnlater å sortere kantene i Kruskals algoritme?

Man får et spenntre. (bare ikke et minimalt spenntre)

## Finne minimale spenntrær

### Hva blir det minimale spenntreet for figuren under?

A-D, D-C, B-C, C-H, G-H, F-G, E-H

### Dersom du bruker Kruskals algoritme for å finne det minimale spenntreet i oppgave 6, hvilken kant velges som den syvende kanten?

C-D

### Dersom du bruker Prims algoritme for å finne det minimale spenntreet i oppgave 6, hvilken kant velges som den femte kanten? Start i node A.

E-H

## Minimale spenntrær

### Et lite land langt, langt borte består av en mengde øyer. Innbyggerne har lenge samlet inn penger for å få veiforbindelse mellom alle øyene. Prislappen på broene er kun avhengig av broenes lengder og de ønsker derfor å binde sammen øyene med kortest mulig samlet brolengde. Hvor mange broer vil du trenge dersom det er n øyer?

n−1

### Hvis kanten (u,v) er den kanten med lavest vekt i en sammenhengende graf, så er (u,v) med i ett og bare ett minimalt spenntre av grafen.

usant

### Hvis kanten (u,v) har lavere vekt enn alle de andre kantene i en sammenhengende graf, så er (u,v) med i alle minimale spenntre av grafen.

sant

### Hvis alle kantene i en sammenhengende graf har forskjellige vekter, vil grafen kun ha ett minimalt spenntre.

sant

### Dersom ikke alle kantvektene i en sammenhengende graf er unike, vil denne grafen nødvendigvis ha flere minimale spenntrær.

Usant

## Grubleoppgave 

### Din venn Lurvik tror han har laget en god algoritme for å finne minimale spenntrær. Anta en sammenhengende og urettet graf. Algoritmen er som følger: La S betegne mengden med foreløpig valgte noder, og A mengden med foreløpig valgte kanter.

1) S = ∅

2) A = ∅

3) for u ∈ V

4)     if u ∉ S

5)         Velg kanten (u, v) ut fra u med lavest vekt

6)         A = A ∪ {(u, v)}

7)         S = S ∪ {u, v}

Hvilket alternativ er riktig?


