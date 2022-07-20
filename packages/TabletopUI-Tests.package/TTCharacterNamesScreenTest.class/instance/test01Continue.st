testing
test01Continue

	self screen characterAdministration addPlayer: (TTCharacter newWithName: '1' role: #player).
	self screen continue.
	self assert: self window contents first model class equals: TTGamemasterSelectionScreen.