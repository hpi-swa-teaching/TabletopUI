dice roll modifiers
strengthSave

	^ self strengthModifier + (self proficiencyValue * self proficiencyLookup at: #strengthSave)