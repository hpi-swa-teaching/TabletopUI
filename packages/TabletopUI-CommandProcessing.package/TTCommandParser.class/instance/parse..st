parsing
parse: aString
	
	| token command |
	
	self lexer processString: aString.
	
	token := self lexer nextToken.
	command := TTErrorCommand new.
	
	token = 'roll' ifTrue: [
		command := TTRollCommand newWith: self parseRollable].
	token = 'start' ifTrue: [
		command := TTStartCommand newWith: self parseAction].
	token = 'end' ifTrue: [
		command := TTEndCommand newWith: self parseAction].
	token = 'remove' ifTrue: [
		command := TTRemoveCommand newWithToken: self parseCharacter].
	self lexer nextToken ifNotNil: [
		command := TTErrorCommand new].
	^ command