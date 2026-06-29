updating
update: anAspect
    (anAspect = #parserState) ifTrue: [self contextChangePropagated: true]