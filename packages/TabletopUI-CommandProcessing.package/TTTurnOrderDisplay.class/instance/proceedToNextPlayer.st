actions
proceedToNextPlayer

	| command |
	command := TTEndCommand newWith: TTTurnCommand new.
	command execute: self fightContext from: self fightContext currentPlayer