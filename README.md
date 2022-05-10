# TabletopUI

Welcome to the TabletopUI project!  
We are a team of 4th semester students studying IT-Systems Engineering at Hasso-Plattner-Institute and this is the first project including a Tabletop UI. It is part of a lecture in software engineering techniques (swt1) and the first iteration ist limited to the end of july 2021. 

## Installation
1. Get [Squeak 5.2 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/metacello/metacello)
3. Finally, load the package with the following command:

```
Metacello new
  baseline: 'Tabletop';
  repository: 'github://hpi-swa-teaching/TabletopUI:main/packages';
  load.
```
## Screenshot
![](https://github.com/hpi-swa-teaching/TabletopUI/blob/main/documentation/tabletopScreenshot.png)

## Open
You can open the Tabletop UI with the command `TTTabletopWindow open`. A window will open offering you different configuration options before starting a Tabletop game.

## Main Functionalities
### Switching Players
You can switch to the desired player by clicking on its name in the player selection menu next to the input field.  
There are certain commands that can only be executed when the gamemaster is selected.

### Rolling the dice
Every player including the gamemaster can execute a dice roll.  
The dice command is ```roll dx```. x represents the maximum number of eyes the rolled dice can show. Valid dice sizes are 4, 6, 8, 10, 12 and 20.  
In the dice command a number y can be added or subtracted to the dice result. This is done by ```roll dx[+|-]y```.  
It is also possible to roll z dices at once using the command ```roll zdx```.  
You can also combine modifiers and multiple dice rolls like this: ```roll zdx[+|-]y```.

### Fight Mode
When the gamemaster is selected, one can choose to begin an initiative roll. The command to start an initiative roll is ```start fight```.  
After this command, all players except the gamemaster may now roll a dice to determine their fight position. Not all players have to roll the dice. The gamemaster ends the dice roll round with ``finalize initiative``.  
Now, the fight begins and the players can roll the dice in the order which appears in the pop up player list. 
A player can roll the dice as often as he/she wants to and ends its turn manually by typing "end turn".
At any time the gamemaster can remove players from the fight via the command ```remove [playername]```.  
To end the fight and return to the default mode the gamemaster can use ```end fight```.

### Add NPCs
NPCs can be added during the entire game through the side bar. To do this, a valid name must be entered in the provided input field and then the "Add NPC" button must be pressed.


## Contributors of [TabletopUI](https://github.com/hpi-swa-teaching/TabletopUI)
- [Benedikt Vidic](https://github.com/BenediktV)
- [Johanna Dahlkemper]( https://github.com/joh-dah)
- [Magnus Menger](https://github.com/cambryx)
- [Pia Beeck](https://github.com/piabeeck)
- [Rieke Freund](https://github.com/rfrx)

## Teaching Team
- [Patrick Rein](https://github.com/codeZeilen)
- [Tom Braun](https://github.com/BraunTom)
