accessing
characterNames

	^ (self players collect: [:aTTCharacter | aTTCharacter name]) fusionWith: 
		(self npcs collect: [:aTTCharacter | aTTCharacter name])