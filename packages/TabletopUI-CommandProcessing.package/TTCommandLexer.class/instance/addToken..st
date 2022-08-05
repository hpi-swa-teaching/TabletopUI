lexing
addToken: aString
	
	aString = '' ifFalse: [self tokens addLast: aString]