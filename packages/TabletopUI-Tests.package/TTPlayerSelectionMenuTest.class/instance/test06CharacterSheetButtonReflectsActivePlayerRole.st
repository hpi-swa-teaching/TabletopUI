testing
test06CharacterSheetButtonReflectsActivePlayerRole

	| toolBar |
	toolBar := TTToolBar new.
	self playerSelectionMenu addToolBar: toolBar.
	self deny: toolBar isCharacterSheetEnabled.
	self playerSelectionMenu selectedIndex: 2.
	self assert: toolBar isCharacterSheetEnabled.