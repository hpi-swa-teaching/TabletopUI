testing
test02ToggleReadsModel

	self sheet acrobaticsProficiency: 0.
	self assert: self toggle state equals: 0.	
	self sheet acrobaticsProficiency: 1.
	self assert: self toggle state equals: 1