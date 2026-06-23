accessing - spellcasting
spellSlotMaximumAt: aLevelNumber put: aNumber

	(self spellSlots at: aLevelNumber) at: #maximum put: (aNumber asNumber max: 0).
	(self spellSlotCurrentAt: aLevelNumber) > (self spellSlotMaximumAt: aLevelNumber)
		ifTrue: [self spellSlotCurrentAt: aLevelNumber put: aNumber].
	self changed: ('spellSlot' , aLevelNumber asString , 'Maximum') asSymbol