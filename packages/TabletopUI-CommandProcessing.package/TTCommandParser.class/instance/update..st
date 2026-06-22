context managing
update: anAspect

	self flag: 'pass anAspect up'.
	anAspect = #initiativeState ifTrue: [self changed: #parserState]