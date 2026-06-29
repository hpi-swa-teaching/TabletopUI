running
update: anAspect
    (anAspect = #networkMessageSent) ifTrue: [self contextChangePropagated: true]