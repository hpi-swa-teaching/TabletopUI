helpers
endTurnViaTurnOrderOn: aSessionManager

	| ctx |
	ctx := self fightContextOf: aSessionManager.
	self halt.
	self flag: 'depricated test'.