player-positioning
updatePlayerPositions: playerPositionDictionary

	| clientId playerEntry |
	clientId := (playerPositionDictionary at: 'clientId') asString.
	playerEntry := self playerPositions
		at: clientId
		ifAbsent: [self playerPositions at: clientId put: Dictionary new].
	playerEntry
		at: 'x' put: (playerPositionDictionary at: 'x');
		at: 'y' put: (playerPositionDictionary at: 'y')