dice roll modifiers
wisdomSave

	^ self wisdomModifier + (self proficiencyValue * self proficiencyLookup at: #wisdomSave)