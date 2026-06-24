testing
test05RemoveFromMap

	| token |
	self map createTokenFor: (TTCharacter newWithName: '' role: TTCharacter player).
	token := self map tokens last.
	token removeFromMap.
	self assert: self map tokens isEmpty