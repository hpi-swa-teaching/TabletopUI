testing
test08CreateSheetsSkipsGamemaster

	self screen createSheets.
	Transcript show: (self characterAdministration players at: 2) sheet.
	self assert: (self characterAdministration players at: 2) sheet isNil.