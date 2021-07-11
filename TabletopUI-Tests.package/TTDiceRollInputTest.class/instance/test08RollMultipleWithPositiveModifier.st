testing
test08RollMultipleWithPositiveModifier

	| dice |
	1 to: 100 do: [ :randomNumber |
		dice := (inputEvaluator evaluateInput: 'roll 2d6+5' from: player).
		self 
			assert: dice isValid equals: true;
			assert: dice modifier equals: 5.
		dice 
			rolls do: [:aNumber | self assert: (aNumber between: 1 and: 6)];
			do: [:aNumber | self assert: (dice resultValue between: 7 and: 17)]]