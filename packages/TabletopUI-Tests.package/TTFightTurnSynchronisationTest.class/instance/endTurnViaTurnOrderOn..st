helpers
endTurnViaTurnOrderOn: aSessionManager

	| ctx |
	ctx := self fightContextOf: aSessionManager.
	"Clients synced via loadState: do not open a turn-order window — open one for the test."
	ctx display ifNil: [ctx openTurnOrderDisplay].
	ctx display model proceedToNextPlayer