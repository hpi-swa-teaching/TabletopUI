testing
test08NextToken
	
	| testString |
	testString := 'test'.
	self lexer tokens: (OrderedCollection new add: testString; yourself).
	self assert: self lexer nextToken equals: testString