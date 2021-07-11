testing
test10testDiceRollasString

	"| result |
	result := diceroll roll: 6.
	result := diceroll roll: 6 multipleTimes: 3.
	self roll: 6 multipleTimes: 3.
	self assert: diceroll isValid equals: false.
	diceroll size: 6.
	self assert: diceroll isValid equals: true
	
	TO DO!"