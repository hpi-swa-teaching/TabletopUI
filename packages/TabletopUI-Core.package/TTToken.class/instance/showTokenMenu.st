drag and drop
showTokenMenu

	| menu |
	menu := MenuMorph new.
	menu add: 'Remove token (defeated)' target: self selector: #removeFromMap.
	menu popUpInWorld