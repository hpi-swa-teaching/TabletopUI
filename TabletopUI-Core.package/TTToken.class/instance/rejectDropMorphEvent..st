drag and drop
rejectDropMorphEvent: anEvent

	self
		formerOwner: self defaultOwner;
		formerPosition: self defaultOwner position.
	self defaultOwner occupied: true.	

	super rejectDropMorphEvent: anEvent