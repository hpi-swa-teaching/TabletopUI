instance creation
openWith: aTTCharacterSheetData inputField: aTTInputField

	| display |
	display := self newWith: aTTCharacterSheetData inputField: aTTInputField.
	display openSheet.
	aTTCharacterSheetData morph: display sheet.
	^ display
