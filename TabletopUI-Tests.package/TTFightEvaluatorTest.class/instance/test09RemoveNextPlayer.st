testing
test09RemoveNextPlayer

	| output currentPlayer nextPlayer |
	
	currentPlayer := self evaluator currentPlayer.
	nextPlayer := self evaluator fightingPlayers after: self evaluator currentPlayer ifAbsent: [
		self evaluator fightingPlayers first].
	output := self evaluator evaluateInput: ('remove ', nextPlayer name) from: self gamemaster.
	
	self assert: output equals: 'FIGHT: Removed ' , nextPlayer name, ' from fight.';
		assert: self evaluator currentPlayer equals: currentPlayer;
		deny: (self evaluator fightingPlayers includes: nextPlayer);
		deny: (self evaluator fightingPlayers after: currentPlayer) equals: nextPlayer