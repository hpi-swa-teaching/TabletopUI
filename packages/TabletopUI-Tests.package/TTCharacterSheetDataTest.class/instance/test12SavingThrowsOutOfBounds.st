testing-throws
test12SavingThrowsOutOfBounds

	self characterSheet abilities keys do: [:ability | 
		self characterSheet 
			perform: (ability, ':') asSymbol 
			with: 30.
		self assert: (self characterSheet perform: (ability, 'SavingThrow') asSymbol) equals: '10'.
		self characterSheet 
			perform: (ability, ':') asSymbol 
			with: -2.
		self assert: (self characterSheet perform: (ability, 'SavingThrow') asSymbol) equals: '-5'].