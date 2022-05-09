as yet unclassified
createDiceToolButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.0 corner: 1 @ 0.1);
		label: 'Dice';
		action: '';
		yourself