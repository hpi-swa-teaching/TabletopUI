as yet unclassified
setUp

	self window: TTMockTabletopWindow new.
	self manager: (TTSessionManager new 
		window: window;
		yourself).