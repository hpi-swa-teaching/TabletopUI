dropping/grabbing
acceptDroppingMorph: aTTToken event: anEvent

	self attachToken: aTTToken.
	
	self networkFacade updateTile: self OccupyingToken: aTTToken.
	aTTToken networkFacade updateToken: aTTToken Position: aTTToken getMapCoordinates ToTile: self