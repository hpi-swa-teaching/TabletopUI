testing
test14EndTurnWorksAcrossLoadStateRebuild

	| alice bob adminAlice result |
	self flag: 'TODO: move this test to a more fitting test class'.
	alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
	bob := TTCharacter newWithName: 'Bob' role: TTCharacter player.
	parser changeToContext: ((TTFightContext newWithfightOrder: {alice. bob} asOrderedCollection) parser: parser).
	"Different object, same name — as returned by characterAdministration after sync."
	adminAlice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
	parser loadState: parser getState.
	result := parser evaluateInput: 'end turn' from: adminAlice.
	self deny: result equals: parser context onlyCurrentPlayerErrorString.
	self assert: parser context currentPlayer name equals: 'Bob'.
	self assert: result equals: 'Next up is: Bob'