selecting preset
selectPreset
	
	| preset |
	preset := ListChooser chooseItemFrom: (('gamemaster' = (self characterSheets at: self selectedIndex))
			ifFalse: [#('default' 'wizard' 'cleric' 'fighter' 'load character')]
			ifTrue: [#('gamemaster')])
		title:'Pick a character sheet'.
	preset ifNil: [ ^ self].
	
	(preset = 'load character') ifTrue: [preset := self chooseFileForCharacter].
	
	self characterSheets at: self selectedIndex put: preset.
	self changed: #nameList.