testing-throws
test09InteractiveRollPressed

	self characterSheet skillsLookup keys do: [:aSkill | 
		self characterSheet perform: (aSkill, 'LabelPressed') asSymbol.
		self assert: self inputField inputs removeFirst equals: 'roll d20 +0'].
	self characterSheet baseValues keys do: [:aBaseValue | 
		self characterSheet perform: (aBaseValue, 'SaveLabelPressed') asSymbol.
		self assert: self inputField inputs removeFirst equals: 'roll d20 +0'.
		self characterSheet perform: (aBaseValue, 'LabelPressed') asSymbol.
		self assert: self inputField inputs removeFirst equals: 'roll d20 +0']