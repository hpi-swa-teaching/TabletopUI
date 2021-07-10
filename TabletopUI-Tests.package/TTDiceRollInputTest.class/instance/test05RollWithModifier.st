tests
test05RollWithModifier

	| dice |
	1 to: 100 do: [ :randomNumber |
		dice := inputEvaluator evaluateInput: 'roll d4+3' from: player.
		self assert: dice isValid equals: true.
		self assert: dice modifier equals: 3.
		self assert: ((dice rolls at: 1) between: 1 and: 4).
		self assert: (dice resultValue between: 4 and: 7)]
