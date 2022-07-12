as yet unclassified
newWith: aTTCharacterSheetData inputField: aTTInputField

	| display |
	display := self new
		model: aTTCharacterSheetData;
		yourself.
	display model inputField: aTTInputField.
	^ display