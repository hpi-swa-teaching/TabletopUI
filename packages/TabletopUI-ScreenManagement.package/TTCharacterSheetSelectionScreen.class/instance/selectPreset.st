selecting preset
selectPreset
	
	| preset |
	preset := ListChooser chooseItemFrom: (('Gamemaster' = (self characterSheets at: self selectedIndex))
			ifFalse: [#('default' 'wizard' 'cleric' 'fighter')]
			ifTrue: [#('Gamemaster')])
		title:'Pick a character sheet'.
	preset ifNil: [ ^ self].
	
	self characterSheets at: self selectedIndex put: preset.
	self changed: #nameList.