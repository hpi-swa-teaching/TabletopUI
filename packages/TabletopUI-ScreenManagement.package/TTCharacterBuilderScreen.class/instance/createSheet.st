accessing
createSheet

	| player|
	
	player := (self characterAdministration players) at: self characterIndex.
	player = 'gamemaster'
		ifFalse: [((self characterSheets at: self characterIndex) endsWith: '.obj')
			ifTrue: [self createSheetFromFileFor: self characterIndex]
			ifFalse: [player sheet initializeCustomizedCharacterWith: self choices]]