testing
test09CreateSheetsLoadsSheetFromObjFile

	| player fileName |
	player := self characterAdministration players first.
	player sheet: (TTCharacterSheetData forTemplate: #wizard).
	fileName := player name, '.obj'.
	[ TTCharacterAdministration saveCharacter: player.
	  self screen characterSheets at: 1 put: fileName.
	  self screen createSheets.
	  self assert: player sheet armorClass equals: '11' ] 
		ensure: [ 
			(FileDirectory default fileExists: fileName)
				ifTrue: [ FileDirectory default deleteFileNamed: fileName ] ].