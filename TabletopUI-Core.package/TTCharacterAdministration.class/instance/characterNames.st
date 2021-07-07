accessing
characterNames

	^ (self players collect: [:aTTPlayer | aTTPlayer name]) fusionWith: 
		(self npcs collect: [:aTTCharacter | aTTCharacter name])