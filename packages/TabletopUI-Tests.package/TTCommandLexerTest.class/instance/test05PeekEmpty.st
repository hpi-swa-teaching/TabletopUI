testing
test05PeekEmpty
	
	self lexer processString: ''.
	self assert: self lexer peek isNil