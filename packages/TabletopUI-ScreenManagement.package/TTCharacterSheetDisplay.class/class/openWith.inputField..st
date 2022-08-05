as yet unclassified
openWith: aTTCharacterSheetData inputField: aTTInputField

	| morph | 
	morph := ToolBuilder open: (self newWith: aTTCharacterSheetData inputField: aTTInputField).
	aTTCharacterSheetData morph: morph.
	^ morph