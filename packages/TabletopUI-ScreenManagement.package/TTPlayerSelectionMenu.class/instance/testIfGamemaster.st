accessing
testIfGamemaster

	| player |
	
	self toolBar isNil ifTrue: [^self].
	self characterAdministration isNil ifFalse: [
	player := self getActivePlayer.
	player isGamemaster
		ifTrue: [self toolBar disableCharacterSheetButton]
		ifFalse: [self toolBar enableCharacterSheetButton]]