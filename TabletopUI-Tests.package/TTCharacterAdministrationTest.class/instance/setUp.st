running
setUp

	self characterAdministration: TTCharacterAdministration new.
	self characterAdministration npcs: self setUpNPCs.
	self characterAdministration players: self setUpPlayers.
	self characterAdministration playerCount: self characterAdministration players size