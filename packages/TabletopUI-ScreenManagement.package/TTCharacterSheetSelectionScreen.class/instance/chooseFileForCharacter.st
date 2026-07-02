selecting preset
chooseFileForCharacter

	| filePath |
	
	filePath := FileChooserDialog openOn: FileDirectory default pattern: '*.obj' label: 'Choose character sheet file'.
	^ filePath 