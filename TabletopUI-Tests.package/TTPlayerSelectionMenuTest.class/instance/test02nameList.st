testing
test02nameList

	self assert: (playerSelectionMenu nameList size = 2).
	self assert: (playerSelectionMenu nameList includes: 'Giuseppe').
	self assert: (playerSelectionMenu nameList includes: 'Gustavo')