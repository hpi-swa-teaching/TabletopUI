execution
execute: aContext from: aTTCharacter
	
	|message leftMessage rightMessage|
	leftMessage := self left execute: aContext from: aTTCharacter.
	rightMessage := self right execute: aContext from: aTTCharacter.
	message := TTCommandMessage new
		value: leftMessage value + rightMessage value;
		yourself.
	rightMessage outputString first = $- ifTrue: [
		message outputString: leftMessage outputString,  rightMessage outputString]
	ifFalse: [
		message outputString: leftMessage outputString, '+', rightMessage outputString].
	leftMessage errorMessage ifNotNil: [
		message errorMessage: leftMessage errorMessage].
	rightMessage errorMessage ifNotNil: [
		message errorMessage: rightMessage errorMessage].
	^message