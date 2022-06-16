health and damage
incrementHitDice

	self currentHitDice: self currentHitDice + 1.
	self changed: #currentHitDiceString.