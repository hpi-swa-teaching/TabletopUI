validation
isValid: aString

	^ aString matchesRegex: self positiveNumberPattern
		
	