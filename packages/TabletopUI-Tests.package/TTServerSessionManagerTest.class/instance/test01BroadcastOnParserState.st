testing
test01BroadcastOnParserState
 self manager networkmanager sendCount: 0.
    self manager update: #parserState.
    self assert: self manager networkmanager sendCount equals: 1.
    self assert: self manager networkmanager lastMessage equals: 'loadState:'.
    self assert: self manager networkmanager lastRecipient equals: 'sessionmanager'.
    self assert: self manager networkmanager lastParameters equals: self window getState
