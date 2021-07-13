running
setUp

	| characterAdministration |
	
	characterAdministration := TTCharacterAdministration new players: {
			TTCharacter newWithName: 'Gustavo' role: #gamemaster .
			TTCharacter newWithName: 'Giuseppe' role: #player.} asOrderedCollection.
	self playerSelectionMenu: (TTPlayerSelectionMenu newWith: characterAdministration)