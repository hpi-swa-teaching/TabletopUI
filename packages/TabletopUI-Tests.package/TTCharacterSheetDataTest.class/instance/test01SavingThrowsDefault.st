testing-throws
test01SavingThrowsDefault

	self characterSheet baseValues keys do: [:aBaseValue | 
		self assert: (self characterSheet perform: (aBaseValue, 'Save') asSymbol) = '0']

