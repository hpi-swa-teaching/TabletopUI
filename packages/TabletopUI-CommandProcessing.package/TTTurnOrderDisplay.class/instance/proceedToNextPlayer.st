actions
proceedToNextPlayer
	"	| command |
	self halt.
	command := TTEndCommand newWith: TTTurnCommand new.
	command execute: self fightContext from: self fightContext currentPlayer"

	self fightContext parser parse: 'end turn' from: self fightContext currentPlayer