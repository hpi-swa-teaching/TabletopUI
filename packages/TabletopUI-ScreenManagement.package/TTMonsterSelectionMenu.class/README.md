A TTMonsterSelectionMenu is the model behind the monsters tab of the multipanel. It lists the monster templates of the character administration, shows the stat block of the selected monster and lets the gamemaster place an independent copy of it on the map.

Instance Variables
	characterAdministration:		<Object>
	map:		<TTMap>
	selectedIndex:		<Number>

characterAdministration
	- stores information about the participating characters

map
	- stores the map of the current game screen so that one can add monster tokens to it

selectedIndex
	- indicates which monster is selected
