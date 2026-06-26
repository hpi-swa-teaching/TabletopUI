testing
test13RollEndToEnd

	| alice bob gm |
	alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
	bob := TTCharacter newWithName: 'Bob' role: TTCharacter player.
	gm := TTCharacter newWithName: 'GM' role: TTCharacter gamemaster.
	self context addDependent: self.
	self contextHasChanged: false.
	self assertRoll: 12 for: alice.
	self assertRoll: 10 for: bob.
	self assert: self contextHasChanged.
	self context endInitiativePhaseFrom: gm.
	self assertContextStateWith: alice