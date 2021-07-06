name validation
validateAllNames

	(self containsNameDuplicates) ifTrue: [
		self displayNameDuplicateError.
		^ false].
	(self containsInvalidNameLength) ifTrue: [
		self displayInvalidNameLengthError.
		^ false].
	
	^ true