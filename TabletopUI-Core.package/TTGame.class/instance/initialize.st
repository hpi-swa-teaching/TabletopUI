initialization
initialize

	super initialize.
	
	self playerCount: 0.
	self players: OrderedCollection new.
	self npcs: OrderedCollection new