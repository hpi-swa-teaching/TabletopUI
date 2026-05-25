dice roll modifiers
dexteritySave

	^ self dexterityModifier + (self proficiencyBonus * self throwsLookup at: #dexteritySave) asString