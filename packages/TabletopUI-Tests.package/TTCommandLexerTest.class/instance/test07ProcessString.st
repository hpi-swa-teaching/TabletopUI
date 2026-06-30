testing
test07ProcessString
	
	| testString |
	testString := 'test'.
	self lexer processString: testString.
	self assert: self lexer tokens first equals: testString