dice roll modifiers
constitutionSave

	^ self constitutionModifier + (self proficiencyValue * self throwsLookup at: #constitutionSave) asString