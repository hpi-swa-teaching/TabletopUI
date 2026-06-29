testing - interaction
test10SpendSpellSlotsButton

	| display |
	
	display := self openDisplay.
	1 to: 9 do: [:level |
		display model spellSlotMaximumAt: level put: 4.
		display model spellSlotCurrentAt: level put: 4.
		display perform: ('applySpendSpellSlot' , level asString) asSymbol.
		self assert: (display model spellSlotCurrentAt: level) equals: 3]