testing
test05PeekEmpty
	
	| testString |
	testString := ''.
	
	lexer processString: testString.
	self assert: lexer peek = nil.
	self assert: (lexer peek: 1) = nil.
	self assert: (lexer peek: 2) = nil