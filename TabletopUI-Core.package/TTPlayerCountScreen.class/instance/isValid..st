accessing
isValid: aString

	^ (aString matchesRegex: '^[1-9][0-9]*$').
		
	