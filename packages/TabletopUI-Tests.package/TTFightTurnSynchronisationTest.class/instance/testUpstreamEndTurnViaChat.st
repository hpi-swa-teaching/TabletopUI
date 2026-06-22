testing
testUpstreamEndTurnViaChat

	self enterFightAndAssertBaseline.
	self endTurnViaChatOn: self clients first.
	self assertTurnAdvancedAndStatesMatch: self server with: self clients first