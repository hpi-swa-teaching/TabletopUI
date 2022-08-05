execution
executeRemove: aContext from: aTTCharacter

	| messageString |
	
	aContext gameState = #fight ifFalse: [
		^ TTCommandMessage new
			errorMessage: aContext wrongContextErrorString;
			yourself].
	messageString := aContext removePlayer: self name from: aTTCharacter.
	^ TTCommandMessage new
		outputString: messageString;
		yourself