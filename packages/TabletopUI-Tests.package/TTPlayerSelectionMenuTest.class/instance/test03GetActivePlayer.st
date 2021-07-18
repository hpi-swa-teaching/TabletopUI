testing
test03GetActivePlayer

	self playerSelectionMenu selectedIndex: 1.
	self assert: self playerSelectionMenu getActivePlayer name equals: 'Gustavo'.
	self playerSelectionMenu selectedIndex: 2.
	self assert: self playerSelectionMenu getActivePlayer name equals: 'Giuseppe'
