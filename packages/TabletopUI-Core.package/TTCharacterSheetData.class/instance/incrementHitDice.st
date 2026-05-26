health and damage
incrementHitDice

	self hitDiceRemaining: self hitDiceRemaining + 1.
	self changed: #hitDiceRemainingString