accessing
extractPlayerNames

	self playerNames removeAll.
	self players do: [:each | self playerNames add: (each name)]