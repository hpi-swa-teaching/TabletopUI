as yet unclassified
test03SelectGameMaster

	self screen 
		selectedIndex: 2;
		selectGamemaster.
	self 
		assert: (self characterAdministration players at: 1) role equals: TTCharacter player;
		assert: (self characterAdministration players at: 2) role equals: TTCharacter gamemaster