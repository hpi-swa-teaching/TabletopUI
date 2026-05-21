initialization
loadToken: aToken at: aTile
	
	| previousTile |
	previousTile := aToken owner.
	aToken 
		defaultTile: aTile;
		position: aTile position.
	aTile 
		addMorph: aToken;
		occupied: true.
	(previousTile isTTTile and: previousTile submorphs isEmpty) ifTrue: [
		 previousTile occupied: false].