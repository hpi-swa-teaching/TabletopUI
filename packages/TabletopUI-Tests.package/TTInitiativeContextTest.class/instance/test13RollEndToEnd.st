testing
test13RollEndToEnd

	| alice bob gm |
	alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
	bob := TTCharacter newWithName: 'Bob' role: TTCharacter player.
	gm := TTCharacter newWithName: 'GM' role: TTCharacter gamemaster.
	self context addDependent: self.
	self contextHasChanged: false.
	self assert: (self context processRoll: 12 for: alice) isNil.
	self assert: self contextHasChanged.
	self contextHasChanged: false.
	self assert: (self context processRoll: 10 for: bob) isNil.
	self assert: self contextHasChanged.
	self assert: self context initiativeReady.
	"the gamemaster ends initiative (transitions to fight)"
	self context endInitiativePhaseFrom: gm.
	self assert: (self parser context isKindOf: TTFightContext).
	self assert: #fight equals: self parser context gameState.
	self assert: self parser context currentPlayer name equals: 'Alice'