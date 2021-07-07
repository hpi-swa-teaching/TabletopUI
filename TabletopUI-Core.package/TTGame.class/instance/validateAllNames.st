name validation
validateAllNames

	(self containsInvalidNameLength) ifTrue: [
		self displayInvalidNameLengthError.
		^ false].
	(self containsNameDuplicates) ifTrue: [
		self displayNameDuplicateError.
		^ false].
	
	^ true