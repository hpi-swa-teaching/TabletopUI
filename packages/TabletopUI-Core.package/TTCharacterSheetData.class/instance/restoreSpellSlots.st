rules - health and damage
restoreSpellSlots

	self spellSlots keysDo: [:level | 
		self spellSlotCurrentAt: level put: (self spellSlotMaximumAt: level)]