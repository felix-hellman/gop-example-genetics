# gop-example-genetics

## Example project showing demo library felix-hellman/genetics version 0.0.1

This demo fetches an implementation of https://en.wikipedia.org/wiki/Genetic_algorithm

Which was used in this gamejam https://itch.io/jam/aiandgames-2021


Different genes return different strings which are then scored by the Demo script and fed back into genetic pool

```
"Hello" = +1
"Goodbye" = -1
"Dummy1" = -1
"Dummy2" = -1
[empty_set] = -1
"Hello" and "HelloCombo" = +10 #HelloCombo has no benefit on its own but is strongly favoured when paired with Hello
```

## Installation
```bash
gop install
```

## Gamejam
When this algorithm was used during the gamejam we used the progress of the maze as score to determine what genes was benefitial for survival
