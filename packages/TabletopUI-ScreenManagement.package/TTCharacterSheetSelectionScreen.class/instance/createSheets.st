selecting preset
createSheets

	self characterAdministration players withIndexDo: [ :player :index |
		self createSheetFor: index ]
