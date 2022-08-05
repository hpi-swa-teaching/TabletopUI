execution
execute: aContext from: aTTCharacter
	
	| value|
	self executeDiceRoll.
	self diceRoll isValid ifFalse: [
		^TTCommandMessage new
			value: 0;
			outputString: '';
			errorMessage: aContext invalidDiceRollMessageString;
			yourself].
	value :=  self diceRoll resultValue.
	^TTCommandMessage new
		value: value;
		outputString: self diceRoll asStringWithoutResult;
		yourself