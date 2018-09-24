# Dynamisk Programmering

## Grunnleggende

### Hva vil det si at et problem har optimal substruktur?
At dersom vi løser delinstansene optimalt kan vi også løse problemet optimalt

### Hva innebærer overlappende delinstanser?
At samme delinstansen må løses flere ganger av en rekursiv algoritme

### Hvilket av disse problemene er hensiktsmessig å løse med dynamisk programmering?

Finne et element som forekommer mer enn én gang i en liste bestående av n heltall mellom 1 og n-1.

## Rekursive problemer

### Merge-sort er et eksempel på en algoritme som rekursivt løser et problem. Hvorfor kan vi ikke bruke dynamisk programmering til å forbedre den?

Fordi delproblemene ikke overlapper

### Hvilken av disse rekursive dekomponeringene beskriver et problem som trolig kan løses ved hjelp av dynamisk programmering? Hint: Prøv å tegne delinstans-grafen og se etter overlapp, start med f.eks. P(5,5) og se om noen av delinstansene blir like)

