tasks
createCharacterSaveButtonSpecWith: aToolBuilder

	^ aToolBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0 @ 0.3 corner: 1 @ 0.4);
		label: 'Save';
		action: #saveCharacterSheet;
		enabled: #isCharacterSheetEnabled;
		yourself