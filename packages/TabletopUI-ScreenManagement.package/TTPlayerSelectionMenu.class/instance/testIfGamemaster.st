accessing
testIfGamemaster

	| player |
	
	self toolBar ifNil: [^ self].
	self characterAdministration ifNotNil: [
		player := self getActivePlayer.
		player isGamemaster
			ifTrue: [self toolBar disableCharacterSheetButton]
			ifFalse: [self toolBar enableCharacterSheetButton]]