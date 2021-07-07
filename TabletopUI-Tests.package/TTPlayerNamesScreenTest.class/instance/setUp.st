as yet unclassified
setUp
	
	| tabletopWindow |
	
	super setUp.
	
	tabletopWindow := TTTabletopWindow new.
	tabletopWindow game playerCount: 5.
	playerNamesScreen := TTPlayerNamesScreen newWith: tabletopWindow

	