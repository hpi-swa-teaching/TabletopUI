dice roll modifiers
animalHandling

	^ self wisdomModifier + (self proficiencyBonus * self skillsLookup at: #animalHandling) asString