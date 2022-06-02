dice roll modifiers
wisdomSave

	^ self wisdomModifier + (self proficiencyValue * self throwsLookup at: #wisdomSave) asString