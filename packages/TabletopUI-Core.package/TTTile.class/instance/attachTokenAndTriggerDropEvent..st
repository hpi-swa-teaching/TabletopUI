drag and drop
attachTokenAndTriggerDropEvent: aTTToken

	aTTToken 
		position: self position;
		defaultTile: self.
	self 
		occupied: true;
		addMorph: aTTToken;
		changed: #dropEvent