dice roll modifiers
dexteritySave

	^ self dexterityModifier + (self proficiencyValue * self throwsLookup at: #dexteritySave) asString