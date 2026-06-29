updating
update: anAspect
  (anAspect = #mapState) ifTrue: [self broadcastUpdatedState].
    (anAspect = #parserState) ifTrue: [self broadcastUpdatedState]