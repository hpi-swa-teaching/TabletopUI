# TabletopUI

Welcome to the TabletopUI project! We are a team of 4th semester students studying IT-Systems Engineering at Hasso-Plattner-Institute and this is the first project including a Tabletop UI. It is part of a lecture in softwareengineering techniques and the first iteration ist limited to the end of july. 

## Installation
1. Get [Squeak 5.2 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/metacello/metacello)
3. Finally, load the package with the following command:

```
Metacello new
  baseline: TabletopUI;
  repository: 'https://github.com/hpi-swa-teaching/TabletopUI';
  load.
```
## Open
You can open the Tabletop UI with the command `TTTabletopWindow open`. A window will open offering you different configuration options before starting a Tabletop game.

## Commands
### Rolling the dice
A dice can only be rolled by a player. If the gamemaster mode is selected so far, a normal player must be chosen first.
The dice command is 'roll dx'. x represents the maximum number of eyes the rolled dice can show.
In the dice command a number y can be added, subtracted or multiplied to the dice result. This is done by 'roll dx [+|-|\*] y'.

### Switching to gamemaster mode
In the player list you can select the gamemaster with a double click

## Contributors
- [Benedikt Vidic](https://github.com/BenediktV)
- [Pia Beeck](https://github.com/piabeeck)
- [Johanna Dahlkemper]( https://github.com/joh-dah)
- [Magnus Menger](https://github.com/cambryx)
- [Rieke Freund](https://github.com/rfrx)
- [Patrick Rein](https://github.com/codeZeilen)
- [Tom Braun]()
- Contributors of [TabletopUI](https://github.com/hpi-swa-teaching/TabletopUI)
