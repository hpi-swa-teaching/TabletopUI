updating
update: anAspect
    self applyingRemoteState ifTrue: [^self].
    ((anAspect = #mapState) or: [anAspect = #parserState]) ifTrue: [self broadcastUpdatedState]