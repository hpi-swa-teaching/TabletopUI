testing
test01BroadcastOnParserState
 manager networkManager sendCount: 0.
    manager update: #parserState.
    self assert: manager networkManager sendCount equals: 1.
    self assert: manager networkManager lastMessage equals: 'loadState:'.
    self assert: manager networkManager lastRecipient equals: 'sessionmanager'.
    self assert: manager networkManager lastParameters equals: window getState
