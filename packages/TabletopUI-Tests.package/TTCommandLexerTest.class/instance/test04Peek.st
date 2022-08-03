testing
test04Peek
	
	| testString |
	
	testString := 'test 420-69'.
	lexer processString: testString.
	self assert: lexer peek = 'test'