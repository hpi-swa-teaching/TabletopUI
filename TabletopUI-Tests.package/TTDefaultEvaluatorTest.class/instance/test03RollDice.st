test	ing
test03RollDice

	| output |
	
	100 timesRepeat: [
		output := self evaluator evaluateInput: self rolld6 from: self players first.
		self assert: (output asNumber between: 1 and: 6)]