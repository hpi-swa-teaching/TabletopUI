token placement
attachToken: aTTToken
	
	aTTToken moveToPosition: self position onTile: self.
	self getOccupiedByToken: aTTToken.