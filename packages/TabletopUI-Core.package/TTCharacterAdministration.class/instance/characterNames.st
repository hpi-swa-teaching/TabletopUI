accessing
characterNames

	| names |
	
	names := self players collect: [:aTTCharacter | aTTCharacter name].
	names addAll: (self npcs collect: [:aTTCharacter | aTTCharacter name]).
	
	^ names