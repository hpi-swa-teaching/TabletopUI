sending
send: message to: object with: stateDict

    (message = 'loadState:' or: [message = #loadState:]) ifTrue: [
        self subscribers do: [:subscriber |
            (subscriber isKindOf: TTServerSessionManager) ifFalse: [
                subscriber loadState: stateDict]].
        ^ self].
    (message = #handleClientUpdate: or: [message = 'handleClientUpdate:']) ifTrue: [
        self subscribers
            detect: [:each | each isKindOf: TTServerSessionManager]
            ifFound: [:server | server handleClientUpdate: stateDict].
        ^ self].
    self subscribers
        detect: [:each | each isKindOf: TTServerSessionManager]
        ifFound: [:server | server perform: message asSymbol with: stateDict]