testing
testDownstreamEndTurnViaChat

	self enterFightAndAssertBaseline.
	self endTurnViaChatOn: self server.
	self assertTurnAdvancedAndStatesMatch: self server with: self clients first