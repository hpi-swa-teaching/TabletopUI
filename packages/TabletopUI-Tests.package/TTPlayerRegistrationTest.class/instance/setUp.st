running
setUp
	
	| connector |
	self sessionMembers: OrderedCollection new.
	self sessionMembers
		add: (TTClientSessionManager new window: TTMockTabletopWindow new; yourself);
		add: (TTClientSessionManager new window: TTMockTabletopWindow new; yourself).
		
	self manager: (TTServerSessionManager new 
		window: TTMockTabletopWindow new;
		yourself).
	
	connector:= TTBroadcastMockConnector new.
	connector subscribers: self sessionMembers.
	self manager networkmanager: connector.