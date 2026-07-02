testing-saving throws
test02SavingThrowsWithProficiency

	self characterSheet abilities keys do: [:ability | 
		self characterSheet
			perform: (ability , 'SavingThrowProficiency:') asSymbol
			with: 1.
		self assert: (self characterSheet perform: (ability , 'SavingThrow') asSymbol) equals: '2']