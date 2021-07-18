name validation
isNameLengthInvalid: aString

	^ aString size > self maximalNameLength or: [aString size < 1]