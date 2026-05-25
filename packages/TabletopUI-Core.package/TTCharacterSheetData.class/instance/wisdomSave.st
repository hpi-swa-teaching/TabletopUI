dice roll modifiers
wisdomSave

	^ self wisdomModifier + (self proficiencyBonus * self throwsLookup at: #wisdomSave) asString