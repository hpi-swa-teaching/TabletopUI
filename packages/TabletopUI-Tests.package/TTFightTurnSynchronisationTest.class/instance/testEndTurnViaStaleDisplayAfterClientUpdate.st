testing
testEndTurnViaStaleDisplayAfterClientUpdate

	| staleMorph |
	self enterFightAndAssertBaseline.
	staleMorph := (self fightContextOf: self server) display.
	self assert: staleMorph notNil.
	self changeTokenPositionOn: self clients first.
	self useMockActionLogsOnAll.
	self assert: (self fightContextOf: self server) display isNil.
	self assert: (self fightContextOf: self server) currentPlayer name equals: 'Alice'.
	self endTurnViaStaleTurnOrderOn: self server using: staleMorph.
	self assert: (self fightContextOf: self server) currentPlayer name equals: 'Bob'.
	self assert: self clients first getState equals: self server getState