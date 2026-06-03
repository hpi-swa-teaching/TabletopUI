selecting preset
selectPreset
	
	| preset |
	preset := ListChooser chooseItemFrom: (('gamemaster' = (self characterSheets at: self selectedIndex))
			ifFalse: [#('default' 'wizard' 'cleric' 'fighter' 'load character' 'build character')]
			ifTrue: [#('gamemaster')])
		title:'Pick a character sheet'.
	preset ifNil: [ ^ self].
	
	(preset = 'load character') ifTrue: [preset := self chooseFileForCharacter. preset = 'nil' ifTrue: [preset := #default]].
	(preset = 'build character') ifTrue: [self window openCharacterBuilderScreen. preset := 'customized character'].
	
	self characterSheets at: self selectedIndex put: preset.
	self createSheetFor: self selectedIndex.
	self changed: #nameList.