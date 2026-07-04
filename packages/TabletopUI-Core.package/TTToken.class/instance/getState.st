accessing
getState

	^ Dictionary new
		at: TTGameStateKeys keyCharacter put: self character getState;
		at: TTGameStateKeys keyTileCoordinates put: self getTileCoordinates;
		yourself