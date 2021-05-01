text management
evaluate: aString

	| result |
	
	result := 'Invalid input'.
	(aString matchesRegex: '^roll d[1-9][0-9]*$') ifTrue: [
		result := TTDice new roll: ((aString subStrings: 'd') last) asNumber].

	^ result