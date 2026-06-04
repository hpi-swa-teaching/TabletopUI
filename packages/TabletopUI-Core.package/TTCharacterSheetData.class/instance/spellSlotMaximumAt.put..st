accessing - spellcasting
spellSlotMaximumAt: aLevelNumber put: aNumber

	(self spellSlots at: aLevelNumber) at: #maximum put: (aNumber max: 0).
	self changed: ('spellSlot' , aLevelNumber asString , 'Maximum') asSymbol