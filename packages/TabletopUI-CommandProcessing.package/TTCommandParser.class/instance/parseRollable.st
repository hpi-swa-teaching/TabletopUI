parsing
parseRollable

	| value value2 |
	value := self parseValue.
	
	self lexer peek = '+' ifTrue: [
		self lexer nextToken.
		^ TTAddCommand newWithLeft: value right: self parseRollable].
	self lexer peek = '-' ifTrue: [
		self lexer nextToken.
		value2 := self parseRollable.
		^ TTAddCommand newWithLeft: value right: (value2 negate; yourself)].
	
	^ value
	