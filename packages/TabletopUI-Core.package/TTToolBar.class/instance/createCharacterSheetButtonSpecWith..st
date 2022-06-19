toolbuilder
createCharacterSheetButtonSpecWith: aToolBuilder
	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.1 corner: 1 @ 0.2);
		label: 'Sheet';
		action: #openCharacterSheetDisplay;
		yourself