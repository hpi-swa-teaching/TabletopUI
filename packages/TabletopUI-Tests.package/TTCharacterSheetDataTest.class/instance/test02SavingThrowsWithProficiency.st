testing-throws
test02SavingThrowsWithProficiency

	self characterSheet baseValues keys do: [:aBaseValue | 
		self characterSheet perform: (aBaseValue, 'SaveMultiplier:') asSymbol withArguments: (Array with: 1). 
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) equals: '2'.
		self characterSheet perform: (aBaseValue, 'SaveMultiplier:') asSymbol withArguments: (Array with: 2). 
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) equals: '4']