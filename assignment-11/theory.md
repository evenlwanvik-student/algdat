# Øving 11, teori: Alle til alle

### Alle-til-alle vha. Dijkstra: Hvordan kan du løse alle til alle korteste vei-problemet i en rettet graf med ikke-negative kantvekter, ved hjelp av Dijkstras algoritme?

Kjør algoritmen en gang fra hver node, totalt Θ(V) ganger.

### Alle-til-alle vha. SSSP: Hvordan kan du raskest finne korteste vei mellom alle par med noder i en rettet graf uten negative sykler, ved å kjøre en av algoritmene nedenfor fra hver node? Hva blir kjøretiden?'

Dijkstra m/min-heap O(V2lgV+VE)

## Question 3: Forgjengermatriser: 

### πij i en forgjengermatrise, forteller oss

Hvor man kom fra, på korteste vei fra j til i

### πij=nil betyr at

Enten er i=j eller så er det ingen sti fra j til i 

## Floyd-Warshall

### Hva er kjøretiden til Floyd-Warshall?

O(V3)

### Floyd-Warshall bruker vanligvis nabolister for å representere grafen

Usant.

### Implementasjonen av Floyd-Warshall i kapittel 25.2 i Cormen bruker unødvendig mye plass. I praksis bruker vi en versjon som bruker mindre plass. Hvor mye plass bruker denne implementasjonen?

Θ(V2)

### Ta stilling til følgende utsagn: 1. Etter at Floyd-Warshall har kjørt, kan diagonalen avstandsmatrisen D (dvs. d1,1, d2,2 osv.) inneholde positive tall. . Etter at Floyd-Warshall har kjørt, kan diagonalen avstandsmatrisen D (dvs. d1,1, d2,2 osv.) inneholde negative tall.

Begge utsagnene er sanne.

## Transitive-closure

### Oppgave fra en tidligere eksamen: I Transitive-Closure brukes den binære variabelen t(k)ij til å indikere om det går en sti fra i til j hvis alle noder på veien mellom dem må ligge i mengden 1,2,...,k. For eksempel er t(0)ij=1 hvis og bare hvis (i,j)∈E. Hva er utrykket for t(k)ij, når k>0?

t(k)ij = t(k−1)ij ∨ (t(k−1)ik ∧ t(k−1)kj)

### Dersom t(k)ij=0 betyr det at

Ingen av de andre alternativene.

## Johnsons algoritme

### Johnsons bruker andre algoritmer som subrutiner. Hvilke?

Dijkstra og Bellman-Ford

### Anta at vi bruker en min-heap. Da har Johnsons algoritme har kjøretid

O(VElgV)

### Johnsons algoritme finner korteste vei i grafer med negative sykler.

Usant.

### Hvilken teknikk er det som gjør Johnsons algoritme spesiell?

Revekting av kantvekter

### Hva blir kjøretiden til Johnsons algoritme i en rettet graf der alle par med noder har en kant hver vei mellom seg (en komplett digraf), dersom vi antar at vi bruker en Fibonacci-heap?


























































