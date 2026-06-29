testing
testRoundtripEndTurnViaChat

	self enterFight.
	self endTurnViaChatOn: self clients first. 
	self assert: (self fightContextOf: self server) currentPlayer equals: 'Bob'.
	self assert: self clients first getState equals: self clients second getState