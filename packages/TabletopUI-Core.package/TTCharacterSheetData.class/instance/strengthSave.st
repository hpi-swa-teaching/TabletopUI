dice roll modifiers
strengthSave

	^ self strengthModifier + (self proficiencyValue * self throwsLookup at: #strengthSave) asString