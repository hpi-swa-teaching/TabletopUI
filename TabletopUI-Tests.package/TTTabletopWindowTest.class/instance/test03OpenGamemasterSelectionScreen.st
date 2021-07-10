testing
test03OpenGamemasterSelectionScreen
	
	self window characterAdministration addPlayer: (TTCharacter newWithName: 'a' role: TTCharacter player).
	self window openGamemasterSelectionScreen.
	self assert: self window contents size equals: 1.
	self assert: self window contents first model class equals: TTGamemasterSelectionScreen