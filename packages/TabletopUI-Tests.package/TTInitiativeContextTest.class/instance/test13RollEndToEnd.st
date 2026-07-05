testing
test13RollEndToEnd

	| alice bob gm aliceRoll bobRoll |
	aliceRoll := self randomRoll + 1.
	bobRoll := self randomRollWorseThan: aliceRoll.
	alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
	bob := TTCharacter newWithName: 'Bob' role: TTCharacter player.
	gm := TTCharacter newWithName: 'GM' role: TTCharacter gamemaster.
	self context addDependent: self.
	self contextHasChanged: false.
	self assertRoll: aliceRoll for: alice.
	self assertRoll: bobRoll for: bob.
	self context endInitiativePhaseFrom: gm.
	self assertContextStateWith: alice