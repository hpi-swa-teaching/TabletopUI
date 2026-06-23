testing-saving throws
test13SavingThrows

	self characterSheet abilities keys do: [:ability | 
		self characterSheet 
			perform: (ability, ':') asSymbol 
			with: 18.
		self assert: (self characterSheet perform: (ability, 'SavingThrow') asSymbol) equals: '4'.
		self characterSheet 
			perform: (ability, ':') asSymbol 
			with: 2.
		self assert: (self characterSheet perform: (ability, 'SavingThrow') asSymbol) equals: '-4'].