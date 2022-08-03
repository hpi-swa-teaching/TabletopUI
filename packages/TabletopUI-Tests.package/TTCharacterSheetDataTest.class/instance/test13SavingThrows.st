testing-throws
test13SavingThrows

	self characterSheet baseValues keys do: [:aBaseValue | 
		self characterSheet perform: (aBaseValue, ':') asSymbol withArguments: (Array with: 18).
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) equals: '4'.
		self characterSheet perform: (aBaseValue, ':') asSymbol withArguments: (Array with: 2).
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) equals: '-4'].