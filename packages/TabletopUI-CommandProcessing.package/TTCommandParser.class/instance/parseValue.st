parsing
parseValue

	| token |
	token := lexer nextToken.
	
	(token matchesRegex: self diceRegex) ifTrue: [
		^ TTDiceCommand newWithToken: token ].
	
	(token matchesRegex: self intRegex) ifTrue: [
		^ TTIntCommand newWithToken: token ].
	
	"todo: throw syntax error"
	
	