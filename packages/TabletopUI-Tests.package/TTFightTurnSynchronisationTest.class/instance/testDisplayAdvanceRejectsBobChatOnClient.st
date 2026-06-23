testing
testDisplayAdvanceRejectsBobChatOnClient

	self enterFightWithFirstPlayerNamed: 'Bob'.
	self assert: (self fightContextOf: self server) currentPlayer name equals: 'Bob'.
	self clients do: [:c | self assert: c getState equals: self server getState].
	self endTurnViaTurnOrderOn: self server.
	self useMockActionLogsOnAll.
	self assert: (self fightContextOf: self server) currentPlayer name equals: 'Alice'.
	self clients do: [:c | self assert: c getState equals: self server getState].
	self assertBobEndTurnRejectedOn: self clients second