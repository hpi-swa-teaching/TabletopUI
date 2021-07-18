name validation
containsInvalidNameLength

	^ self characterNames anySatisfy: [:aString | self isNameLengthInvalid: aString]