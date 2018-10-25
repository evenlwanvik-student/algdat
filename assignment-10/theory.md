# Korteste vei, én til alle

### Hva går korteste vei-problemet ut på?

Finne stier fra noder til andre noder som minimerer summen av kantvektene

###  Hvilke(n) påstand(er) er korrekt(e)?

Ved å snu alle kantene i en graf kan man finne korteste alle-til-én veier, gitt at man vet hvordan man finner korteste en-til-alle veier.

Selv om man har korteste vei fra node A til B og korteste vei fra node B til C vil man ikke kunne garantere at A -> B -> C er korteste vei mellom A og C.

### Anta at du har korteste vei mellom nodene A og C, som går gjennom node B. Hvilken påstand er korrekt?

Vi har også korteste veg mellom A og B, og B og C

### Hvilken påstand er korrekt?

Bellman-Ford algortimen finner korteste vei med negative kanter, men ikke negative sykler?

### Vi har u.d=5, v.d=10, w(u,v)=2. Hva blir u.d og v.d etter RELAX(u,v,w)?

u.d=5,v.d=7

### Vi har u.d=6, v.d=9, w(u,v)=4. Hva blir u.d og v.d etter RELAX(u,v,w)?

u.d=6,v.d=9

### Anta at du har kjørt en av pensumalgoritmene som løser korteste-vei problemet, én til alle, for grafen G=(V,E), med startnode s. Dersom en node v∈V−s har v.π=NIL, hva er v.d?

∞

## Bellman Ford

### I denne oppgaven skal du bruke Bellman-Ford (se side 651) for å finne korteste vei fra node F. Merk: Anta at algoritmen slakker utgående kanter fra noder i leksikalsk rekkefølge. Altså, utgående kanter fra node A før node b, utgående kanter fra node B før node C, osv. Etter kallet til INITIALIZE-SINGLE-SOURCE i algoritmen - hva er A.d?

∞ (Vi starter med F, så distansen til alle andre noder er uendelig)

### Etter kallet til INITIALIZE-SINGLE-SOURCE i algoritmen - hva er F.d?

0 (Vi starter med F)

### Etter én iterasjon av for-løkken på linje 2-4 - hva er D.d?

3 (via A)

### Etter én iterasjon av for-løkken på linje 2-4 - hva er B.d?

∞

### Etter 2 iterasjon av for-løkken på linje 2-4 - hva er E.d?

6

### Etter 2 iterasjon av for-løkken på linje 2-4 - hva er C.d?

6

### Hva er kjøretiden til Bellman-Ford?

O(VE) (O(V) initialize, O(V(E-1))=O(VE) relaxation, O(E) neg cycle etection => O(VE))

## DAG shortest path 

### Hvilke(n) påstand(er) er korrekt(e)?

Ingen av de andre påstandene er korrekte

## Dijkstras algoritme

### 1. I denne oppgaven skal du bruke grafen over. Vi skal finne korteste vei fra node F. For dette skal vi bruke Dijkstra (se side 658). Hvis du kan velge mellom to noder velger du i alfabetisk rekkefølge. I hvilken rekkefølge legges nodene til i S?

FEADCB

### Hva er C.d etter én interasjon av while løkken i linje 4-8?

8 (en relax fra foreldrenode F)

### Hva er D.d etter to iterasjon av while-løkken på linje 4-8?

4 (Relax fra E)

### Hva er C.d etter 3 iterasjoner av while-løkken i linje 4-8?

8 (fortsatt 8, ingen relax siden første iterasjon)

### Hva er C.d etter 4 iterasjoner av while-løkken i linje 4-8?

4 (relax fra D.d = 3)

### Hva er B.d etter 6 iterasjoner av while-løkken i linje 4-8?

5

### Hvilke(n) påstand(er) er korrekt(e)?

Dijkstra er en grådig algoritme.

### Hvordan beviser Teorem 24.6 (side 659) Dijkstra sin korrekthet?

Viser at neste node som velges til enhver tid har riktig avstandsestimat.
