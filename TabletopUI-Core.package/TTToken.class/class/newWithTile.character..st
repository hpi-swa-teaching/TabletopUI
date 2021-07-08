initialization
newWithTile: aTTTile character: aTTCharacter
 
	aTTTile occupied: true.
	
	^ self new 
		defaultTile: aTTTile;
		character: aTTCharacter;
		initializeFormFor: aTTCharacter;
		yourself