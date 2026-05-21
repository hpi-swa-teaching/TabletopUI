accessing
getState

	^ Dictionary new
		at: #character put: self character getState;
		at: #mapCoordinates put: self getMapCoordinates;
		yourself