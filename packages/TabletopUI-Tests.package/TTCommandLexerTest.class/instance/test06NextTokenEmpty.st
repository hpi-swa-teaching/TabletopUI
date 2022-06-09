testing
test06NextTokenEmpty
	
	| testString |
	testString := ''.
	
	lexer processString: testString.
	self assert: lexer nextToken = nil