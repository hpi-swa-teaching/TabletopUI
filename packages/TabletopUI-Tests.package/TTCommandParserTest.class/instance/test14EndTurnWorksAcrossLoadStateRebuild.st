testing
test14EndTurnWorksAcrossLoadStateRebuild

	| alice bob adminAlice result |
	self flag: 'TODO: move this test to a more fitting test class'.
	alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
	bob := TTCharacter newWithName: 'Bob' role: TTCharacter player.
	self parser changeToContext:
		((TTFightContext newWithfightOrder: {alice. bob} asOrderedCollection) parser: self parser).
	"Different object, same name — as returned by characterAdministration after sync."
	adminAlice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
	self parser loadState: self parser getState.
	result := self parser evaluateInput: 'end turn' from: adminAlice.
	self deny: result equals: self parser context onlyCurrentPlayerErrorString.
	self assert: self parser context currentPlayer name equals: 'Bob'.
	self assert: result equals: 'Next up is: Bob'