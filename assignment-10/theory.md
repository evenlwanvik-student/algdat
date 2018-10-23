# Korteste vei, én til alle

### Hva går korteste vei-problemet ut på?

Finne stier fra noder til andre noder som minimerer summen av kantvektene

###  Hvilke(n) påstand(er) er korrekt(e)?

Ved å snu alle kantene i en graf kan man finne korteste alle-til-én veier, gitt at man vet hvordan man finner korteste en-til-alle veier.

Selv om man har korteste vei fra node A til B og korteste vei fra node B til C vil man ikke kunne garantere at A -> B -> C er korteste vei mellom A og C.

### Anta at du har korteste vei mellom nodene A og C, som går gjennom node B. Hvilken påstand er korrekt?

Vi har også korteste veg mellom A og B, og B og C

### Hvilken påstand er korrekt?

Bellman-Ford algortimen finner korteste vei med negative kanter, men ikke negative sykler

### Vi har u.d=5, v.d=10, w(u,v)=2. Hva blir u.d og v.d etter RELAX(u,v,w)?

u.d=5,v.d=7

### Vi har u.d=6, v.d=9, w(u,v)=4. Hva blir u.d og v.d etter RELAX(u,v,w)?

u.d=6,v.d=9

### Anta at du har kjørt en av pensumalgoritmene som løser korteste-vei problemet, én til alle, for grafen G=(V,E), med startnode s. Dersom en node v∈V−s har v.π=NIL, hva er v.d?

0

10/Bellman_Ford_Graph.png
I denne oppgaven skal du bruke Bellman-Ford (se side 651) for å finne korteste vei fra node F.

### Merk: Anta at algoritmen slakker utgående kanter fra noder i leksikalsk rekkefølge. Altså, utgående kanter fra node A før node b, utgående kanter fra node B før node C, osv.

Etter kallet til INITIALIZE-SINGLE-SOURCE i algoritmen - hva er A.d?

