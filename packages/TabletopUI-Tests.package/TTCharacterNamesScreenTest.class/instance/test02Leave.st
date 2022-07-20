testing
test02Leave

	self screen characterAdministration addPlayer: (TTCharacter newWithName: '1' role: #player).
	self screen leave.
	self assert: self window contents first model class equals: TTPlayerCountScreen.