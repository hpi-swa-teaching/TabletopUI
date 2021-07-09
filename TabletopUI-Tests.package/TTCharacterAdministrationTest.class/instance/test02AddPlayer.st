testing
test02AddPlayer

	| player |
	
	self characterAdministration addNPC: (TTCharacter newWithName: 'Pit' role: #player).
	player := self characterAdministration npcs last.
	self assert: player role equals: #player.
	self assert: player name equals: 'Pit'