tests
test06RollOnceWithPositiveModifier

	| dice |
	1 to: 100 do: [ :randomNumber |
		dice := inputEvaluator evaluateInput: 'roll d4+3' from: player.
		self 
			assert: dice isValid equals: true;
			assert: dice modifier equals: 3;
			assert: ((dice rolls at: 1) between: 1 and: 4);
			assert: (dice resultValue between: 4 and: 7)]
