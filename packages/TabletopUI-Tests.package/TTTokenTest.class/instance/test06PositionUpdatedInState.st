testing
test06PositionUpdatedInState

	| newTile stateBefore stateAfter mapBefore mapAfter |
	self tile
		mapCoordinates: 1 @ 1;
		position: 0 @ 0.

	stateBefore := self token getState.
	mapBefore := stateBefore at: TTGameStateKeys keyMapCoordinates.
	self
		assert: ((mapBefore at: TTGameStateKeys keyTileCoordinates) at: #x) = 1;
		assert: ((mapBefore at: TTGameStateKeys keyTileCoordinates) at: #y) = 1.

	newTile := TTTile new
		mapCoordinates: 5 @ 7;
		position: 200 @ 300;
		yourself.
	self token defaultTile: newTile.

	stateAfter := self token getState.
	mapAfter := stateAfter at: TTGameStateKeys keyMapCoordinates.
	self
		assert: ((mapAfter at: TTGameStateKeys keyTileCoordinates) at: #x) = 5;
		assert: ((mapAfter at: TTGameStateKeys keyTileCoordinates) at: #y) = 7;
		assert: ((mapAfter at: TTGameStateKeys keyPixelCoordinates) at: #x) = 200;
		assert: ((mapAfter at: TTGameStateKeys keyPixelCoordinates) at: #y) = 300