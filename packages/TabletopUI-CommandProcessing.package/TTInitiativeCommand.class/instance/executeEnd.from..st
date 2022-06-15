execution
executeEnd: aContext from: aTTCharacter

	|messageString|
	aContext gameState = #initiative ifFalse: [
		^TTCommandMessage new
			errorMessage: aContext wrongContextErrorString].
	aContext initiativeReady ifTrue: [
		messageString := aContext endInitiativePhasefrom: aTTCharacter.
		^TTCommandMessage new
			outputString: messageString;
			yourself]