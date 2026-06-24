as yet unclassified
setDoubleClickedSelectionFor: aStep
	
	| selection |
	
	selection := self getDoubleClickedSelectionFor: aStep.
		
	self setDoubleClickedSelectionWith: selection at: aStep.
	self changed: #nameList
	