testing
test02nameList

	self 
		assert: self playerSelectionMenu nameList size equals: 2;
		assert: (self playerSelectionMenu nameList includes: 'Giuseppe');
		assert: (self playerSelectionMenu nameList includes: 'Gustavo')