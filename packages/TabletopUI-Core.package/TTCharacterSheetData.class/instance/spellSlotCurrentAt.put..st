accessing - spellcasting
spellSlotCurrentAt: aLevelNumber put: aNumber

	| maximum |
	maximum := self spellSlotMaximumAt: aLevelNumber.
	(self spellSlots at: aLevelNumber) at: #current put: ((aNumber max: 0) min: maximum).
	self changed: ('spellSlot' , aLevelNumber asString , 'Current') asSymbol