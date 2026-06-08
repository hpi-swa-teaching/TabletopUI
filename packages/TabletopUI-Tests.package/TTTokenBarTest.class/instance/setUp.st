running
setUp

	| screen |
	screen := TTGamemasterGameScreen newWith: TTTabletopWindow new.
	self tokenBar: screen tokenBar.
	self tokenBar currentName: 'Bert'