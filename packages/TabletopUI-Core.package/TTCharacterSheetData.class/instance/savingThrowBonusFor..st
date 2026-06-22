accessing - saving throws
savingThrowBonusFor: aSymbol

	| modifier |
	modifier := self savingThrowsLookup at: aSymbol.
	^ (self modifierOf: aSymbol) + (modifier * self proficiencyBonus)