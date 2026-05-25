selecting preset
createSheets

	(self characterAdministration players) withIndexDo: [ :player :index |
		| templateName |
		templateName := self characterSheets at: index.
		('Gamemaster' = templateName)
			ifFalse: [player sheet: (TTCharacterSheetData forTemplate: (templateName asSymbol))]
		]
