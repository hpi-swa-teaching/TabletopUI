health and damage
decrementHitDice

	self currentHitDice: self currentHitDice - 1.
	self changed: #currentHitDiceString