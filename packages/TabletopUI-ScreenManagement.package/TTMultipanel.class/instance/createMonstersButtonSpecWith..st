button management
createMonstersButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (self buttonWidth * 2 @ 0 corner: self buttonWidth * 3 @ 1);
		label: 'Monsters';
		action: #openMonsters;
		color: #monstersColor;
		yourself