rules - health and damage
spendHitDie

	self
		hitDiceRemaining: self hitDiceRemaining - 1;
		changed: #hitDiceRemaining