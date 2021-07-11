testing
test07RemoveLastPlayer

	| output player |
	
	player := self evaluator currentPlayer.
	self evaluator proceedToNextPlayer.
	output := self evaluator evaluateInput: ('remove ', player name) from: self gamemaster.
	
	self assert: output equals: 'FIGHT: Removed ' , player name, ' from fight.';
		deny: (self evaluator fightingPlayers includes: player)