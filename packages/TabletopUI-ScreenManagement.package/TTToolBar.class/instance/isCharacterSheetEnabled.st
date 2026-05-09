accessing
isCharacterSheetEnabled

	self characterSheetActive isNil ifTrue:
		[^ true].

	^ self characterSheetActive
	