selecting preset
selectPreset
	
	| preset |
	preset := ListChooser chooseItemFrom: (('gamemaster' = (self characterSheets at: self selectedIndex))
			ifFalse: [TTCharacterSheetData availableTemplates]
			ifTrue: [#('gamemaster')])
		title:'Pick a character sheet'.
	preset ifNil: [^ self].
	
	(preset = 'load character') ifTrue: [preset := self chooseFileForCharacter. preset ifNil: [ ^ self ]].
	(preset = 'build character') ifTrue: [self window openCharacterBuilderScreenWith: self characterSheets For: self selectedIndex. preset := 'customized character'].
	
	self characterSheets at: self selectedIndex put: preset.
	preset = 'customized character' ifFalse: [self createSheetFor: self selectedIndex].
	self changed: #nameList.