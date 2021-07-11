testing
test02nameList

	self 
		assert: playerSelectionMenu nameList size equals: 2;
		assert: (playerSelectionMenu nameList includes: 'Giuseppe');
		assert: (playerSelectionMenu nameList includes: 'Gustavo')