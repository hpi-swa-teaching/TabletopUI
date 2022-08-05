parsing
parse: aString
	
	| token command |
	self lexer processString: aString.
	
	token := self lexer nextToken.
	
	token = 'roll' ifTrue: [
		command := TTRollCommand newWith: self parseRollable].
	token = 'start' ifTrue: [
		command := TTStartCommand newWith: self parseAction].
	token = 'end' ifTrue: [
		command := TTEndCommand newWith: self parseAction].
	token = 'remove' ifTrue: [
		command := TTRemoveCommand newWithToken: self parseCharacter].
	command ifNil: [
		command := TTErrorCommand new].
	self lexer nextToken ifNotNil: [
		command := TTErrorCommand new].
	^command