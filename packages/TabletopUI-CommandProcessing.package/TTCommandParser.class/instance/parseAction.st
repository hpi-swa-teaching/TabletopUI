parsing
parseAction

	| token |
	token := self lexer nextToken.
	
	((token = 'initiative') | (token = 'ini')) ifTrue: [
		^ TTInitiativeCommand new. ].
	(token = 'fight') ifTrue: [
		^ TTFightCommand new. ].
	(token = 'turn') ifTrue: [
		^ TTTurnCommand new. ].
	^TTErrorCommand new
	
	