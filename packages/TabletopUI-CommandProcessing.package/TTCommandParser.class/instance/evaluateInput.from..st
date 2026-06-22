inputEvaluation
evaluateInput: aText from: aTTCharacter

	| outputMessage |
	self halt.
	outputMessage := (self parse: aText) execute: self context from: aTTCharacter.
	outputMessage errorMessage ifNotNil: [^ outputMessage errorMessage].
	^ outputMessage outputString