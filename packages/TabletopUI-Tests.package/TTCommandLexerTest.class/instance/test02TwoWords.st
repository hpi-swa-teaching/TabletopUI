testing
test02TwoWords
	
	| testString |
	testString := 'test 69'.
	
	lexer processString: testString.
	self assert: lexer nextToken = 'test'.
	self assert: lexer nextToken = '69'.