parsing
parse: aString
	
	| token |
	lexer processString: aString.
	
	token := lexer nextToken.
	
	token = 'roll' ifTrue: [
		^ TTRollCommand newWith: self parseRollable].
	token = 'start' ifTrue: [
		^ TTStartCommand newWith: self parseAction].
	token = 'end' ifTrue: [
		^ TTEndCommand newWith: self parseAction].
	token = 'remove' ifTrue: [
		^ TTRemoveCommand newWithToken: self parseCharacter]