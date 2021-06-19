initialization
initialize

	super initialize.
	
	self playerCount: 0.
	self isFighting: false.
	self players: OrderedCollection new