testing
test09CreateSheetsLoadsSheetFromObjFile

	| player fileName |
	player := self characterAdministration players first.
	player sheet initializeWithPreset: #wizard.
	fileName := player name, '.obj'.
	[ self characterAdministration saveCharacter: 1.
	  self screen characterSheets at: 1 put: fileName.
	  self screen createSheets.
	  self assert: player sheet armorClass equals: '12' ] 
		ensure: [ 
			(FileDirectory default fileExists: fileName)
				ifTrue: [ FileDirectory default deleteFileNamed: fileName ] ].