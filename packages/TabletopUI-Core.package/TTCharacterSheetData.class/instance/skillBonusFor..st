accessing - skills
skillBonusFor: aSymbol

	| ability modifier |
	ability := self class skillAbilities at: aSymbol.
	modifier := self skillsLookup at: aSymbol.
	^ (self modifierOf: ability) + (modifier * self proficiencyBonus)