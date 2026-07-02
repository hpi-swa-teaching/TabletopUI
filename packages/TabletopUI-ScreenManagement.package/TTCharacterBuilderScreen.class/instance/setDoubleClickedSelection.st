selection management
setDoubleClickedSelection

	| selection |
	
	selection := self doubleClickedSelection.
	
	self setDoubleClickedSelectionWith: selection.
	self changed: #nameList