setup
enterFightAndAssertBaseline

	self enterFightOnAll.
	self useMockActionLogsOnAll.
	"loadState: on clients recreates game screens — reinstall mocks"
	self assert: (self fightContextOf: self server) currentPlayer name equals: 'first'.
	self clients do: [:c | self assert: c getState equals: self server getState]