setup - initialization
initializeSpellSlots

	self spellSlots: Dictionary new.
	1 to: self class maximumSpellcastingLevel do: [:level |
		self spellSlots at: level put: (Dictionary new
			at: #current put: 0;
			at: #maximum put: 0;
			yourself)]