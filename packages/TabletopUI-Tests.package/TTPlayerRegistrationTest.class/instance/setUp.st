running
setUp
	| connector |
	connector := TTBroadcastMockConnector new.
	self sessionMembers: OrderedCollection new.
	self windows: OrderedCollection new.
	self windows
		add: TTTabletopWindow openSessionless;
		add: TTTabletopWindow openSessionless;
		add: (TTTabletopWindow openEmptySessionWithNetworkManager: connector).
	self sessionMembers 
		add: (TTClientSessionManager new window: self windows first model; networkFacade: TTMockNetworkFacade new);
		add: (TTClientSessionManager new window: self windows second model; networkFacade: TTMockNetworkFacade new).
	self sessionMembers do: [:member | member loadState: TTTabletopWindow emptyState].
	self manager: (TTServerSessionManager new 
		window:( self windows third model);
		networkFacade: self windows third model networkFacade).
	
	connector subscribers: self sessionMembers.