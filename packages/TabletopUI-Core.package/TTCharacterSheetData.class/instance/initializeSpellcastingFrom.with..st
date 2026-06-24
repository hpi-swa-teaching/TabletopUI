setup - initialization
initializeSpellcastingFrom: aDictionary with: aNumber

	| nextSlot |
	nextSlot := 1.
	aDictionary do: [ :spell |
		(spell = 0) ifFalse: [
			self spellAt: aNumber slot: nextSlot field: #name put: spell.
			nextSlot := nextSlot + 1]]