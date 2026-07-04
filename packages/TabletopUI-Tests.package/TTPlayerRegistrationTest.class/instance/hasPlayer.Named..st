testing
hasPlayer: aTTTabletopWindow Named: name

	| characterAdministration |
	characterAdministration := aTTTabletopWindow characterAdministration.
	
	^ characterAdministration characterNames includes: name