running
tearDown

	| fightContext |
	super tearDown.
	(parser context isKindOf: TTFightContext) ifTrue: [
		fightContext := parser context.
		fightContext display ifNotNil: [fightContext display delete]]