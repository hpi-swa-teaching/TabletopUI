updating
loadToken: aToken at: aTile
	
	| previousTile |
	previousTile := aToken owner.
	aToken 
		defaultTile: aTile;
		position: aTile position.
	aTile getOccupiedByToken: aToken.
	(previousTile notNil and: [previousTile submorphs isEmpty]) ifTrue: [
		 previousTile occupied: false].