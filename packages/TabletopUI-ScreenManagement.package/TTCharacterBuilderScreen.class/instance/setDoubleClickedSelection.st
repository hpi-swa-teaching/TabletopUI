as yet unclassified
setDoubleClickedSelection

	| selection |
	
	selection := self getDoubleClickedSelection.
	
	self setDoubleClickedSelectionWith: selection.
	self changed: #nameList