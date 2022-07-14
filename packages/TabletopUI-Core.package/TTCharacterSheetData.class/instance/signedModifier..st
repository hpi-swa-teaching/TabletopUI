dice roll modifiers
signedModifier: aString

	aString asNumber  < 0 ifTrue: [ ^aString ]
		ifFalse: [^'+', aString]