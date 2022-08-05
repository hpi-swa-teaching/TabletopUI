parsing
parseCharacter

	| token |
	
	token := self lexer nextToken.
	
	^ TTCharacterCommand newWith: token
	
	