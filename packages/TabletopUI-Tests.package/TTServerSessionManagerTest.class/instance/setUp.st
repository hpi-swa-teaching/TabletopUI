setup
setUp
super setUp.
    self mockNetwork: TTMockNetworkmanager new.
    self window: TTMockTabletopWindow new.
    self manager: (TTServerSessionManager new
        window: self window;
        networkmanager: self mockNetwork;
        yourself)