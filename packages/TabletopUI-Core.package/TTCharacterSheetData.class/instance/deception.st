dice roll modifiers
deception

	^ self charismaModifier + (self proficiencyBonus * self skillsLookup at: #deception) asString