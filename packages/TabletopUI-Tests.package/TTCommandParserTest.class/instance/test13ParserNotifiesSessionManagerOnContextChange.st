testing
test13ParserNotifiesSessionManagerOnContextChange
    | alice bob gm manager mockNetwork window |
    mockNetwork := TTMockNetworkmanager new.
    window := TTMockTabletopWindow new.
    manager := TTServerSessionManager new
        window: window;
        networkmanager: mockNetwork;
        yourself.

    self parser changeToInitiativeContext.
    self parser addDependent: manager.

    alice := TTCharacter newWithName: 'Alice' role: TTCharacter player.
    bob   := TTCharacter newWithName: 'Bob'   role: TTCharacter player.
    gm    := TTCharacter newWithName: 'GM'    role: TTCharacter gamemaster.

    self parser context processRoll: 6 for: alice.
    self parser context processRoll: 9 for: bob.

    mockNetwork sendCount: 0.  

    self parser context endInitiativePhaseFrom: gm.

    self assert: mockNetwork sendCount equals: 1