parsing
parseCharacter

	| token |
	token := lexer nextToken.
	
	^ TTCharacterCommand newWith: token.
	
	