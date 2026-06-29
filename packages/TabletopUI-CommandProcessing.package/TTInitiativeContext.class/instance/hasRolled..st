roll for initiative
hasRolled: aTTCharacter

	^ self playersWhoRolled anySatisfy: [:aRolledCharacterName | aRolledCharacterName = aTTCharacter name]