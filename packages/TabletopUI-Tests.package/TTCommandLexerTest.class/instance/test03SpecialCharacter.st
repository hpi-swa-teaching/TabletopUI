testing
test03SpecialCharacter
	
	| testString |
	testString := 'test+420-69'.
	
	self lexer processString: testString.
	self assert: self lexer nextToken = 'test'.
	self assert: self lexer nextToken = '+'.
	self assert: self lexer nextToken = '420'.
	self assert: self lexer nextToken = '-'.
	self assert: self lexer nextToken = '69'