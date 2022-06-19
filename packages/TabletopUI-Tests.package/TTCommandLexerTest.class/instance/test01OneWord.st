testing
test01OneWord
	
	| testString |
	testString := 'test'.
	
	lexer processString: testString.
	self assert: lexer nextToken = testString.

	testString := '420'.
	
	lexer processString: testString.
	self assert: lexer nextToken = testString