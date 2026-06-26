helpers
testEnterFight

	self enterFightOnAll.
	self useMockActionLogsOnAll.
	self assert: (self fightContextOf: self server) currentPlayer name equals: 'Alice'.
	self clients do: [:c | self assert: c getState equals: self server getState]