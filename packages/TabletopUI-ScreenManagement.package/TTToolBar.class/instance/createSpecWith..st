toolbuilder
createSpecWith: aToolBuilder

	^ aToolBuilder pluggablePanelSpec new
		model: self;
		minimumWidth: 0;
		children: {
			self createDiceToolButtonSpecWith: aToolBuilder . 
			self createRulerToolButtonSpecWith: aToolBuilder .
			self createCharacterSheetButtonSpecWith: aToolBuilder.
			self createCharacterSaveButtonSpecWith: aToolBuilder};
		frame: (0 @ 0 corner: 1 @ 1);
		yourself