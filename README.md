# TabletopUI
Welcome to the TabletopUI project - an interactive UI to play Dungeons and Dragons in Squeak. 

The project was started by a team of 4th semester students studying IT-Systems Engineering at Hasso-Plattner-Institute, and has since been continuously expanded with new features as part of a lecture in software engineering (SWE). 
## Installation
1. Get [Squeak 6.1 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/metacello/metacello)
3. Finally, load the package with the following command:

```
Metacello new
  baseline: 'Tabletop';
  repository: 'github://hpi-swa-teaching/TabletopUI:main/packages';
  load.
```
## Screenshot
![](documentation/tabletopScreenshot.png)

## Open
You can open the Tabletop UI with the command `TTTabletopWindow open`. A window will open offering you different configuration options before starting a Tabletop game.
## Main Functionalities
### Switching Players
You can switch to the desired player by clicking on its name in the player selection menu. You can find it in the multipanel on the right side of the screen when you select *Players*.
Certain commands can only be executed when the gamemaster is selected.
### Rolling the dice
Every player, including the gamemaster, can execute a dice roll.
To do so, you can use the dice tool which can be found on the left-hand side of the screen.
Alternatively, you can roll the dice via the input prompt on the bottom right.
The dice command is ```roll dx```, where x represents the maximum number of eyes the rolled dice can show. Valid dice are 4, 6, 8, 10, 12 and 20.  
A number y can be added to or subtracted from the dice result in the according command. This is done by ```roll dx[+|-]y```.  
It is also possible to roll z dice at once using the command ```roll zdx```.
You may combine modifiers and multiple dice rolls like so: ```roll zdx[+|-]y``` or roll different dice types by combining them with + or -.
### Fight Mode
When the gamemaster is selected, they can decide to start an initiative roll by typing either ```start fight```, ```start initiative``` or ```start ini```.
After this command, all players except the gamemaster may now roll a die to determine their fight position. This is an optional step. The gamemaster ends the round of dice rolls with ``end initiative`` or ``end ini``.
Now, the fight begins and the turnorder appears as a pop up list. 
A player rolls the dice as often as they want and ends their turn manually by typing ```end turn```.
At any time the gamemaster may remove players from the fight via the command ```remove [playername]```.  
To end the fight and return to the default mode the gamemaster can type ```end fight```.
### Add NPCs
NPCs can be added during the entire duration of the game via the side bar. In order to do so, a valid name must be entered into the provided input field. Then, the "Add NPC" button needs to be pressed.
### Measure distances
You can use the ruler tool on the left of the screen to measure distances on the map.
If you want to measure the distance between two tiles, simply drag your cursor between them.
A new window displaying the distance will open.
The distance will also be displayed in the log.
### Character Sheet
Select *Sheet* on the left of the screen to open the character sheet of the currently selected player.
The sheet has four pages. Click the arrow in the bottom right corner to turn the page. When you have arrived on the last page, the button will bring you back to the first page.
**Page 1:**  All relevant attributes of the current player and the possibility to edit those attributes according to DnD rules
**Page 2:** Storytelling and background information
**Page 3:** Spellcasting information
**Page 4:** Inventory and attacks
### Save Character Sheet
Select *Save* on the left of the screen to save the character sheet of the currently selected player and confirm it by clicking on *Save Character Sheet (s)* or by pressing ```ctrl + s```.
### Monster selection
Select *Monsters* in the top right corner to open the monster selection in the multipanel.
It shows a list of all available monsters.
Double click on a name to open the stat block of the selected monster. A new window will open where you can see all important information. By clicking *Add Token*, the monster will be added to the map.
### Wiki 
Select *Wiki* at the top right corner to open the wiki in the multipanel. 
In the wiki you can browse important DnD information, categorized by topic.
## Pre Game Functionality
When you start the game, you will be guided through a few selection screens.
**Step 1-3:** Select the number of players and who will be the gamemaster, as well as entering player names
**Step 4:** Here you can select a character sheet for each player who is not the gamemaster. When entering this step, each player is first assigned the default character sheet. You can select between different options by double clicking on a player's name. Either choose one of the predesigned templates, build a character or upload a previously saved character sheet.
**Step 5:** You can upload a token for each player except the gamemaster by double clicking on the player's name. A .png file can be selected in the new window.
### Character Builder
You can pick a class, race and values for the abilities of the character. If the character is able to cast spells, you can enter up to three spells and cantrips each. Use double clicks to make your selections.
### Upload Character Sheet
In the new window, you can select a file. Please make sure that the file you selected is a .obj file of a character sheet from a previous game.
## Contributors of [TabletopUI](https://github.com/hpi-swa-teaching/TabletopUI)
- [Constanze Kohrell](https://github.com/constanze23k)
- [Jonas Vinmann](https://github.com/SJayV)
- [Marieke Huisman](https://github.com/MariekeH22)
- [Miriam Koch](https://github.com/miriam-koch)
- [Rieke Hollenberg](https://github.com/rieke15)
- [Theresa Rudolphi](https://github.com/TRudolphi7)
- [Thomas Feinendegen](https://github.com/isuewo)

- [David Schroschk](https://github.com/DavidSchroschk)
- [Julian Arnold](https://github.com/julianaarnold)
- [Max Lietze](https://github.com/Lietze)
- [Ole Becker](https://github.com/ole1711)
- [Robert Kosmehl](https://github.com/Pungitius)

- [Benedikt Vidic](https://github.com/BenediktV)
- [Johanna Dahlkemper]( https://github.com/joh-dah)
- [Magnus Menger](https://github.com/cambryx)
- [Pia Beeck](https://github.com/piabeeck)
- [Rieke Freund](https://github.com/rfrx)

## Teaching Team
- [Ole Becker](https://github.com/ole1711)
- [Patrick Rein](https://github.com/codeZeilen)
- [Tom Braun](https://github.com/BraunTom)
