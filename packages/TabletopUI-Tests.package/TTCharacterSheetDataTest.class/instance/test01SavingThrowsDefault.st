testing-throws
test01SavingThrowsDefault

	self characterSheet abilities keys do: [:ability | 
		self assert: (self characterSheet perform: (ability , 'SavingThrowProficiency') asSymbol) = 0.
		self assert: (self characterSheet perform: (ability , 'SavingThrow') asSymbol) = '0']

