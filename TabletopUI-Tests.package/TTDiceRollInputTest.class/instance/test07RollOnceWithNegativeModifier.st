tests
test07RollOnceWithNegativeModifier

	| dice |
	1 to: 100 do: [ :randomNumber |
		dice := inputEvaluator evaluateInput: 'roll d8-2' from: player.
		self 
			assert: dice isValid equals: true;
			assert: dice modifier equals: -2;
			assert: ((dice rolls at: 1) between: 1 and: 8);
			assert: (dice resultValue between: -1 and: 6)]
