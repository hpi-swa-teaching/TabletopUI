running
setUp

	self characterSheet: TTCharacterSheetData new.
	self setUpBaseValues.
	self inputField: TTMockInputField new.
	self characterSheet inputField: self inputField
	