testing
test01expandEntry

	| expansionStatus |
	expansionStatus := self wikiEntry isExpanded.
	
	self wikiEntry mouseUp: nil. 
	self assert: expansionStatus ~= self wikiEntry isExpanded