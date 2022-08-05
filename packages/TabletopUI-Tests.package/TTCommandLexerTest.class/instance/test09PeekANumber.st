testing
test09PeekANumber
	
	| testString |
	
	testString := 'test 420-69'.
	lexer processString: testString.
	self assert: (lexer peek: 1) = 'test'.
	self assert: (lexer peek: 2) = '420'.
	self assert: (lexer peek: 3) = '-'.
	self assert: (lexer peek: 4) = '69'