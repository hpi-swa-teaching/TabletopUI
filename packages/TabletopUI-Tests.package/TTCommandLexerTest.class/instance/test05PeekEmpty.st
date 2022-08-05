testing
test05PeekEmpty
	
	lexer processString: ''.
	self assert: lexer peek = nil