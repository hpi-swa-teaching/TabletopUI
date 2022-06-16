parsing
parseAction

	| token |
	token := lexer nextToken.
	
	((token = 'initiative') | (token = 'ini')) ifTrue: [
		^ TTInitiativeCommand new. ].
	(token = 'fight') ifTrue: [
		^ TTFightCommand new. ].
	(token = 'turn') ifTrue: [
		^ TTTurnCommand new. ].
	^TTErrorCommand new
	
	