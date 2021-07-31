dice roll
extractDiceAmount: aString

	| rollCount |
	
	rollCount := 1.
	((aString subStrings: {$d . $ }) size = 3) ifTrue: [
		rollCount := ((aString subStrings: {$d . $ }) second) asNumber].
	
	^ rollCount