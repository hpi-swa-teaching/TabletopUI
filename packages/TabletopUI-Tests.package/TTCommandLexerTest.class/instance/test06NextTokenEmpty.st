testing
test06NextTokenEmpty
	
	lexer processString: ''.
	self assert: lexer nextToken = nil