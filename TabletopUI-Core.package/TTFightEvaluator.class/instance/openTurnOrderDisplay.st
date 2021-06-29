accessing
openTurnOrderDisplay

	| participantNames |
	
	participantNames := self fightingPlayers collect: [:player | player name].
	self display: (TTTurnOrderDisplay openWith: participantNames)