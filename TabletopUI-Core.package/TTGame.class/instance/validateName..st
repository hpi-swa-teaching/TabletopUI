name validation
validateName: aString

	(self isNameADuplicate: aString) ifTrue: [
		self displayNameDuplicateError.
		^ false].
	(self isNameLengthInvalid: aString) ifTrue: [
		self displayInvalidNameLengthError.
		^ false].
	
	^ true