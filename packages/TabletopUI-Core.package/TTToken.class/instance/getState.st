accessing
getState

	^ Dictionary new
		at: TTGameStateKeys keyCharacter put: self character getState;
		at: TTGameStateKeys keyMapCoordinates put: self getMapCoordinates;
		yourself