selecting preset
createSheetFor: anIndex

	| templateName |
	templateName := self characterSheets at: anIndex.
	(self sheetShouldBeCreatedWith: templateName)
		ifTrue: [
			(templateName endsWith: self objFileExtension)
			ifTrue: [self createSheetFromFileFor: anIndex]
			ifFalse: [ (self characterAdministration players at: anIndex) sheet: (TTCharacterSheetData forTemplate: templateName asSymbol) ] ]
