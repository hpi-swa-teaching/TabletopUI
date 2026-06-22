testing-identity
test78IdentityDefault

	self assert: self characterSheet className = 'Adventurer'.
	self characterSheet identity keysDo: [:field |
		(field ~= 'className')
			ifTrue: [self assert: (self characterSheet identityAt: field) = '']]