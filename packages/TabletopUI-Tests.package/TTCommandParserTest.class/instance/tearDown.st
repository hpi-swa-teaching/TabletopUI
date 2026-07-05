running
tearDown

	| fightContext |
	super tearDown.
	(self parser context isKindOf: TTFightContext) ifTrue: [
		fightContext := self parser context.
		fightContext display ifNotNil: [fightContext display delete]].
	self parser networkFacade removeDependent: self