drag and drop
acceptDroppingMorph: aTTToken event: anEvent

	aTTToken 
		position: self position;
		defaultTile: self.
	self 
		occupied: true;
		addMorph: aTTToken;
		changed: #dropEvent