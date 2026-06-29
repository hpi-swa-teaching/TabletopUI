setup
setUp
super setUp.
    mockNetwork := TTMockNetworkManager new.
    window := TTMockTabletopWindow new.
    manager := TTServerSessionManager new
        window: window;
        networkmanager: mockNetwork;
        yourself