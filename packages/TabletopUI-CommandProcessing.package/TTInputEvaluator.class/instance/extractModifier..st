dice roll
extractModifier: aString

	| modifier |
	
	modifier := 0.
	(aString includes: $+) ifTrue: [
		modifier := (aString copyAfter: $+) asNumber].
	(aString includes: $-) ifTrue: [
		modifier := -1 * (aString copyAfter: $-) asNumber].
	
	^ modifier