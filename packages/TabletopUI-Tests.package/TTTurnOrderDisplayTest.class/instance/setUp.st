running
setUp

	| charAdmin |
	self
		alice: (TTCharacter newWithName: 'Alice' role: TTCharacter player);
		bob: (TTCharacter newWithName: 'Bob' role: TTCharacter player);
		parser: TTCommandParser new;
		context: ((TTFightContext newWithfightOrder: {self alice. self bob} asOrderedCollection) parser: self parser);
		display: (TTTurnOrderDisplay newWith: self context).
	self parser context: self context.
	self context addDependent: self display.
	charAdmin := TTCharacterAdministration new players: {self alice. self bob} asOrderedCollection.
	self playerSelection: (TTPlayerSelectionMenu newWith: charAdmin players).
	self inputField: (TTInputField newWithActionLog: TTMockActionLog new playerSelectionMenu: self playerSelection).
	self inputField parser: self parser