updating
update: anAspect

	(anAspect = #initiativeState or: [anAspect = #currentPlayerName]) ifTrue: [self changed: #parserState] 