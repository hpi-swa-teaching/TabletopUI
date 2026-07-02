testing
test02changeTitleWhenExpanded

	self assert: (self wikiEntry titleMorph contents copyFrom: 1 to: 2) equals: '> '.
	self wikiEntry mouseUp: nil. 
	self assert: (self wikiEntry titleMorph contents copyFrom: 1 to: 2) equals: 'v '.