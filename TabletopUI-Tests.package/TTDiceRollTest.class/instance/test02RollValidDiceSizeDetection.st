tests
test02RollValidDiceSizeDetection

	diceroll size: 1.
	self assert: diceroll isValid equals: false.
	diceroll size: 6.
	self assert: diceroll isValid equals: true