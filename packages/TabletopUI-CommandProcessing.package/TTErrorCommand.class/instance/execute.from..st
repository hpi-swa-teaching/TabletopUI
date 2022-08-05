execution
execute: aContext from: aTTCharacter

	^TTCommandMessage new
		errorMessage: 'Invalid input!';
		outputString: '';
		value: 0;
		yourself