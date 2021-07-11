testing
test09RollMultipleWithNegativeModifier

	| dice |
	1 to: 100 do: [ :randomNumber |
		dice := (inputEvaluator evaluateInput: 'roll 5d8-10' from: player).
		self 
			assert: dice isValid equals: true;
			assert: dice modifier equals: -10.
		dice 
			rolls do: [:aNumber | self assert: (aNumber between: 1 and: 8)];
			do: [:aNumber | self assert: (dice resultValue between: -5 and: 30)]]