execution
executeStart: aContext from: aTTCharacter

	|messageString|
	aContext gameState = #default ifFalse: [
		^TTCommandMessage new
			errorMessage: aContext wrongContextErrorString].
	messageString := aContext startFightAs: aTTCharacter.
	^TTCommandMessage new
		outputString: messageString;
		yourself