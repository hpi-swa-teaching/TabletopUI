selecting preset
createSheets

	(self characterAdministration players) withIndexDo: [ :player :index |
		('Gamemaster' = (self characterSheets at: index))
			ifFalse: [player sheet initializeWith: ((self characterSheets at: index) asSymbol)]
		]
