helpers
endTurnViaTurnOrderOn: aSessionManager

	self fightContextOf: aSessionManager.
	self halt.
	self flag: 'depricated test'.