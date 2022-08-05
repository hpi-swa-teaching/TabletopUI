execution
executeEnd: aContext from: aTTCharacter

	| messageString |
	
	aContext gameState = #initiative ifFalse: [
		^ TTCommandMessage new
			errorMessage: aContext wrongContextErrorString].
	aContext initiativeReady ifTrue: [
		messageString := aContext endInitiativePhaseFrom: aTTCharacter.
		^ TTCommandMessage new
			outputString: messageString;
			yourself].
	^ TTCommandMessage new
		errorMessage: aContext initiativeNotReadyErrorString;
		yourself