testing
test02OpenPlayerNamesScreen
	
	self window characterAdministration 
		playerCount: 1;
		players: {TTCharacter new} asOrderedCollection.
	self window openPlayerNamesScreen.
	self 
		assert: self window contents size equals: 1;
		assert: self window contents first model class equals: TTPlayerNamesScreen