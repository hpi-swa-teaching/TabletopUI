drag and drop
attachTokenAndTriggerDropEvent: aTTToken
	
	aTTToken moveToPosition: self position onTile: self.
	self getOccupiedByToken: aTTToken.
	
	self networkFacade 
		updateToken: aTTToken Position: aTTToken getMapCoordinates ToTile: self;
		updateTile: self OccupyingToken: aTTToken.
	
	