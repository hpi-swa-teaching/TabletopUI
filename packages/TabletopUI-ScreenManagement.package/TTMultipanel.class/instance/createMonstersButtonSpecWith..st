button management
createMonstersButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0.5 @ 0 corner: 0.75 @ 1);
		label: 'Monsters';
		action: #openMonsters;
		color: #monstersColor;
		yourself