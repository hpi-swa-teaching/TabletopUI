dice roll modifiers
constitutionSave

	^ self constitutionModifier + (self proficiencyBonus * self throwsLookup at: #constitutionSave) asString