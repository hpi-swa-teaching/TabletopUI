testing
test07ProcessString
	
	| testString |
	testString := 'test'.
	lexer processString: testString.
	self assert: lexer tokens first equals: testString