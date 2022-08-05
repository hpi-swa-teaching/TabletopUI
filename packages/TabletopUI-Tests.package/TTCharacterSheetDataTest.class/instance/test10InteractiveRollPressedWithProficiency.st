testing-throws
test10InteractiveRollPressedWithProficiency

	self characterSheet skillsLookup keys do: [:aSkill | 
		self characterSheet perform: (aSkill, 'Multiplier:') asSymbol withArguments: (Array with: 1).
		self characterSheet perform: (aSkill, 'LabelPressed') asSymbol.
		self assert: self inputField inputs removeFirst equals: 'roll d20 +2'].
	self characterSheet baseValues keys do: [:aBaseValue | 
		self characterSheet perform: (aBaseValue, 'SaveMultiplier:') asSymbol withArguments: (Array with: 1).
		self characterSheet perform: (aBaseValue, 'SaveLabelPressed') asSymbol.
		self assert: self inputField inputs removeFirst equals: 'roll d20 +2'.
		self characterSheet perform: (aBaseValue, 'LabelPressed') asSymbol.
		self assert: self inputField inputs removeFirst equals: 'roll d20 +0']