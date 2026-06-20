testing
test03RemoveToken

	| token |
	self map createTokenFor: (TTCharacter newWithName: '' role: TTCharacter player).
	token := self map tokens last.
	self map removeToken: token.
	self assert: self map tokens isEmpty