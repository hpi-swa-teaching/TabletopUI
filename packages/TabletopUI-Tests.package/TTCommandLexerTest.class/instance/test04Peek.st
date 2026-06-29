testing
test04Peek
	
	| testString |
	
	testString := 'test 420-69'.
	self lexer processString: testString.
	self assert: self lexer peek = 'test'