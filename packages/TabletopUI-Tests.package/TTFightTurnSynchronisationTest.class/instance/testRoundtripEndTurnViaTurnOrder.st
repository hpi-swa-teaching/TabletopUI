testing
testRoundtripEndTurnViaTurnOrder

	self enterFightAndAssertBaseline.
	self endTurnViaTurnOrderOn: self clients second.
	self assert: (self fightContextOf: self server) currentPlayer name equals: 'second'.
	self assert: self clients first getState equals: self clients second getState