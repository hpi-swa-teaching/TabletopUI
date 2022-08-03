testing-throws
test14SavingThrowsWithProficiencyOutOfBounds

	self characterSheet baseValues keys do: [:aBaseValue | 
		self characterSheet perform: (aBaseValue, 'SaveMultiplier:') asSymbol withArguments: (Array with: 3). 
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) equals: '4'.
		self characterSheet perform: (aBaseValue, 'SaveMultiplier:') asSymbol withArguments: (Array with: -69). 
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) equals: '0']