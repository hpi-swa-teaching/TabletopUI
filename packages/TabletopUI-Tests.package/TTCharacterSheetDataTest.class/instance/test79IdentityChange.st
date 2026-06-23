testing-identity
test79IdentityChange

	self characterSheet characterName: 'Bob'.
	self assert: self characterSheet characterName = 'Bob'