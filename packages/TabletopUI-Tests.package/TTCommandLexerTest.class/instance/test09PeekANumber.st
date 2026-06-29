testing
test09PeekANumber
	
	| testString |
	
	testString := 'test 420-69'.
	self lexer processString: testString.
	self assert: (self lexer peek: 1) = 'test'.
	self assert: (self lexer peek: 2) = '420'.
	self assert: (self lexer peek: 3) = '-'.
	self assert: (self lexer peek: 4) = '69'