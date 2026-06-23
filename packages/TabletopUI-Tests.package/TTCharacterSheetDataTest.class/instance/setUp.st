running
setUp

	self characterSheet: (TTCharacterSheetData forTemplate: #default).
	self inputField: TTMockInputField new.
	self characterSheet inputField: self inputField
	