dice roll modifiers
strengthSave

	^ self strengthModifier + (self proficiencyBonus * self throwsLookup at: #strengthSave) asString