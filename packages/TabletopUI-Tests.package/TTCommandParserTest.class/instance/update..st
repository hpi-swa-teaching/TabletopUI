updating
update: anAspect
    (anAspect = #networkMessageSent) ifTrue: [self contextChangePropagated: true]