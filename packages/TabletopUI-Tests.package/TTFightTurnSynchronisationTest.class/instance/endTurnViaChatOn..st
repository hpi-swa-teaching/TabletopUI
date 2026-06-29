helpers
endTurnViaChatOn: aSessionManager

	| currentName |
	self useMockActionLogOn: aSessionManager.
	currentName := (self fightContextOf: aSessionManager) currentPlayer.
	self selectActivePlayerNamed: currentName on: aSessionManager.
	(self gameScreenOf: aSessionManager) inputField processInput: 'end turn'