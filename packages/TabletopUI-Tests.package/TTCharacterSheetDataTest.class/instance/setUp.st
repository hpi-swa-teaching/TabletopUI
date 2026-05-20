running
setUp

	self characterSheet: TTCharacterSheetData new.
	characterSheet initializeWith: 'default'.
	self inputField: TTMockInputField new.
	self characterSheet inputField: self inputField
	