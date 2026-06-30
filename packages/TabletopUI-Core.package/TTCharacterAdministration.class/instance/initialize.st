initialization
initialize

	super initialize.
	
	self 
		playerCount: 0;
		playerSelectionMenu: (TTPlayerSelectionMenu new);
		players: OrderedCollection new;
		npcs: OrderedCollection new;
		monsters: TTMonster allTemplates