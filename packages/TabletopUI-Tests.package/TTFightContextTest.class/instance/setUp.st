running
setUp

	| players |
	players := OrderedCollection new.
	super setUp.
	self context: (TTFightContext new parser: self parser; yourself).
	self gm: (TTCharacter newWithName: 'GM' role: #gamemaster).
	self player: (TTCharacter newWithName: 'player' role: #player).
	players add: self gm;
		add: self player.
	self context fightingPlayers: players;
		currentPlayer: players first.
	self parser context: self context