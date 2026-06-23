selecting preset
createSheets

	| file stream |
	
	(self characterAdministration players) withIndexDo: [ :player :index |
		| templateName |
		templateName := self characterSheets at: index.
		('gamemaster' = templateName)
			ifFalse: [Transcript show: templateName.
					((self characterSheets at: index) endsWith: '.obj')
				ifTrue: [file := (FileStream readOnlyFileNamed: (self characterSheets at: index)) binary.
					stream := ReferenceStream on: file.
					player sheet: stream next.
					stream close]
				ifFalse: [player sheet: (TTCharacterSheetData forTemplate: (templateName asSymbol))]]
		]
