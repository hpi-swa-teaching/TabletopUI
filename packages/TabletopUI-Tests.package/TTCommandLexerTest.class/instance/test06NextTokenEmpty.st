testing
test06NextTokenEmpty

	self lexer processString: ''.
	self assert: self lexer nextToken isNil