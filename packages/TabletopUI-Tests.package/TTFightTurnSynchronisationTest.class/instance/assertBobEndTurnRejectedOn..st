helpers
assertBobEndTurnRejectedOn: aSessionManager

	| ctx |
	self useMockActionLogOn: aSessionManager.
	self selectActivePlayerNamed: 'Bob' on: aSessionManager.
	(self gameScreenOf: aSessionManager) inputField processInput: 'end turn'.
	ctx := self fightContextOf: aSessionManager.
	self assert: ctx currentPlayer name equals: 'Alice'.
	self
		assert: (self gameScreenOf: aSessionManager) inputField log outputs last
		equals: ctx onlyCurrentPlayerErrorString