testing
test04RemoveTokenFreesTile

	| token |
	self map createTokenFor: (TTCharacter newWithName: '' role: TTCharacter player).
	token := self map tokens last.
	self assert: self map findFreeTile equals: 1@2.
	self map removeToken: token.
	self assert: self map findFreeTile equals: 1@1