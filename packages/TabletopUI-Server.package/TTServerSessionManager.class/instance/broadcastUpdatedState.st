as yet unclassified
broadcastUpdatedState
    self applyingRemoteState ifTrue: [^self].
    self networkmanager send: 'loadState:' to: 'sessionmanager' with: self window getState