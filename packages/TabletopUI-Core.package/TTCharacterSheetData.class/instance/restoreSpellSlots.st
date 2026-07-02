rules - combat
restoreSpellSlots

	self spellSlots keysDo: [:levelIndex | 
		self spellSlotCurrentAt: levelIndex put: (self spellSlotMaximumAt: levelIndex)]