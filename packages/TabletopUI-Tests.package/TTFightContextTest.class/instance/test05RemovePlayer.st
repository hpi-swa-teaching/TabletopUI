testing
test05RemovePlayer

	| numberOfPlayers |
	
	numberOfPlayers := self context fightingPlayers size.
	self context removePlayer: self gm name from: self gm.
	self assert: self context currentPlayer equals: self player.
	self assert: numberOfPlayers equals: self context fightingPlayers size + 1.
	