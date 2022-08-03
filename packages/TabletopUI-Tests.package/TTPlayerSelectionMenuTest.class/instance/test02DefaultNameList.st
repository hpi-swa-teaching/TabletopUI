testing
test02DefaultNameList

	self 
		assert: (self playerSelectionMenu nameList includes: 'Giuseppe');
		assert: (self playerSelectionMenu nameList includes: 'Gustavo')