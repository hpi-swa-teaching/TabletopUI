dice roll
extractRollCount: aString

	| rollCount |
	
	rollCount := 1.
	((aString subStrings: {$d . $ }) size = 3) ifTrue: [
		rollCount := ((aString subStrings: {$d . $ }) at: 2) asNumber].
	
	^ rollCount