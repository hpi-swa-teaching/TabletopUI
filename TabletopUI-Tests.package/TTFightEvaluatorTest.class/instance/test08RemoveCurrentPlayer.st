testing
test08RemoveCurrentPlayer

	| output currentPlayer nextPlayer |
	
	currentPlayer := self evaluator currentPlayer.
	nextPlayer := self evaluator fightingPlayers after: self evaluator currentPlayer ifAbsent: [
		self evaluator fightingPlayers first].
	output := self evaluator evaluateInput: ('remove ', currentPlayer name) from: self gamemaster.
	
	self assert: output equals: 'FIGHT: Removed ' , currentPlayer name, ' from fight.';
		assert: self evaluator currentPlayer equals: nextPlayer;
		deny: (self evaluator fightingPlayers includes: currentPlayer)