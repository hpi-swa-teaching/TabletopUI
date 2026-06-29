testing
test01expandEntry

	| expansionStatus |
	expansionStatus := self wikiEntry isExpanded.
	
	self wikiEntry mouseUp: nil. 
	self deny: expansionStatus equals: (self wikiEntry isExpanded)