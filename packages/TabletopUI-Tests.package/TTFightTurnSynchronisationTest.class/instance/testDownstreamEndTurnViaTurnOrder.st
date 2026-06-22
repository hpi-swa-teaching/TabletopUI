testing
testDownstreamEndTurnViaTurnOrder

	self enterFightAndAssertBaseline.
	self endTurnViaTurnOrderOn: self server.
	self assertTurnAdvancedAndStatesMatch: self server with: self clients first