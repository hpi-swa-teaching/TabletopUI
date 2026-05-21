testing
test08CreateSheetsSkipsGamemaster

	self screen createSheets.
	self assert: (self characterAdministration players at: 2) sheet baseValues isNil.