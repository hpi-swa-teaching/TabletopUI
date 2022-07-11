initialize-release
newWithfightOrder: aCollection

	^ self new
		fightingPlayers: aCollection;
		currentPlayer: aCollection first;
		yourself