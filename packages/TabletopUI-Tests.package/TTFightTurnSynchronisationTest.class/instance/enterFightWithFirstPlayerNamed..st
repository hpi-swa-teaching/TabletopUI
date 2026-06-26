helpers
enterFightWithFirstPlayerNamed: aName

	self enterFightWithFirstPlayerNamed: aName on: self server.
	self clients do: [:c | self assert: [(self fightContextOf: c) isKindOf: TTFightContext]].
	self useMockActionLogsOnAll