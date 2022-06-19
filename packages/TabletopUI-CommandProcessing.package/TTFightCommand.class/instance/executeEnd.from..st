execution
executeEnd: aContext from: aTTCharacter

	|messageString|
	aContext gameState = #fight ifFalse: [
		^TTCommandMessage new
			errorMessage: aContext wrongContextErrorString].
	messageString := aContext endFightingAs: aTTCharacter.
	^TTCommandMessage new
		outputString: messageString;
		yourself