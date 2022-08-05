dice roll modifiers
setSkillsMultiplier: aMultiplierSymbol to: aText

	self skillsLookup at: aMultiplierSymbol put: (self normalizeMultiplier: aText)