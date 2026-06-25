selecting preset
createSheetFor: anIndex

	| player|
	
	player := (self characterAdministration players) at: anIndex.
	player = 'gamemaster'
		ifFalse: [((self characterSheets at: anIndex) endsWith: '.obj')
			ifTrue: [self createSheetFromFileFor: anIndex]
			ifFalse: [player sheet: (TTCharacterSheetData forTemplate: (self characterSheets at: anIndex))]]
