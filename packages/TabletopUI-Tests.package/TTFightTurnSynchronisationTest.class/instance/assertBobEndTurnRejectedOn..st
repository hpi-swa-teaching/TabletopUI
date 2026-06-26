helpers
assertBobEndTurnRejectedOn: aSessionManager

	| context |
	self useMockActionLogOn: aSessionManager.
	self selectActivePlayerNamed: 'Bob' on: aSessionManager.
	(self gameScreenOf: aSessionManager) inputField processInput: 'end turn'.
	context := self fightContextOf: aSessionManager.
	self assert: context currentPlayer name equals: 'Alice'.
	self
		assert: (self gameScreenOf: aSessionManager) inputField log outputs last
		equals: context onlyCurrentPlayerErrorString