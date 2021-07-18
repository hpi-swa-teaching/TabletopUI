drag and drop
acceptDroppingMorph: aTTToken event: anEvent

	self occupied: true.
	aTTToken 
		position: self position;
		defaultTile: self.
	self addMorph: aTTToken