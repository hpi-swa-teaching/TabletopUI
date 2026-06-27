initialize-release
setUp
	| t1 |
	self sessionMembers: OrderedCollection new.
	self sessionMembers add: (TTClientSessionManager new window: TTMockTabletopWindow new;
			 yourself);
		 add: (TTClientSessionManager new window: TTMockTabletopWindow new;
			 yourself).
	self manager: (TTServerSessionManager new window: TTMockTabletopWindow new;
			 yourself).
	t1 := TTBroadcastMockConnector new.
	t1 subscribers: self sessionMembers.
	self manager networkmanager: t1