testing-identity
test78IdentityDefault

	self assert: self characterSheet className equals: 'Adventurer'.
	self characterSheet identity keysDo: [:field |
		(field ~= #className)
			ifTrue: [self assert: (self characterSheet identityAt: field) equals: '']]