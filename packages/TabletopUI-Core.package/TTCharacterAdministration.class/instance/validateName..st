name validation
validateName: aString

	(self isNameLengthInvalid: aString) ifTrue: [
		self displayInvalidNameLengthError.
		^ false].
	(self isNameADuplicate: aString) ifTrue: [
		self displayNameDuplicateError.
		^ false].
	
	^ true