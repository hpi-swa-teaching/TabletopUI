rules - combat
updateHitDice

	self hitDiceRemaining
		ifNotNil: [self hitDiceRemaining: ((self hitDiceRemaining min: self level) max: 0)]