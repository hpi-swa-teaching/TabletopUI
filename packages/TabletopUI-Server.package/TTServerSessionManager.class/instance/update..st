as yet unclassified
update: anAspect

	((anAspect = #mapState) or: (anAspect= #parserState)) ifTrue: [self broadcastUpdatedState]