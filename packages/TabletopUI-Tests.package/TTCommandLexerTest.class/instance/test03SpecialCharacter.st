testing
test03SpecialCharacter
	
	| testString |
	testString := 'test+420-69'.
	
	lexer processString: testString.
	self assert: lexer nextToken = 'test'.
	self assert: lexer nextToken = '+'.
	self assert: lexer nextToken = '420'.
	self assert: lexer nextToken = '-'.
	self assert: lexer nextToken = '69'