testing
test06IsMonster

	self assert: TTMonster goblin isMonster.
	self deny: (TTCharacter newWithName: '' role: TTCharacter player) isMonster