accessing
testIfGamemaster
	
	self toolBar ifNil: [^ self].
	self characterAdministration ifNil: [^ self].
	self getActivePlayer isGamemaster
		ifTrue: [self toolBar disableCharacterSheetButton]
		ifFalse: [self toolBar enableCharacterSheetButton]