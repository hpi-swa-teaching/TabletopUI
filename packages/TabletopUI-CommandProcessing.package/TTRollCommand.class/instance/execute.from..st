execution
execute: aContext from: aTTCharacter
	
	| inputMessage outputMessage |
	
	inputMessage := self rollable execute: aContext from: aTTCharacter.
	outputMessage:= TTCommandMessage new.
	inputMessage valueString = inputMessage outputString ifTrue: [
		outputMessage outputString: inputMessage outputString]
	ifFalse: [
		outputMessage outputString: inputMessage outputString, '=', inputMessage value asString].
	outputMessage errorMessage: inputMessage errorMessage.
	inputMessage errorMessage ifNil:[
	outputMessage errorMessage: (aContext processRoll: inputMessage value for: aTTCharacter)].
	^ outputMessage