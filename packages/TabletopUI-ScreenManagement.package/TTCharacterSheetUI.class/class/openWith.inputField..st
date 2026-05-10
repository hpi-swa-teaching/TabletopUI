instance creation
openWith: aTTCharacterSheetData inputField: aTTInputField

	| display sheet |
	display := self newWith: aTTCharacterSheetData inputField: aTTInputField.
	sheet := display layoutSheet.
	sheet openInWorld.
	aTTCharacterSheetData morph: sheet.
	^ display
