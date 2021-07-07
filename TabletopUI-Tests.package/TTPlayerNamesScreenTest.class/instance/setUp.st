as yet unclassified
setUp
	
	| tabletopWindow |
	
	super setUp.
	
	tabletopWindow := TTTabletopWindow new.
	tabletopWindow characterAdministration playerCount: 5.
	playerNamesScreen := TTPlayerNamesScreen newWith: tabletopWindow

	