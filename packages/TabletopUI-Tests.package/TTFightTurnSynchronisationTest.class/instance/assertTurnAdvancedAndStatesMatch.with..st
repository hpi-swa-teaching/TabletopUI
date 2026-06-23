helpers
assertTurnAdvancedAndStatesMatch: aSessionManager with: anotherSessionManager

	self assert: (self fightContextOf: self server) currentPlayer name equals: 'Bob'.
	self assert: aSessionManager getState equals: anotherSessionManager getState