setup
enterFightOnAll

	self enterFightOn: self server.
	self clients do: [:c | self assert: [(self fightContextOf: c) isKindOf: TTFightContext]]