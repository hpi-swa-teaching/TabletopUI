testing
test12ParserNotifiesSessionManager
    | alice manager mockNetwork window |
    mockNetwork := TTMockNetworkmanager new.
    window := TTMockTabletopWindow new.
    manager := TTServerSessionManager new
        window: window;
        networkmanager: mockNetwork;
        yourself.
    self parser changeToInitiativeContext.
    self parser addDependent: manager.
    alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
    self parser context processRoll: 12 for: alice.
    self assert: mockNetwork sendCount equals: 1