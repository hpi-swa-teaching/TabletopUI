testing-saving throws
test01SavingThrowsDefault

	self characterSheet abilities keys do: [:ability | 
		self assert: (self characterSheet perform: (ability , 'SavingThrowProficiency') asSymbol) equals: 0.
		self assert: (self characterSheet perform: (ability , 'SavingThrow') asSymbol) equals: '0']

