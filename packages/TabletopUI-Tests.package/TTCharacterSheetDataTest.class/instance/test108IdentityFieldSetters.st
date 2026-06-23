testing-identity
test108IdentityFieldSetters

	self characterSheet identity keysDo: [:field |
		self characterSheet perform: (field asString , ':') asSymbol with: '']