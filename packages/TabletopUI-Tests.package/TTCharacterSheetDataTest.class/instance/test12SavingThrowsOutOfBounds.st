testing-throws
test12SavingThrowsOutOfBounds

	self characterSheet baseValues keys do: [:aBaseValue | 
		self characterSheet perform: (aBaseValue, ':') asSymbol withArguments: (Array with: 30).
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) equals: '5'.
		self characterSheet perform: (aBaseValue, ':') asSymbol withArguments: (Array with: -2).
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) equals: '-5'].