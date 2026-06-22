selecting preset
selectPreset
	
	| preset |
	preset := ListChooser chooseItemFrom: (('gamemaster' = (self characterSheets at: self selectedIndex))
			ifFalse: [TTCharacterSheetData availableTemplates]
			ifTrue: [#('gamemaster')])
		title:'Pick a character sheet'.
	preset ifNil: [^ self].
	
	(preset = 'load character') ifTrue: [preset := self chooseFileForCharacter. preset ifNil: [ ^ self ]].
	
	self characterSheets at: self selectedIndex put: preset.
	self changed: #nameList.