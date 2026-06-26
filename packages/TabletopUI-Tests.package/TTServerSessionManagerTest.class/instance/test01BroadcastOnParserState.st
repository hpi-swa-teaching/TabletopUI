testing
test01BroadcastOnParserState
 manager networkmanager sendCount: 0.
    manager update: #parserState.
    self assert: manager networkmanager sendCount equals: 1.
    self assert: manager networkmanager lastMessage equals: 'loadState:'.
    self assert: manager networkmanager lastRecipient equals: 'sessionmanager'.
    self assert: manager networkmanager lastParameters equals: window getState
