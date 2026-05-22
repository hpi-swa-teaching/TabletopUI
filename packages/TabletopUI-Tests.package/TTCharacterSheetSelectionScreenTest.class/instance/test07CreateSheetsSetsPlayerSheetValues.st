testing
test07CreateSheetsSetsPlayerSheetValues

	self screen characterSheets at: 1 put: 'wizard'.
	self screen createSheets.
	self assert: (self characterAdministration players at: 1) sheet maxHP equals: '8'.