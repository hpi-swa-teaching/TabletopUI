token placement
attachToken: aTTToken
	
	aTTToken moveToPosition: self position onTile: self.
	self getOccupiedByToken: aTTToken.
	
	self networkFacade updateTile: self OccupyingToken: aTTToken.
	aTTToken networkFacade updateToken: aTTToken Position: aTTToken getMapCoordinates ToTile: self.