button management
createMonstersButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0.4 @ 0 corner: 0.6 @ 1);
		label: 'Monsters';
		action: #openMonsters;
		color: #monstersColor;
		yourself