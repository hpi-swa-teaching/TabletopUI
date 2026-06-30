testing
test02TwoWords
	
	| testString |
	testString := 'test 69'.
	
	self lexer processString: testString.
	self assert: self lexer nextToken = 'test'.
	self assert: self lexer nextToken = '69'.