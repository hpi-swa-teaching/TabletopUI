drag and drop
acceptDroppingMorph: aTTToken event: anEvent

	self occupied: true.
	aTTToken position: self position.
	aTTToken defaultTile: self.
	self addMorph: aTTToken