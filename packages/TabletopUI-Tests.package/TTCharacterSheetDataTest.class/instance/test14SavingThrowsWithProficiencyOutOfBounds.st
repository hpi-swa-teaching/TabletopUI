testing-throws
test14SavingThrowsWithProficiencyOutOfBounds

	self characterSheet abilities keys do: [:ability | 
		self characterSheet 
			perform: (ability, 'SavingThrowProficiency:') asSymbol 
			with: 3. 
		self assert: (self characterSheet perform: (ability , 'SavingThrow') asSymbol) equals: '2'.
		self characterSheet 
			perform: (ability, 'SavingThrowProficiency:') asSymbol 
			with: -69. 
		self assert: (self characterSheet perform: (ability , 'SavingThrow') asSymbol) equals: '0']