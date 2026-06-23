context managing
update: anAspect

	"self halt."
	self flag: 'pass anAspect up'.
	"(self context isKindOf: TTFightContext) ifTrue:[
	self assert: (self context currentPlayer name) equals: (self context display currentPlayerName).]."
	(anAspect = #initiativeState or: [anAspect = #currentPlayerName]) ifTrue: [self changed: #parserState] 