dice roll
evaluate: aString

	| result |
	
	result := 'Invalid input'.
	(aString matchesRegex: '^roll ([1-9][0-9]*)?d[1-9][0-9]*([\+\-][1-9][0-9]*)?$') ifTrue: [
		result := self evaluateRollDiceCommand: aString].

	^ result asString