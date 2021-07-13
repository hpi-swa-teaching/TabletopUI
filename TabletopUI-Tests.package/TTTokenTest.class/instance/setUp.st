running
setUp

	super setUp.
	
	self tile: TTTile new.
	self token: (TTToken newWithTile: self tile character: 
		(TTCharacter newWithName: '' role: TTCharacter npc))