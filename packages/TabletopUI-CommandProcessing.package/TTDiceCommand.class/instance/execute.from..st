execution
execute: aContext from: aTTCharacter
	
	| value diceRoll|
	diceRoll := self executeDiceRoll.
	diceRoll isValid ifFalse: [
		^TTCommandMessage new
			value: 0;
			outputString: '';
			errorMessage: aContext invalidDiceRollMessageString;
			yourself].
	value :=  diceRoll resultValue.
	^TTCommandMessage new
		value: value;
		outputString: diceRoll asStringWithoutResult;
		yourself