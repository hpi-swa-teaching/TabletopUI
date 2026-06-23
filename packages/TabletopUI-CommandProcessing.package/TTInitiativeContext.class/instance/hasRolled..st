roll for initiative
hasRolled: aTTCharacter

	^ self playersWhoRolled anySatisfy: [:aRolledCharacter | aRolledCharacter name = aTTCharacter name]