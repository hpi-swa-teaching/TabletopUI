testing
test08GamemasterGameScreenCreatesNPC

	| screen npc |
	self window: TTTabletopWindow new.
	npc := TTCharacter newWithName: 'orc' role: TTCharacter npc.
	self window
		setAsGamemaster;
		openGameScreen.
	screen := self window contents first model.
	screen createNPC: npc.
	self assert: self window characterAdministration npcs size equals: 1