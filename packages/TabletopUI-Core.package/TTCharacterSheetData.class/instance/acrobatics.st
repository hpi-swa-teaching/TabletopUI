dice roll modifiers
acrobatics

	^ self dexterityModifier + (self proficiencyValue * self skillsLookup at: #acrobatics) asString