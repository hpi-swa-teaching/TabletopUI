selecting preset
createSheets

	(self characterAdministration players) withIndexDo: [ :player :index |
		('Gamemaster' = (self characterSheets at: index))
			ifFalse: [TTCharacterSheetData forTemplate: ((self characterSheets at: index) asSymbol)]
		]
