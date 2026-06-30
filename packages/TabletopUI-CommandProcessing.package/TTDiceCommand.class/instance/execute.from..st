execution
execute: aContext from: aTTCharacter

	| value roll |
	roll := self executeDiceRoll.

	roll isValid ifFalse: [
		^ TTCommandMessage new
			value: 0;
			outputString: '';
			errorMessage: aContext invalidDiceRollMessageString;
			yourself].
	value := roll resultValue.
	^ TTCommandMessage new
		value: value;
		outputString: roll asStringWithoutResult;
		yourself