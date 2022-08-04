dice roll modifiers
setThrowsMultiplier: aMultiplierSymbol to: aText

	self throwsLookup at: aMultiplierSymbol put: (self normalizeMultiplier: aText)