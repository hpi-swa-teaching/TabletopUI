testing
test10PeekEmptyANumber
	
	| testString |
	testString := ''.
	
	self lexer processString: testString.
	self assert: (self lexer peek: 1) = nil.
	self assert: (self lexer peek: 2) = nil