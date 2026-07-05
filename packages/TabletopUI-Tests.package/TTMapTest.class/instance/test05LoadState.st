testing
test05LoadState

	| state characterTokens aliceEntry newTileCoords aliceToken x y |
	x := self randomCoordinate.
	y := self randomCoordinate.
	self map initializePlayerTokens: (OrderedCollection new
		add: (TTCharacter newWithName: 'Alice' role: TTCharacter player);
		yourself).
	aliceToken := self map tokens first.
	
	state := self map getState.
	characterTokens := state at: TTGameStateKeys keyCharacterTokens.
	aliceEntry := characterTokens at: 'Alice'.
	newTileCoords := Dictionary new
		at: #x put: x;
		at: #y put: y;
		yourself.
	(aliceEntry at: TTGameStateKeys keyTileCoordinates)
		at: TTGameStateKeys keyMapCoordinates
		put: newTileCoords.
	
	self map loadState: state.
	
	self assert: aliceToken defaultTile mapCoordinates = (x @ y)