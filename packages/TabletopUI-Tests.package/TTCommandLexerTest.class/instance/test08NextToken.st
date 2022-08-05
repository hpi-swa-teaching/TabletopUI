testing
test08NextToken
	
	| testString |
	testString := 'test'.
	lexer tokens: (OrderedCollection new add: testString; yourself).
	self assert: lexer nextToken equals: testString