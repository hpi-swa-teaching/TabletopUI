drag and drop
acceptDroppingMorph: aTTToken event: anEvent

	self occupied: true.
	aTTToken position: self position.
	aTTToken defaultOwner: self.
	self addMorph: aTTToken