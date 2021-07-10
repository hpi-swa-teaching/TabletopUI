as yet unclassified
test03SelectGameMaster

	self screen selectedIndex: 2.
	self screen selectGamemaster.
	self assert: (self characterAdministration players at: 1) role equals: TTCharacter player.
	self assert: (self characterAdministration players at: 2) role equals: TTCharacter gamemaster