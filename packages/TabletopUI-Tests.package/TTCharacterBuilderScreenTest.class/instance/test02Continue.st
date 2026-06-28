testing
test02Continue
	
	self screen currentStep: #abilities.
	(self screen getChoicesForCurrentStep)
		at: #strength put: 8;
		at: #dexterity put: 10;
		at: #constitution put: 12;
		at: #intelligence put: 13;
		at: #wisdom put: 14;
		at: #charisma put: 15.
	self screen continue.
	self assert: self window contents first model class equals: TTCharacterSheetSelectionScreen