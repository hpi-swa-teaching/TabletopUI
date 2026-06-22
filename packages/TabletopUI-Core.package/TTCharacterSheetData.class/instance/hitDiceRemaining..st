accessing - combat
hitDiceRemaining: anObject

	hitDiceRemaining := ((anObject asNumber) min: self level) max: 0.
	self 
		changed: #hitDiceRemaining;
		changed: #hitDiceRemainingString