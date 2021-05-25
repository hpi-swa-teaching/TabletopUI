as yet unclassified
test01HasUniqueNames

	(playerNamesScreen players at: 1) changeName: 'Beneeee'.
	(playerNamesScreen players at: 2) changeName: 'Johnnyy'.
	(playerNamesScreen players at: 3) changeName: 'Magnum'.
	(playerNamesScreen players at: 4) changeName: 'Piiiaaaaa'.
	(playerNamesScreen players at: 5) changeName: 'Riieekee'.
	
	self assert: (playerNamesScreen hasUniqueNames)