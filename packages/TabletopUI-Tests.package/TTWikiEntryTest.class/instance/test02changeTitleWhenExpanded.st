testing
test02changeTitleWhenExpanded

	| expansionStatus |
	expansionStatus := self wikiEntry isExpanded.
	
	self wikiEntry mouseUp: nil. 
	
	(expansionStatus = true) 
		ifTrue: [self assert: (self wikiEntry titleMorph contents copyFrom: 1 to: 2) equals: '> ' ]
		ifFalse: [self assert: (self wikiEntry titleMorph contents copyFrom: 1 to: 2) equals: 'v ' ]