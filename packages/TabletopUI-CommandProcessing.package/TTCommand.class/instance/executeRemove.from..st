execution
executeRemove: aContext from: aTTCharacter
	
	^TTCommandMessage new
		outputString: self invalidActionString;
		yourself