execution
executeEnd: aContext from: aTTCharacter

	| messageText |
	
	aContext gameState = #fight ifFalse:[
		^ TTCommandMessage new
			errorMessage: aContext wrongContextErrorString;
			yourself].
	messageText := aContext proceedToNextPlayer: aTTCharacter.
	
	^ TTCommandMessage new
		outputString: messageText;
		yourself