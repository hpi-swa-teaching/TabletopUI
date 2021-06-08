drag and drop
rejectDropMorphEvent: anEvent

	self
		formerOwner: self defaultTile;
		formerPosition: self defaultTile position.
	self defaultTile occupied: true.	

	super rejectDropMorphEvent: anEvent