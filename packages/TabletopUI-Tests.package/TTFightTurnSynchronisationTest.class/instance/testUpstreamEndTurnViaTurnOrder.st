testing
testUpstreamEndTurnViaTurnOrder

	self enterFightAndAssertBaseline.
	self endTurnViaTurnOrderOn: self clients first.
	self assertTurnAdvancedAndStatesMatch: self server with: self clients first