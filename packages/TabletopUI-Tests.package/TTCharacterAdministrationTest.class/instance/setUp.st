running
setUp

	self characterAdministration: TTCharacterAdministration new.
	self characterAdministration 
		npcs: self setUpNPCs;
		players: self setUpPlayers;
		playerCount: self characterAdministration players size