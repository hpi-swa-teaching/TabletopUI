setup - initialization
initializeSpellSlots

	self spellSlots: Dictionary new.
	1 to: self class maximumSpellcastingLevel do: [:levelIndex |
		self spellSlots at: levelIndex put: (Dictionary new
			at: #current put: 0;
			at: #maximum put: 0;
			yourself)]