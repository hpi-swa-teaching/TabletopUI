setup
enterFightOnAll

	self enterFightOn: self clients first.
	self assert: [(self fightContextOf: self server) isKindOf: TTFightContext].
	self clients do: [:c | self assert: [(self fightContextOf: c) isKindOf: TTFightContext]]