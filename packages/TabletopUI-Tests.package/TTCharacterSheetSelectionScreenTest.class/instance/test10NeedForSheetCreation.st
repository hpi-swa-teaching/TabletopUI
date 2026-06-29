testing
test10NeedForSheetCreation

	self deny: (self screen sheetShouldBeCreatedWith: (self screen characterSheets at: 2)).
	self assert: (self screen sheetShouldBeCreatedWith: (self screen characterSheets at: 1)).
	self screen characterSheets at: 1 put: 'customized character'.
	self deny: (self screen sheetShouldBeCreatedWith: (self screen characterSheets at: 1))