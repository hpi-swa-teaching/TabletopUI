helpers
extractPositionFrom: aDict

	| coordinateDict coordinates |
	
	coordinateDict := aDict at: 'position'.
	coordinates := coordinateDict at: TTGameStateKeys keyPixelCoordinates.
	^ (coordinates at: 'x') @ (coordinates at: 'y').