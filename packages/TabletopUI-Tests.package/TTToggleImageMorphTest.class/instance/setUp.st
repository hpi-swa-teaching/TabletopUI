running
setUp

	super setUp.
	
	self sheet: (TTCharacterSheetData forTemplate: #default).
	self toggle: TTToggleImageMorph new.
	self toggle
		on: self sheet
		get: #acrobaticsProficiency
		set: #acrobaticsProficiency:
		onForm: self mockForm
		offForm: self mockForm.
	