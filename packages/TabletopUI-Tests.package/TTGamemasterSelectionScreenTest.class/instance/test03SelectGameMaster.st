testing
test03SelectGameMaster

	self screen 
		selectedIndex: 2;
		selectGamemaster.
	self 
		assert: (self characterAdministration players first) role equals: TTCharacter player;
		assert: (self characterAdministration players second) role equals: TTCharacter gamemaster