rules - health and damage
gainHitDie

	self
		hitDiceRemaining: self hitDiceRemaining + 1;
		changed: #hitDiceRemaining