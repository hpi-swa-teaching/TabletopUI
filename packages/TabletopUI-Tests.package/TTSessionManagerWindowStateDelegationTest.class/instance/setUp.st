running
setUp

	self window: TTMockTabletopWindow new.
	self manager: (TTSessionManager new 
		window: self window;
		yourself).