testing
testDownstreamEndTurnViaChat

	self enterFight.
	self endTurnViaChatOn: self server.
	self assertTurnAdvancedAndStatesMatch: self server with: self clients first