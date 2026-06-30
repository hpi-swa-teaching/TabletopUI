testing
test01OneWord
	
	| testString |
	testString := 'test'.
	self lexer processString: testString.
	self assert: self lexer nextToken = testString.

	testString := '420'.
	self lexer processString: testString.
	self assert: self lexer nextToken = testString