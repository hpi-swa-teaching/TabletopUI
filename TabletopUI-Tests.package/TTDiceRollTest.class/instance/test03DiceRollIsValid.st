testing
test03DiceRollIsValid

	self diceroll size: 1.
	self deny: self diceroll isValid.
	self diceroll size: 6.
	self assert: self diceroll isValid