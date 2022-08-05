execution
execute: aContext from: aTTCharacter

	| signedValue|
	self negated ifTrue: [
		signedValue := -1 * self value] 
	ifFalse: [
		signedValue := self value].
	
	^TTCommandMessage new
		value: signedValue;
		outputString: signedValue asString;
		yourself