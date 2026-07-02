accessing
testIfGamemaster
	
	self toolBar ifNil: [^ self].
	self getActivePlayer isGamemaster
		ifTrue: [self toolBar disableCharacterSheetButton]
		ifFalse: [self toolBar enableCharacterSheetButton]