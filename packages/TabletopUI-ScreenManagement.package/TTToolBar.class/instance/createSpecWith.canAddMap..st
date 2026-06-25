toolbuilder
createSpecWith: aToolBuilder canAddMap: aBool
	
	^ aToolBuilder pluggablePanelSpec new
		model: self;
		minimumWidth: 0;
		children: ( aBool ifTrue: [{
				self createDiceToolButtonSpecWith: aToolBuilder . 
				self createRulerToolButtonSpecWith: aToolBuilder .
				self createCharacterSheetButtonSpecWith: aToolBuilder .
				self createConnectedPlayersToolButtonSpecWith: aToolBuilder .
				self createNewMapToolButtonSpecWith: aToolBuilder}]
			ifFalse: [{
				self createDiceToolButtonSpecWith: aToolBuilder . 
				self createRulerToolButtonSpecWith: aToolBuilder .
				self createCharacterSheetButtonSpecWith: aToolBuilder .
				self createConnectedPlayersToolButtonSpecWith: aToolBuilder}]);
		frame: (0 @ 0 corner: 1 @ 1);
		yourself