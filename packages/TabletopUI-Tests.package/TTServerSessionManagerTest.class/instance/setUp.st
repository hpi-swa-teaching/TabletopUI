setup
setUp
super setUp.
    mockNetwork := TTMockNetworkmanager new.
    window := TTMockTabletopWindow new.
    manager := TTServerSessionManager new
        window: window;
        networkManager: mockNetwork;
        yourself