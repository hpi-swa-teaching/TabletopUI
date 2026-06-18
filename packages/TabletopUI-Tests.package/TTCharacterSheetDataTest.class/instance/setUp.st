running
setUp

	self characterSheet: TTCharacterSheetData new.
	characterSheet initializeWithPreset: 'default'.
	self inputField: TTMockInputField new.
	self characterSheet inputField: self inputField
	