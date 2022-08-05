toolbuilder
createDiceToolButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.0 corner: 1 @ 0.1);
		label: 'Dice';
		action: #toggleDiceToolDisplay;
		color: #diceToolButtonColor;
		yourself