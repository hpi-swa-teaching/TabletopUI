dice roll modifiers
animalHandling

	^ self wisdomModifier + (self proficiencyValue * self skillsLookup at: #animalHandling) asString