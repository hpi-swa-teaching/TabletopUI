toolbuilder
createSpecWith: aToolBuilder canAddMap: aBool

	| children |
	
	children := {
		self createDiceToolButtonSpecWith: aToolBuilder . 
		self createRulerToolButtonSpecWith: aToolBuilder .
		self createCharacterSheetButtonSpecWith: aToolBuilder .
		self createConnectedPlayersToolButtonSpecWith: aToolBuilder
	}.
	
	^ aToolBuilder pluggablePanelSpec new
		model: self;
		minimumWidth: 0;
		children: ( aBool ifTrue: [children copyWith: (self createNewMapToolButtonSpecWith: aToolBuilder)]
			ifFalse: [children]);
		frame: (0 @ 0 corner: 1 @ 1);
		yourself