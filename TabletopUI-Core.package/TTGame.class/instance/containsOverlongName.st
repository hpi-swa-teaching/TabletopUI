name validation
containsOverlongName

	^ self characterNames anySatisfy: [:aString | self isNameOverlong: aString]