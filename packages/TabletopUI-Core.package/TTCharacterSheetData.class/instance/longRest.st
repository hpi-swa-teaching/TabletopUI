health and damage
longRest

	self currentHP: self maxHP.
	self temporaryHP: 0.
	self deathSaveSuccesses: 0.
	self deathSaveFailures: 0.
	"hitDice keysAndValuesDo: [:dieType :pair |
		| total recovered newRemaining |
		total := pair first.
		recovered := (total // 2) max: 1.
		newRemaining := (pair second + recovered) min: total.
		hitDice at: dieType put: (Array with: total with: newRemaining)].
	self changed: #selectedHitDiceRemaining"