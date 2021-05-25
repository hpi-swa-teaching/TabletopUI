as yet unclassified
test02HasNoUniqueNames

	(playerNamesScreen players at: 1) changeName: 'TOM'.
	(playerNamesScreen players at: 2) changeName: 'toom'.
	(playerNamesScreen players at: 3) changeName: 'tttttttttbbbb'.
	(playerNamesScreen players at: 4) changeName: 'TB'.
	(playerNamesScreen players at: 5) changeName: 'TB'.
	
	self deny: (playerNamesScreen hasUniqueNames)